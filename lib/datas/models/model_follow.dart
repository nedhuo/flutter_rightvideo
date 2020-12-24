
import 'package:json_annotation/json_annotation.dart';
import 'model_data.dart';
import 'model_discover.dart';
part 'model_follow.g.dart';

/// 关注
/// 链接
/// http://baobab.kaiyanapp.com/api/v4/tabs/follow
///
@JsonSerializable()
class FollowBean {
  List<ItemList> itemList;
  int count;
  int total;
  String nextPageUrl;
  bool adExist;
  String updateTime;
  int refreshCount;
  int lastStartId;

  FollowBean({
    this.total,
    this.adExist,
    this.count,
    this.nextPageUrl,
    this.itemList,
    this.lastStartId,
    this.refreshCount,
    this.updateTime,
  });

  factory FollowBean.fromJson(Map<String, dynamic> json) =>
      _$FollowBeanFromJson(json);

  Map<String, dynamic> toJson() => _$FollowBeanToJson(this);
}

///13个属性  关注链接 videoCollectionWithBrief
@JsonSerializable()
class HeaderWithBrief extends Header {
  int id;
  String icon;
  String iconType;
  String description;
  String title;
  String subTitle;
  List<AdTrack> adTrack;
  String actionUrl;
  Follow follow;
  bool isPgc;
  int uid;
  bool ifShowNotificationIcon;
  bool expert;

  HeaderWithBrief({
    this.id,
    this.title,
    this.subTitle,
    this.actionUrl,
    this.icon,
    this.description,
    this.follow,
    this.adTrack,
    this.expert,
    this.iconType,
    this.ifShowNotificationIcon,
    this.isPgc,
    this.uid,
  });

  factory HeaderWithBrief.fromJson(Map<String, dynamic> json) =>
      _$HeaderWithBriefFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderWithBriefToJson(this);
}
