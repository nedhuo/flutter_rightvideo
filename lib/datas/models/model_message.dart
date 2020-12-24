import 'package:json_annotation/json_annotation.dart';

part 'model_message.g.dart';

@JsonSerializable()
class MessageRoot {
  List<MessageBean> itemList;
  int updateTime;
  String nextPageUrl;

  MessageRoot({this.itemList, this.nextPageUrl, this.updateTime});

  factory MessageRoot.fromJson(Map<String, dynamic> json) =>
      _$MessageRootFromJson(json);

  Map<String, dynamic> toJson() => _$MessageRootToJson(this);
}

@JsonSerializable()
class MessageBean {
  int id;
  String title;
  String content;
  int date;
  String actionUrl;
  String icon;
  bool viewed;
  bool ifPush;
  int pushStatus;
  String uid;

  MessageBean({
    this.id,
    this.uid,
    this.title,
    this.icon,
    this.content,
    this.actionUrl,
    this.date,
    this.ifPush,
    this.pushStatus,
    this.viewed,
  });

  factory MessageBean.fromJson(Map<String, dynamic> json) =>
      _$MessageBeanFromJson(json);

  Map<String, dynamic> toJson() => _$MessageBeanToJson(this);
}
