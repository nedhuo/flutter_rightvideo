import 'package:json_annotation/json_annotation.dart';

import 'model_data.dart';
import 'model_discover.dart';

part 'model_selected.g.dart';

@JsonSerializable()
class SelectedBean {
  List<ItemList> itemList;
  int count;
  int total;
  String nextPageUrl;
  bool adExist;
  int date;
  int nextPublishTime;
  String dialog;
  String topIssue;
  int refreshCount;
  int lastStartId;

  SelectedBean({
    this.itemList,
    this.count,
    this.total,
    this.nextPageUrl,
    this.adExist,
    this.date,
    this.nextPublishTime,
    this.dialog,
    this.topIssue,
    this.refreshCount,
    this.lastStartId,
  });

  factory SelectedBean.fromJson(Map<String, dynamic> json) =>
      _$SelectedBeanFromJson(json);

  Map<String, dynamic> toJson() => _$SelectedBeanToJson(this);
}

///textFooter
@JsonSerializable()
class TextFooter extends Data {
  String dataType;
  String text;
  String font;
  String actionUrl;
  List<AdTrack> adTrack;

  TextFooter({
    this.dataType,
    this.text,
    this.font,
    this.actionUrl,
    this.adTrack,
  });

  factory TextFooter.fromJson(Map<String, dynamic> json) =>
      _$TextFooterFromJson(json);

  Map<String, dynamic> toJson() => _$TextFooterToJson(this);
}

///VideoCollectionOfCover Header 11个属性
@JsonSerializable()
class HeaderWithCover extends Header {
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

  HeaderWithCover({
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

  factory HeaderWithCover.fromJson(Map<String, dynamic> json) =>
      _$HeaderWithCoverFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderWithCoverToJson(this);
}

///VideoCollectionOfFollow Header 13个属性
@JsonSerializable()
class HeaderWithFollow extends Header {
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

  HeaderWithFollow({
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
    this.iconList,
  });

  factory HeaderWithFollow.fromJson(Map<String, dynamic> json) =>
      _$HeaderWithFollowFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderWithFollowToJson(this);
}

//漫步日历页上
@JsonSerializable()
class RoamingCalendarDailyCard extends Data {
  String dataType;
  int id;
  int date;
  String weeklyDestination;
  String dailyDestination;
  String recReason;

  RoamingCalendarDailyCard(
      {this.dataType,
      this.id,
      this.date,
      this.dailyDestination,
      this.recReason,
      this.weeklyDestination});

  factory RoamingCalendarDailyCard.fromJson(Map<String, dynamic> json) =>
      _$RoamingCalendarDailyCardFromJson(json);

  Map<String, dynamic> toJson() => _$RoamingCalendarDailyCardToJson(this);
}

//漫步日历页下
@JsonSerializable()
class RoamingCalendarWeeklyCard extends Data {
  String dataType;
  int id;

  String weeklyDestination;
  String recReason;
  String actionUrl;
  String imageUrl;
  int topicId;
  String posterTitle;

  RoamingCalendarWeeklyCard(
      {this.recReason,
      this.id,
      this.dataType,
      this.actionUrl,
      this.imageUrl,
      this.posterTitle,
      this.topicId,
      this.weeklyDestination});

  factory RoamingCalendarWeeklyCard.fromJson(Map<String, dynamic> json) =>
      _$RoamingCalendarWeeklyCardFromJson(json);

  Map<String, dynamic> toJson() => _$RoamingCalendarWeeklyCardToJson(this);
}

@JsonSerializable()
class TextCard extends Data {
  String dataType;
  int id;
  String type;

  String actionUrl;

  List<AdTrack> adTrack;
  String subTitle;
  Follow follow;
  String rightText;

  TextCard(
      {this.actionUrl,
      this.dataType,
      this.id,
      this.type,
      this.adTrack,
      this.follow,
      this.rightText,
      this.subTitle});
  factory TextCard.fromJson(Map<String, dynamic> json) =>
      _$TextCardFromJson(json);

  Map<String, dynamic> toJson() => _$TextCardToJson(this);
}
