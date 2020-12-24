import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/datas/models/model_data.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';
import 'package:flutterrightdemo/datas/models/model_selected.dart';
import 'package:flutterrightdemo/page/home/picture_item_page.dart';
import 'file:///D:/workSpace/android/flutter_rightvideo/lib/page/widget/banner_widget.dart';
import 'package:flutterrightdemo/page/widget/font_util.dart';
import 'package:flutterrightdemo/res/styles.dart';
import 'package:fluttertoast/fluttertoast.dart';

///显示Data类型下的Item构建

// ignore: must_be_immutable
class DataItemWidget extends StatelessWidget {
  BuildContext context;
  var _itemList;

  DataItemWidget(this.context, this._itemList) {
    //对数据为null的进行过滤
//    if (_itemList.data == null) {
//      debugPrint("-------DailyItemWidget-----------${_itemList.type}---");
//      _itemList.type = "data为null";
//    }
  }

  ///需要根据不同的itemList.type 返回不同的Widget
  @override
  Widget build(BuildContext context) {
    // 此处Data数据往下转型刚开始不可以，运行两次就可以了

    switch (_itemList.type) {
      case 'video':
        return VideoWidget(_itemList.data);
        break;
      case 'textFooter':
        return TextFooterWidget(_itemList.data);
        break;
      case 'textHeader':
        return TextHeaderWidget(_itemList);
        break;
      case 'videoCollectionWithCover':
        //横向显示
        return VideoCollectionWithCoverWidget(_itemList.data);
        break;
      case 'videoCollectionOfFollow':
        //竖向显示
        return VideoCollectionOfFollowWidget(_itemList.data);
        break;
      case "horizontalScrollCard":
        //BannerView
        return BannerWidget(_itemList.data.itemList);
        break;
      case "squareCardCollection":
        return Container();
        break;
      default:
        debugPrint("--DailyItemWidget----${_itemList.type}");
        return Container();
    }
  }
}

// ignore: must_be_immutable
class VideoWidget extends StatelessWidget {
  BuildContext context;
  ItemList itemList;

  //视频标题
  Author author;
  String desc;
  VideoBean data;
  String videoTitle;

  //图片链接
  String imageUrl;

  //视频时长
  String duration;

  VideoWidget(this.data) {
    videoTitle = data.title;
    debugPrint("----VideoWidget-----${data.title}---");
    author = data.author;
    desc = null == author
        ? "" + "  /  #" + data.category
        : author.name + "  /  #" + data.category;

    imageUrl = data.cover.feed;
    duration = intToStr(data.duration);
    debugPrint("----VideoWidget-----${data.title}---");
  }

  @override
  Widget build(BuildContext context) {
    //CategoryItem有一个异常，author获取之后为null,因此catch
    try {
      return Container(
          width: double.infinity,
          height: Gaps.getHGap(250),
          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            ///图片
            Expanded(
              child: InkWell(
                onTap: () {
                  Fluttertoast.showToast(msg: videoTitle);
                },
                child: Stack(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(10)),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      elevation: 5,
                    ),
                    Positioned(
                        bottom: 15,
                        right: 15,
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            child: Container(
                                color: Colors.black,
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  duration,
                                  style: TextStyle(color: Colors.white),
                                )))),
                  ],
                ),
              ),
            ),

            ///作者栏
            Container(
                width: double.infinity,
                height: Gaps.hGap45,
                child: InkWell(
                    onTap: () {},
                    child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ///作者头像
                              Stack(
                                children: [
                                  ClipOval(
                                    child: Image.network(
                                      null == author.icon ? "" : author.icon,
                                      width: Gaps.hGap45,
                                      height: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  //todo 待实现 右下角圆形小角标
                                ],
                              ),

                              ///信息
                              Container(
                                  margin: EdgeInsets.only(left: 10, top: 3),
                                  width: Gaps.getHGap(270),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          //  TODO 固定宽度大小，否则包含的Text的没有长度，
                                          // Todo 无法设置过长截断
                                          child: Text(
                                            videoTitle,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: FontSize.sFont16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Text(desc,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: FontSize.sFont14,
                                              color: Colors.grey,
                                            ))
                                      ]))
                            ]))))
          ]));
    } catch (e) {
      return SizedBox();
    }
  }

  ///将时间转化为String类型的字符串
  String intToStr(int duration) {
    int minutes = duration ~/ 60;
    int seconds = duration % 60;
    String min;
    String sec;
    if (minutes < 10)
      min = "0$minutes";
    else
      min = "$minutes";
    if (seconds < 10)
      sec = "0$seconds";
    else
      sec = "$seconds";
    return min + ":" + sec;
  }
}

/// TextFooterWidget
// ignore: must_be_immutable
class TextFooterWidget extends StatelessWidget {
  TextFooterWidget(TextFooter data);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

///TextHeader
// ignore: must_be_immutable
class TextHeaderWidget extends StatelessWidget {
  String _header;

