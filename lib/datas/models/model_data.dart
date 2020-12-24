import 'package:flutter/cupertino.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';
import 'package:flutterrightdemo/datas/models/model_selected.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model_data.g.dart';

///Apo使用总结
///数据类型错综复杂，嵌套，循环使用、变量名相同，类型却有差距等等
///利用上转型解决变量名一样，类型1属性有细微差别的问题
///   相同属性名，对象类型却有细微差别者：
///     data 变量能通过type属性解决上下转型问题
///     header 没有变量能够区分，因此无法实现上下转型
///         全部都使用父类型，但在取数据的时候需要注意

///其他Model通用数据类型， 争取都在这个文件下
///父类必须有子类的属性，否则上转型的时候数据会丢失

///video
@JsonSerializable()
class VideoBean extends Data {
  String dataType;
  int id;
  String title;
  String description;
  String library;
  List<Tags> tags;
  Consumption consumption;
  String resourceType;
  String slogan;
  Provider provider;
  String category;
  Author author;
  Cover cover;
  String playUrl;
  String thumbPlayUrl;
  int duration;
  WebUrl webUrl;
  int releaseTime;
  List<PlayInfo> playInfo;
  String campaign;
  String waterMarks;
  bool ad;
  List<AdTrack> adTrack;
  String type;
  String titlePgc;
  String descriptionPgc;
  String remark;
  bool ifLimitVideo;
  int searchWeight;
  String brandWebsiteInfo;
 // String videoPosterBean;
  int idx;
  String shareAdTrack;
  String favoriteAdTrack;
  String webAdTrack;
  int date;
  String promotion;

//  String label;
  List<LabelList> labelList;
  String descriptionEditor;
  bool collected;
  bool reallyCollected;
  bool played;
  List<String> subtitles;
  String lastViewTime;
  String playlists;
  String src;
  String recallSource;
  String recall_source;

  VideoBean({
    this.dataType,
    this.id,
    this.title,
    this.description,
    this.library,
    this.tags,
    this.consumption,
    this.resourceType,
    this.slogan,
    this.provider,
    this.category,
    this.author,
    this.cover,
    this.playUrl,
    this.thumbPlayUrl,
    this.duration,
    this.webUrl,
    this.releaseTime,
    this.playInfo,
    this.campaign,
    this.waterMarks,
    this.ad,
    this.adTrack,
    this.type,
    this.titlePgc,
    this.descriptionPgc,
    this.remark,
    this.ifLimitVideo,
    this.searchWeight,
    this.brandWebsiteInfo,
  //   this.videoPosterBean,
    this.idx,
    this.shareAdTrack,
    this.favoriteAdTrack,
    this.webAdTrack,
    this.date,
    this.promotion,
//    this.label,
    this.labelList,
    this.descriptionEditor,
    this.collected,
    this.reallyCollected,
    this.played,
    this.subtitles,
    this.lastViewTime,
    this.playlists,
    this.src,
    this.recallSource,
    this.recall_source,
  });

  factory VideoBean.fromJson(Map<String, dynamic> json) =>
      _$VideoBeanFromJson(json);

  Map<String, dynamic> toJson() => _$VideoBeanToJson(this);
}

@JsonSerializable()
class VideoPosterBean{
  int scale;
  String url;
  String fileSizeStr;

  VideoPosterBean({this.url,this.fileSizeStr,this.scale});

//  factory VideoPosterBean.fromJson(Map<String, dynamic> json) {
//    return _$VideoPosterBeanFromJson(json);
//  }
//  Map<String, dynamic> toJson() => _$VideoPosterBeanToJson(this);
}

///itemList
@JsonSerializable()
class ItemList {
  String type;
  Data data;
  String trackingData;
  String tag;
  int id;
  int adIndex;

  ItemList({
    this.type,
    this.data,
    this.trackingData,
    this.tag,
    this.id,
    this.adIndex,
  });

  //TODO 待处理下转型问题
  factory ItemList.fromJson(Map<String, dynamic> json) {
    return _$ItemListFromJson(json);
  }
}

