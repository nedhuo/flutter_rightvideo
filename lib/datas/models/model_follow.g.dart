// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_follow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowBean _$FollowBeanFromJson(Map<String, dynamic> json) {
  return FollowBean(
    total: json['total'] as int,
    adExist: json['adExist'] as bool,
    count: json['count'] as int,
    nextPageUrl: json['nextPageUrl'] as String,
    itemList: (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lastStartId: json['lastStartId'] as int,
    refreshCount: json['refreshCount'] as int,
    updateTime: json['updateTime'] as String,
  );
}

Map<String, dynamic> _$FollowBeanToJson(FollowBean instance) =>
    <String, dynamic>{
      'itemList': instance.itemList,
      'count': instance.count,
      'total': instance.total,
      'nextPageUrl': instance.nextPageUrl,
      'adExist': instance.adExist,
      'updateTime': instance.updateTime,
      'refreshCount': instance.refreshCount,
      'lastStartId': instance.lastStartId,
    };

HeaderWithBrief _$HeaderWithBriefFromJson(Map<String, dynamic> json) {
  return HeaderWithBrief(
    id: json['id'] as int,
    title: json['title'] as String,
    subTitle: json['subTitle'] as String,
    actionUrl: json['actionUrl'] as String,
    icon: json['icon'] as String,
    description: json['description'] as String,
    follow: json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>),
    adTrack: (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    expert: json['expert'] as bool,
    iconType: json['iconType'] as String,
    ifShowNotificationIcon: json['ifShowNotificationIcon'] as bool,
    isPgc: json['isPgc'] as bool,
    uid: json['uid'] as int,
  )
    ..font = json['font'] as String
    ..subTitleFont = json['subTitleFont'] as String
    ..textAlign = json['textAlign'] as String
    ..cover = json['cover'] as String
    ..labelList = (json['labelList'] as List)
        ?.map((e) =>
            e == null ? null : LabelList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..rightText = json['rightText'] as String
    ..iconList = json['iconList'] as List
    ..time = json['time'] as int
    ..showHateVideo = json['showHateVideo'] as bool
    ..followType = json['followType'] as String
    ..tagId = json['tagId'] as int
    ..tagName = json['tagName'] as String
    ..issuerName = json['issuerName'] as String
    ..topShow = json['topShow'] as bool;
}

Map<String, dynamic> _$HeaderWithBriefToJson(HeaderWithBrief instance) =>
    <String, dynamic>{
      'font': instance.font,
      'subTitleFont': instance.subTitleFont,
      'textAlign': instance.textAlign,
      'cover': instance.cover,
      'labelList': instance.labelList,
      'rightText': instance.rightText,
      'iconList': instance.iconList,
      'time': instance.time,
      'showHateVideo': instance.showHateVideo,
      'followType': instance.followType,
      'tagId': instance.tagId,
      'tagName': instance.tagName,
      'issuerName': instance.issuerName,
      'topShow': instance.topShow,
      'id': instance.id,
      'icon': instance.icon,
      'iconType': instance.iconType,
      'description': instance.description,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'adTrack': instance.adTrack,
      'actionUrl': instance.actionUrl,
      'follow': instance.follow,
      'isPgc': instance.isPgc,
      'uid': instance.uid,
      'ifShowNotificationIcon': instance.ifShowNotificationIcon,
      'expert': instance.expert,
    };
