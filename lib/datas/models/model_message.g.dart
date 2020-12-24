// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageRoot _$MessageRootFromJson(Map<String, dynamic> json) {
  return MessageRoot(
    itemList: (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : MessageBean.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextPageUrl: json['nextPageUrl'] as String,
    updateTime: json['updateTime'] as int,
  );
}

Map<String, dynamic> _$MessageRootToJson(MessageRoot instance) =>
    <String, dynamic>{
      'itemList': instance.itemList,
      'updateTime': instance.updateTime,
      'nextPageUrl': instance.nextPageUrl,
    };

MessageBean _$MessageBeanFromJson(Map<String, dynamic> json) {
  return MessageBean(
    id: json['id'] as int,
    uid: json['uid'] as String,
    title: json['title'] as String,
    icon: json['icon'] as String,
    content: json['content'] as String,
    actionUrl: json['actionUrl'] as String,
    date: json['date'] as int,
    ifPush: json['ifPush'] as bool,
    pushStatus: json['pushStatus'] as int,
    viewed: json['viewed'] as bool,
  );
}

Map<String, dynamic> _$MessageBeanToJson(MessageBean instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'date': instance.date,
      'actionUrl': instance.actionUrl,
      'icon': instance.icon,
      'viewed': instance.viewed,
      'ifPush': instance.ifPush,
      'pushStatus': instance.pushStatus,
      'uid': instance.uid,
    };