///VideoCollectionOfFollow
///VideoCollectionWithCover
///videoCollectionOfHorizontalScrollCard  分类
///squareCardCollection  排名
///videoCollectionWithBrief   关注链接
///
///
enum ItemCollectionEnum {
  VideoCollectionOfFollow,
  VideoCollectionWithCover,
  videoCollectionOfHorizontalScrollCard,
  SquareCardCollection,
  VideoCollectionWithBrief,
}

@JsonSerializable()
class ItemCollection extends Data {
  String dataType;
  Header header;
  List<ItemList> itemList;
  int count;
  List<AdTrack> adTrack;
  String footer;

  ItemCollection({
    this.dataType,
    this.header,
    this.itemList,
    this.count,
    this.adTrack,
    this.footer,
  });

  factory ItemCollection.fromJson(Map<String, dynamic> json) =>
      _$ItemCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$ItemCollectionToJson(this);
}

///textHeader

@JsonSerializable()
class TextHeader extends Data {
  String dataType;
  String text;
  String font;
  List<AdTrack> adTrack;

  TextHeader({
    this.dataType,
    this.text,
    this.font,
    this.adTrack,
  });

  factory TextHeader.fromJson(Map<String, dynamic> json) =>
      _$TextHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$TextHeaderToJson(this);
}

///horizontalScrollCard(Banner)
@JsonSerializable()
class HorizontalScrollCard extends Data {
  String dataType;
  List<ItemList> itemList;
  int count;

  HorizontalScrollCard({
    this.dataType,
    this.itemList,
    this.count,
  });

  factory HorizontalScrollCard.fromJson(Map<String, dynamic> json) =>
      _$HorizontalScrollCardFromJson(json);

  Map<String, dynamic> toJson() => _$HorizontalScrollCardToJson(this);
}

///
@JsonSerializable()
class SquareCard extends Data {
  String dataType;
  int id;
  String title;
  String image;
  String actionUrl;
  List<AdTrack> adTrack;
  bool shade;
  String description;

  SquareCard({
    this.dataType,
    this.id,
    this.title,
    this.image,
    this.actionUrl,
    this.adTrack,
    this.shade,
    this.description,
  });

  factory SquareCard.fromJson(Map<String, dynamic> json) =>
      _$SquareCardFromJson(json);

  Map<String, dynamic> toJson() => _$SquareCardToJson(this);
}

///header 上转型类
@JsonSerializable()
class Header {
  int id;
  String title;
  String font;
  String subTitle;
  String subTitleFont;
  String textAlign;
  String cover;

//  Label label;
  String actionUrl;
  List<LabelList> labelList;
  String rightText;
  List iconList;
  String description;
  Follow follow;
  String icon;
  String iconType;
  List<AdTrack> adTrack;
  int uid;
  bool ifShowNotificationIcon;
  bool expert;

  //communityColumnsCard
  int time;
  bool showHateVideo;
  String followType;
  int tagId;
  String tagName;
  String issuerName;
  bool topShow;

  Header({
    this.id,
    this.title,
    this.font,
    this.subTitle,
    this.subTitleFont,
    this.textAlign,
    this.cover,
//    this.label,
    this.actionUrl,
    this.labelList,
    this.rightText,
    this.iconList,
    this.description,
    this.follow,
    this.icon,
    this.iconType,
    this.adTrack,
    this.uid,
    this.ifShowNotificationIcon,
    this.expert,
  });

  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderToJson(this);
}

//变量名一样，Label 类型不同，TODO 待处理

enum DataType {
  video,
  textFooter,
  videoCollectionWithCover,
  textHeader,
  videoCollectionOfFollow,
}

