import 'package:flutter/cupertino.dart';
import 'package:flutterrightdemo/datas/models/model_selected.dart';
import 'package:json_annotation/json_annotation.dart';

import 'model_data.dart';

part 'model_discover.g.dart';

/// 发现  http://baobab.kaiyanapp.com/api/v4/discovery
/// 获取三条链接
/// 热门链接 http://baobab.kaiyanapp.com/api/v4/discovery/hot
///分类链接 http://baobab.kaiyanapp.com/api/v4/discovery/category
/// 作业链接 http://baobab.kaiyanapp.com/api/v4/pgcs/all（不可以直接获取）

@JsonSerializable()
class TabInfo {
  List<TabList> tabInfo;
  int defaultIdx;

  TabInfo({this.defaultIdx, this.tabInfo});

  factory TabInfo.fromJson(Map<String, dynamic> json) =>
      _$TabInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TabInfoToJson(this);
}

@JsonSerializable()
class TabList {
  int id;
  String name;
  String apiUrl;
  int tabType;
  int nameType;
  List<AdTrack> adTrack;

  TabList({
    this.adTrack,
    this.name,
    this.apiUrl,
    this.id,
    this.nameType,
    this.tabType,
  });

  factory TabList.fromJson(Map<String, dynamic> json) =>
      _$TabListFromJson(json);

  Map<String, dynamic> toJson() => _$TabListToJson(this);
}

@JsonSerializable()
class AdTrack {
  int id;
  String organization;
  String viewUrl;
  String clickUrl;
  String playUrl;
  String monitorPositions;
  List<String> needExtraParams;

  AdTrack({
    this.id,
    this.clickUrl,
    this.monitorPositions,
    this.needExtraParams,
    this.organization,
    this.playUrl,
    this.viewUrl,
  });

  factory AdTrack.fromJson(Map<String, dynamic> json) =>
      _$AdTrackFromJson(json);

  Map<String, dynamic> toJson() => _$AdTrackToJson(this);
}

///热门  category里categoryItem的
///推荐
@JsonSerializable()
class DisCover {
  List<ItemList> itemList;
  int count;
  int total;
  String nextPageUrl;
  bool adExist;

  DisCover({
    this.itemList,
    this.nextPageUrl,
    this.count,
    this.adExist,
    this.total,
  });

  factory DisCover.fromJson(Map<String, dynamic> json) =>
      _$DisCoverFromJson(json);

  Map<String, dynamic> toJson() => _$DisCoverToJson(this);
}

///排名Header squareCardCollection
@JsonSerializable()
class HeaderWithSquare extends Header {
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

  HeaderWithSquare({
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
  });

  factory HeaderWithSquare.fromJson(Map<String, dynamic> json) =>
      _$HeaderWithSquareFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderWithSquareToJson(this);
}

///videoCollectionOfHorizontalScrollCard Header 12个属性
@JsonSerializable()
class HeaderWithScrollCard extends Header {
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
  Follow follow;

  HeaderWithScrollCard({
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
    this.follow,
  });

  factory HeaderWithScrollCard.fromJson(Map<String, dynamic> json) =>
      _$HeaderWithScrollCardFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderWithScrollCardToJson(this);
}

//banner2 Banner Header 13个属
@JsonSerializable()
class HeaderWithBanner extends Header {
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
  String icon;
  String description;

  HeaderWithBanner({
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
    this.description,
    this.icon,
  });

  factory HeaderWithBanner.fromJson(Map<String, dynamic> json) =>
      _$HeaderWithBannerFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderWithBannerToJson(this);
}

//TODO 待处理
//数据类型加载有问题
//adTrack 不为List<String>

/// banner
@JsonSerializable()
class BannerBean extends Data {
  String dataType;
  int id;
  String title;
  String description;
  String image;
  String actionUrl;
  List<AdTrack> adTrack;
  bool shade;

//  Label label1;
  List<LabelList> labelList;
  Header header;
  bool autoPlay;

  BannerBean({
    this.dataType,
    this.id,
    this.title,
    this.description,
    this.image,
    this.actionUrl,
    this.adTrack,
    this.shade,
//    this.label1,
    this.labelList,
    this.header,
    this.autoPlay,
  });

  factory BannerBean.fromJson(Map<String, dynamic> json) =>
      _$BannerBeanFromJson(json);

  Map<String, dynamic> toJson() => _$BannerBeanToJson(this);
}

@JsonSerializable()
class Content {
  String type;
  Data data;
  String trackingData;
  String tag;
  int id;
  int adIndex;

  Content(
      {this.id,
      this.data,
      this.tag,
      this.type,
      this.adIndex,
      this.trackingData});

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}

@JsonSerializable()
class UgcVideoBean extends Data {
  String dataType;
  int id;
  String title;
  String description;
  String library;
  List<Tags> tags;
  Consumption consumption;
  String resourceType;
  int uid;
  int createTime;
  int updateTime;
  bool collected;
  bool reallyCollected;
  Owner owner;
  Cover cover;
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
  String playUrl;
 // String status;
  int releaseTime;
  int duration;
  String transId;
  String type;
  String validateTaskId;
  String playUrlWatermark;

