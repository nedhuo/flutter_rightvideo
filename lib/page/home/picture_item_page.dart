import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';
import 'package:flutterrightdemo/page/widget/font_util.dart';
import 'package:flutterrightdemo/res/styles.dart';

class PictureItemPage extends StatefulWidget {
  UgcPictureBean ugcPicture;

  PictureItemPage(this.ugcPicture)
      : assert(ugcPicture != null, "PictureItemPage数据为null");

  @override
  State<StatefulWidget> createState() {
    return _PictureItemPageState();
  }
}

class _PictureItemPageState extends State<PictureItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Container(
          child: Stack(children: [
        PageView.builder(
            itemCount: widget.ugcPicture.urls.length,
            itemBuilder: (context, index) {
              return Container(
                child: Center(
                  child: CachedNetworkImage(
                    imageUrl: widget.ugcPicture.urls[index],
                    fit: BoxFit.fitWidth,
                  ),
                ),
              );
            }),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(10),
              height: Gaps.getVGap(150),
              color: Color(0x7f000000),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        child: FontUtil.text14(widget.ugcPicture.description),
                      ),
                    ),

                    ///分割线
                    Container(
                      height: 0.5,
                      color: Colors.white,
                    ),

                    Container(
                        height: Gaps.getVGap(50),
                        width: Gaps.getHGap(50),
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        child: Column(children: [
                          Container(
                              child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            child: CachedNetworkImage(
                              height: Gaps.getVGap(50),
                              width: Gaps.getHGap(50),
                              imageUrl: widget.ugcPicture.owner.avatar,
                              fit: BoxFit.cover,
                            ),
                          )),
                          Expanded(
                              child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: Text(
                                    widget.ugcPicture.owner.nickname,
                                    style: TextStyle(
                                        fontSize: FontSize.sFont16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ))),
                        ])),
                  ]),
            )),
      ])),
    ));
  }
}