///data 上转型类
@JsonSerializable()
class Data {
  String dataType;
  int id;
  String title;
  String description;
  String library;
  List<Tags> tags;
  Consumption consumption;
  String resourceType;
  String slogan;
  Provider provider;
  String category;
  Author author;
  Cover cover;
  String playUrl;
  String thumbPlayUrl;
  int duration;
  WebUrl webUrl;
  int releaseTime;
  List<PlayInfo> playInfo;
  String campaign;
  String waterMarks;
  bool ad;
  List<AdTrack> adTrack;
  String type;
  String titlePgc;
  String descriptionPgc;
  String remark;
  bool ifLimitVideo;
  int searchWeight;
  String brandWebsiteInfo;
  String videoPosterBean;
  int idx;
  String shareAdTrack;
  String favoriteAdTrack;
  String webAdTrack;
  int date;
  String promotion;

//  String label;
  List<LabelList> labelList;
  String descriptionEditor;
  bool collected;
  bool reallyCollected;
  bool played;
  List<String> subtitles;
  String lastViewTime;
  String playlists;
  String src;
  String recallSource;
  String recall_source;
  String text;
  String font;
  String actionUrl;
  Header header;
  List<ItemList> itemList;
  int count;
  String footer;
  String image;
  bool shade;

//  Label label1;
  bool autoPlay;
  Content content;
  int uid;
  int createTime;
  int updateTime;
  Owner owner;
  int selectedTime;
  String checkStatus;
  String area;
  String city;
  double longitude;
  double latitude;
  bool ifMock;
  String validateStatus;
  String validateResult;
  int width;
  int height;
  bool addWatermark;
  RecentOnceReply recentOnceReply;
  String privateMessageActionUrl;
//  String status;
  String transId;
  String validateTaskId;
  String playUrlWatermark;
  String weeklyDestination;
  String dailyDestination;
  String recReason;
  String imageUrl;
  int topicId;
  String posterTitle;
  String subTitle;
  Follow follow;
  String rightText;
  String bgPicture;
  String url;
  List<String> urls;
  List<String> urlsWithWatermark;