  UgcVideoBean({
    this.dataType,
    this.id,
    this.title,
    this.description,
    this.library,
    this.tags,
    this.consumption,
    this.resourceType,
    this.uid,
    this.createTime,
    this.updateTime,
    this.collected,
    this.reallyCollected,
    this.owner,
    this.cover,
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
    this.playUrl,
  //  this.status,
    this.releaseTime,
    this.duration,
    this.transId,
    this.type,
    this.validateTaskId,
    this.playUrlWatermark,
  });

  factory UgcVideoBean.fromJson(Map<String, dynamic> json) =>
      _$UgcVideoBeanFromJson(json);

  Map<String, dynamic> toJson() => _$UgcVideoBeanToJson(this);
}

@JsonSerializable()
class FollowCard extends Data {
  String dataType;
  Header header;
  Content content;
  List<AdTrack> adTrack;

  FollowCard({
    this.adTrack,
    this.header,
    this.dataType,
    this.content,
  });

  factory FollowCard.fromJson(Map<String, dynamic> json) =>
      _$FollowCardFromJson(json);

  Map<String, dynamic> toJson() => _$FollowCardToJson(this);
}

@JsonSerializable()
class RecentOnceReply {
  String dataType;
  String message;
  String nickname;
  String actionUrl;
  String contentType;

  RecentOnceReply(
      {this.dataType,
      this.actionUrl,
      this.message,
      this.contentType,
      this.nickname});

  factory RecentOnceReply.fromJson(Map<String, dynamic> json) =>
      _$RecentOnceReplyFromJson(json);

  Map<String, dynamic> toJson() => _$RecentOnceReplyToJson(this);
}

@JsonSerializable()
class Owner {
  int uid;
  String nickname;
  String avatar;
  String userType;
  bool ifPgc;
  String description;
  String area;
  String gender;
  int registDate;
  int releaseDate;
  String cover;
  String actionUrl;
  bool followed;
  bool limitVideoOpen;
  String library;
  int birthday;
  String country;
  String city;
  String university;
  String job;
  bool expert;

  Owner({
    this.uid,
    this.nickname,
    this.avatar,
    this.userType,
    this.ifPgc,
    this.description,
    this.area,
    this.gender,
    this.registDate,
    this.releaseDate,
    this.cover,
    this.actionUrl,
    this.followed,
    this.limitVideoOpen,
    this.library,
    this.birthday,
    this.country,
    this.city,
    this.university,
    this.job,
    this.expert,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable()
class CommunityContent extends Data {
  String dataType;
  String title;
  String subTitle;
  String bgPicture;
  String actionUrl;

  CommunityContent({
    this.actionUrl,
    this.dataType,
    this.bgPicture,
    this.title,
    this.subTitle,
  });

  factory CommunityContent.fromJson(Map<String, dynamic> json) =>
      _$CommunityContentFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityContentToJson(this);
}

@JsonSerializable()
class Category {
  int id;
  String name;
  String bgColor;
  String description;
  String bgPicture;

  //全为null
  String alias;
  String headerImage;
  int defaultAuthorId;
  int tagId;

  Category(
      {this.id,
      this.name,
      this.description,
      this.alias,
      this.bgColor,
      this.bgPicture,
      this.defaultAuthorId,
      this.headerImage,
      this.tagId});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class UgcPictureBean extends Data {
  String dataType;
  int id;
  String title;
  String description;
  String library;
  List<Tags> tags;
  Consumption consumption;
  String resourceType;
  int uid;
  int createTime;
  int updateTime;
  bool collected;
  bool reallyCollected;
  Owner owner;
  Cover cover;
  int selectedTime;
  String checkStatus;
  String area;
  String city;

//  int longitude;
//  int latitude;
  bool ifMock;
  String validateStatus;
  String validateResult;
  int width;
  int height;
  bool addWatermark;
  RecentOnceReply recentOnceReply;
  String privateMessageActionUrl;
  String url;
  List<String> urls;

  // int status;
  int releaseTime;
  List<String> urlsWithWatermark;

  UgcPictureBean({
    this.title,
    this.cover,
    this.validateStatus,
    this.validateResult,
    this.updateTime,
    this.uid,
    this.selectedTime,
    this.recentOnceReply,
    this.privateMessageActionUrl,
    this.owner,
    this.ifMock,
    this.createTime,
    this.city,
    this.checkStatus,
    this.area,
    this.addWatermark,
    this.dataType,
    this.description,
    this.height,
    this.width,
    this.id,
    this.url,
    this.collected,
    this.consumption,
    this.library,
    this.reallyCollected,
    this.releaseTime,
    this.resourceType,
    this.tags,
    this.urls,
    this.urlsWithWatermark,
  });

  factory UgcPictureBean.fromJson(Map<String, dynamic> json) =>
      _$UgcPictureBeanFromJson(json);

  Map<String, dynamic> toJson() => _$UgcPictureBeanToJson(this);
}