  TextHeaderWidget(ItemList itemList) {
    TextHeader data = itemList.data;
    if (itemList.tag != null) {
      debugPrint("-----TextHeaderWidget---${data.text}---");
      _header = GetWeekByDate(data.text);
    } else {
      _header = data.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(13, 5, 13, 5),
      width: double.infinity,
      child: Text(
        _header,
        style: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: FontSize.sFont23,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  String GetWeekByDate(String date) {
    //Oct. 30, Brunch
    date = date.substring(1, date.indexOf(","));
    List<String> split = date.split(".");
    int year = 2020;
    int month;

    int day = int.parse(split[1].trim());

    switch (split[0].trim()) {
      case 'Jan':
        month = 1;
        break;
      case 'Feb':
        month = 2;
        break;
      case 'Mar':
        month = 3;
        break;
      case 'Apr':
        month = 4;
        break;
      case 'May':
        month = 5;
        break;
      case 'Jun':
        month = 6;
        break;
      case 'Jul':
        month = 7;
        break;
      case 'Aug':
        month = 8;
        break;
      case 'Sep':
        month = 9;
        break;
      case 'Oct':
        month = 10;
        break;
      case 'Nov':
        month = 11;
        break;
      case 'Dec':
        month = 12;
        break;
      default:
        break;
    }

    return getWeek(DateTime(year, month, day));
  }

  // 获取星期
  String getWeek(DateTime date) {
    var week = date.weekday;
    String w = '';
    switch (week.toString()) {
      case '1':
        w = '一';
        break;
      case '2':
        w = '二';
        break;
      case '3':
        w = '三';
        break;
      case '4':
        w = '四';
        break;
      case '5':
        w = '五';
        break;
      case '6':
        w = '六';
        break;
      case '7':
        w = '日';
        break;
    }
    return '星期' + w.toString();
  }
}

///VideoCollectionWithCoverWidget 横向
// ignore: must_be_immutable
class VideoCollectionWithCoverWidget extends StatefulWidget {
  //数据
  List<ItemList> _itemList;

  VideoCollectionWithCoverWidget(ItemCollection data) {
    _itemList = data.itemList;
  }

  @override
  State<StatefulWidget> createState() {
    return _VideoCollectionWithCoverState();
  }
}

class _VideoCollectionWithCoverState
    extends State<VideoCollectionWithCoverWidget> {
  //控制器
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        //TODO 待处理 屏幕适配
        height: 250,
        margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
        child: Row(children: [
          Container(
              height: double.infinity,
              //TODO 待处理  屏幕适配
              width: 60,
              child: Center(
                  child: Container(
                      width: 5,
                      //挤压变成纵向显示
                      child: Text("滑啊滑啊滑",
                          style: TextStyle(
                            fontSize: FontSize.sFont23,
                            fontWeight: FontWeight.bold,
                          ))))),
          Expanded(
              child: ListView.builder(
                  //addRepaintBoundaries: true,
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  itemCount: widget._itemList.length,
                  itemBuilder: (context, index) {
                    if (widget._itemList[index] == null) {
                      return Container(
                          height: double.infinity,
                          //TODO 待处理  屏幕适配
                          width: 50,
                          child: Center(
                              child: Container(
                                  width: 5,
                                  child: Text("记录探索",
                                      style: TextStyle(
                                        fontSize: FontSize.sFont23,
                                        fontWeight: FontWeight.bold,
                                      )))));
                    } else {
                      ItemList itemList = widget._itemList[index];

                      VideoBean videoBean = itemList.data;
                      return Container(
                          // height: double.infinity,
                          //TODO 待处理，屏幕适配
                          width: 270,
                          height: double.infinity,
                          child: Stack(children: [
                            InkWell(
                                onTap: () {
                                  //TODO 待实现 点击功能
                                },
                                child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  10)),
                                      clipBehavior: Clip.antiAlias,
                                      child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Image.network(
                                            videoBean.cover.feed,
                                            fit: BoxFit.cover,
                                          )),
                                      elevation: 5,
                                    ))),

                            /// 底部标题
                            Positioned(
                              bottom: 10,
                              left: 8,
                              right: 8,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                child: Container(
//                            margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                  padding: EdgeInsets.all(8),
//                            width: double.infinity,

                                  color: Colors.white,
                                  child: Center(
                                    child: Text(
                                      videoBean.title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSize.sFont14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            ///左上角标
                            Positioned(
                                top: 10,
                                left: 10,
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    child: Container(
                                        color: Colors.white,
                                        padding: EdgeInsets.all(5),
                                        child: Text(videoBean.category,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ))))),
                          ]));
                    }
                  }))
        ]));
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }
}

/// VideoCollectionOfFollowWidget 纵向
// ignore: must_be_immutable
class VideoCollectionOfFollowWidget extends StatefulWidget {
  List<ItemList> _itemList;