  Data({
    this.dataType,
    this.id,
    this.title,
    this.description,
    this.library,
    this.tags,
    this.consumption,
    this.resourceType,
    this.slogan,
    this.provider,
    this.category,
    this.author,
    this.cover,
    this.playUrl,
    this.thumbPlayUrl,
    this.duration,
    this.webUrl,
    this.releaseTime,
    this.playInfo,
    this.campaign,
    this.waterMarks,
    this.ad,
    this.adTrack,
    this.type,
    this.titlePgc,
    this.descriptionPgc,
    this.remark,
    this.ifLimitVideo,
    this.searchWeight,
    this.brandWebsiteInfo,
    this.videoPosterBean,
    this.idx,
    this.shareAdTrack,
    this.favoriteAdTrack,
    this.webAdTrack,
    this.date,
    this.promotion,
    this.labelList,
    this.descriptionEditor,
    this.collected,
    this.reallyCollected,
    this.played,
    this.subtitles,
    this.lastViewTime,
    this.playlists,
    this.src,
    this.recallSource,
    this.recall_source,
    this.text,
    this.font,
    this.actionUrl,
    this.header,
    this.itemList,
    this.count,
    this.footer,
    this.image,
    this.shade,
    this.autoPlay,
    this.content,
    this.uid,
    this.createTime,
    this.updateTime,
    this.owner,
    this.selectedTime,
    this.checkStatus,
    this.area,
    this.city,
    this.longitude,
    this.latitude,
    this.ifMock,
    this.validateStatus,
    this.validateResult,
    this.width,
    this.height,
    this.addWatermark,
    this.recentOnceReply,
    this.privateMessageActionUrl,
  //  this.status,
    this.transId,
    this.validateTaskId,
    this.playUrlWatermark,
    this.weeklyDestination,
    this.dailyDestination,
    this.recReason,
    this.imageUrl,
    this.topicId,
    this.posterTitle,
    this.subTitle,
    this.follow,
    this.rightText,
    this.bgPicture,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

///follow
@JsonSerializable()
class Follow {
  String itemType;
  int itemId;
  bool followed;

  Follow({
    this.itemType,
    this.itemId,
    this.followed,
  });

  factory Follow.fromJson(Map<String, dynamic> json) => _$FollowFromJson(json);

  Map<String, dynamic> toJson() => _$FollowToJson(this);
}

///label

//class Label {
//  String text;
//  String card;
//  String detail;
//
//  Label({
//    this.text,
//    this.card,
//    this.detail,
//  });
//
//  factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);
//
//  Map<String, dynamic> toJson() => _$LabelToJson(this);

///List<LabelList>
@JsonSerializable()
class LabelList {
  String text;
  String actionUrl;

  LabelList({
    this.text,
    this.actionUrl,
  });

  factory LabelList.fromJson(Map<String, dynamic> json) =>
      _$LabelListFromJson(json);

  Map<String, dynamic> toJson() => _$LabelListToJson(this);
}

@JsonSerializable()
class Tags {
  int id;
  String name;
  String actionUrl;
  String adTrack;
  String desc;
  String bgPicture;
  String headerImage;
  String tagRecType;
  String childTagList;
  String childTagIdList;
  bool haveReward;
  bool ifNewest;
  String newestEndTime;
  int communityIndex;

  Tags({
    this.id,
    this.name,
    this.actionUrl,
    this.adTrack,
    this.desc,
    this.bgPicture,
    this.headerImage,
    this.tagRecType,
    this.childTagList,
    this.childTagIdList,
    this.haveReward,
    this.ifNewest,
    this.newestEndTime,
    this.communityIndex,
  });

  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);

  Map<String, dynamic> toJson() => _$TagsToJson(this);
}

@JsonSerializable()
class Consumption {
  int collectionCount;
  int shareCount;
  int replyCount;
  int realCollectionCount;

  Consumption({
    this.collectionCount,
    this.shareCount,
    this.replyCount,
    this.realCollectionCount,
  });

  factory Consumption.fromJson(Map<String, dynamic> json) =>
      _$ConsumptionFromJson(json);

  Map<String, dynamic> toJson() => _$ConsumptionToJson(this);
}

@JsonSerializable()
class Provider {
  String name;
  String alias;
  String icon;

  Provider({
    this.name,
    this.alias,
    this.icon,
  });

  factory Provider.fromJson(Map<String, dynamic> json) =>
      _$ProviderFromJson(json);

  Map<String, dynamic> toJson() => _$ProviderToJson(this);
}

@JsonSerializable()
class Shield {
  String itemType;
  int itemId;
  bool shielded;

  Shield({
    this.itemType,
    this.itemId,
    this.shielded,
  });

  factory Shield.fromJson(Map<String, dynamic> json) => _$ShieldFromJson(json);

  Map<String, dynamic> toJson() => _$ShieldToJson(this);
}

///14个属性
@JsonSerializable()
class Author {
  int id;
  String icon;
  String name;
  String description;
  String link;
  int latestReleaseTime;
  int videoNum;
  String adTrack;
  Follow follow;
  Shield shield;
  int approvedNotReadyVideoCount;
  bool ifPgc;
  int recSort;
  bool expert;

  Author({
    this.id,
    this.icon,
    this.name,
    this.description,
    this.link,
    this.latestReleaseTime,
    this.videoNum,
    this.adTrack,
    this.follow,
    this.shield,
    this.approvedNotReadyVideoCount,
    this.ifPgc,
    this.recSort,
    this.expert,
  });

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}

@JsonSerializable()
class Cover {
  String feed;
  String detail;
  String blurred;
  String sharing;
  String homepage;

  Cover({
    this.feed,
    this.detail,
    this.blurred,
    this.sharing,
    this.homepage,
  });

  factory Cover.fromJson(Map<String, dynamic> json) => _$CoverFromJson(json);

  Map<String, dynamic> toJson() => _$CoverToJson(this);
}

@JsonSerializable()
class WebUrl {
  String raw;
  String forWeibo;

  WebUrl({this.raw, this.forWeibo});

  factory WebUrl.fromJson(Map<String, dynamic> json) => _$WebUrlFromJson(json);

  Map<String, dynamic> toJson() => _$WebUrlToJson(this);
}

@JsonSerializable()
class PlayInfo {
  int height;
  int width;
  List<UrlList> urlList;
  String name;
  String type;
  String url;

  PlayInfo({
    this.height,
    this.width,
    this.urlList,
    this.name,
    this.type,
    this.url,
  });

  factory PlayInfo.fromJson(Map<String, dynamic> json) =>
      _$PlayInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PlayInfoToJson(this);
}

@JsonSerializable()
class UrlList {
  String name;
  String url;
  int size;

  UrlList({
    this.name,
    this.url,
    this.size,
  });

  factory UrlList.fromJson(Map<String, dynamic> json) =>
      _$UrlListFromJson(json);

  Map<String, dynamic> toJson() => _$UrlListToJson(this);
}