  VideoCollectionOfFollowWidget(ItemCollection data) {
    _itemList = data.itemList;

    debugPrint("==========VideoCollectionOfFollowWidget============");
  }

  @override
  State<StatefulWidget> createState() => _VideoCollectionOfFollowState();
}

class _VideoCollectionOfFollowState
    extends State<VideoCollectionOfFollowWidget> {
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        children: [
          ///标题
          //Container(),

          ///内容
          ListView.builder(
              shrinkWrap: true,
//              physics: NeverScrollableScrollPhysics(),
              itemCount: widget._itemList.length,
              controller: _scrollController,
              itemBuilder: (context, index) {
                VideoBean videoBean = widget._itemList[index].data;
                String duration = intToStr(videoBean.duration);
                return Container(
                  height: 100,
                  //TODO 适配
                  child: Row(
                    children: [
                      ///左边图片
                      Expanded(
                        child: Stack(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(5)),
                              clipBehavior: Clip.antiAlias,
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.network(
                                  videoBean.cover.feed,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            ///时间
                            Positioned(
                                //TODO 适配
                                bottom: 10,
                                right: 10,
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    child: Container(
                                        color: Colors.black,
                                        padding: EdgeInsets.all(3),
                                        child: Text(
                                          duration,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: FontSize.sFont14,
                                          ),
                                        )))),
                          ],
                        ),
                      ),

                      ///右边标题
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: double.infinity,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Text(
                                videoBean.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: FontSize.sFont14,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                left: 0,
                                child: Text(
                                  "#" + videoBean.category,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: FontSize.sFont14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }

  ///将时间转化为String类型的字符串
  String intToStr(int duration) {
    int minutes = duration ~/ 60;
    int seconds = duration % 60;
    String min;
    String sec;
    if (minutes < 10)
      min = "0$minutes";
    else
      min = "$minutes";
    if (seconds < 10)
      sec = "0$seconds";
    else
      sec = "$seconds";
    return min + ":" + sec;
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }
}

//推荐页顶部效果
class SquareCardWidget extends StatelessWidget {
  CommunityContent item;

  SquareCardWidget(this.item) : assert(item != null, "SquareCard item数据为null");

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(item.bgPicture),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FontUtil.text16Bold(item.title),
              FontUtil.text14(item.subTitle),
            ]),
      ),
      onTap: () {
        Fluttertoast.showToast(msg: "${item.title}");
      },
    );
  }
}

//推荐页瀑布流Item效果
class CommunityWidget extends StatelessWidget {
  ItemList item;
  Header header;
  UgcPictureBean ugcPicture;

  CommunityWidget(this.item,{Key key})
      : assert(item != null, "CommunityWidget item数据为null"),
        super(key: key) {
    debugPrint("====CommunityWidget==============${item.data.content.type}");
    Content content = item.data.content;
    if (content.type == 'ugcPicture') {
      FollowCard followCard = item.data;

      header = followCard.header;

      ugcPicture = followCard.content.data;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (null == ugcPicture) {
      return SizedBox();
    }
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ///图片
//          Expanded(
//            child:
          InkWell(
            child: Stack(
              children: [
                ///图片
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: CachedNetworkImage(
                      imageUrl: ugcPicture.url,
                      fit: BoxFit.fitWidth,
                      placeholder: (context, str) {
                        return Image.asset(
                          "assets/images/image_place.jpg",
                          fit: BoxFit.cover,
                        );
                      },
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),

                /// 角标
              ],
            ),
            onTap: () {
              ///底部弹出图片页面
              Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration:
                        Duration(milliseconds: 1000), //动画时间为500毫秒
                    pageBuilder: (BuildContext context, Animation animation,
                        Animation secondaryAnimation) {
                      return new SlideTransition(
                        //使用渐隐渐入过渡,

                        position: Tween<Offset>(
                                // 设置滑动的 X , Y 轴
                                begin: Offset(0.0, -1.0),
                                end: Offset(0.0, 0.0))
                            .animate(CurvedAnimation(
                                parent: animation,
                                curve: Curves.fastOutSlowIn)),
                        child: PictureItemPage(ugcPicture),
                      );
                    },
                  ));
            },
          ),
//          ),

          ///描述
          ugcPicture.description == "" || ugcPicture.description == null
              ? SizedBox(
                  height: 5,
                )
              : InkWell(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      ugcPicture.description,
                      style: TextStyle(
                        fontSize: FontSize.sFont14,
                        color: Colors.black87,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),

          ///发布人
          InkWell(
            child: Row(
              children: [
                ///头像
                Container(
                  width: Gaps.getHGap(30),
                  height: Gaps.getVGap(30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: CachedNetworkImage(
                      imageUrl: header.icon,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                ///名字
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      header.issuerName,
                      style: TextStyle(
                        fontSize: FontSize.sFont14,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),

                /// 收藏
                Container(
                  width: Gaps.hGap15,
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
