// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_selected.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectedBean _$SelectedBeanFromJson(Map<String, dynamic> json) {
  return SelectedBean(
    itemList: (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    count: json['count'] as int,
    total: json['total'] as int,
    nextPageUrl: json['nextPageUrl'] as String,
    adExist: json['adExist'] as bool,
    date: json['date'] as int,
    nextPublishTime: json['nextPublishTime'] as int,
    dialog: json['dialog'] as String,
    topIssue: json['topIssue'] as String,
    refreshCount: json['refreshCount'] as int,
    lastStartId: json['lastStartId'] as int,
  );
}

Map<String, dynamic> _$SelectedBeanToJson(SelectedBean instance) =>
    <String, dynamic>{
      'itemList': instance.itemList,
      'count': instance.count,
      'total': instance.total,
      'nextPageUrl': instance.nextPageUrl,
      'adExist': instance.adExist,
      'date': instance.date,
      'nextPublishTime': instance.nextPublishTime,
      'dialog': instance.dialog,
      'topIssue': instance.topIssue,
      'refreshCount': instance.refreshCount,
      'lastStartId': instance.lastStartId,
    };

TextFooter _$TextFooterFromJson(Map<String, dynamic> json) {
  return TextFooter(
    dataType: json['dataType'] as String,
    text: json['text'] as String,
    font: json['font'] as String,
    actionUrl: json['actionUrl'] as String,
    adTrack: (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..library = json['library'] as String
    ..tags = (json['tags'] as List)
        ?.map(
            (e) => e == null ? null : Tags.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..consumption = json['consumption'] == null
        ? null
        : Consumption.fromJson(json['consumption'] as Map<String, dynamic>)
    ..resourceType = json['resourceType'] as String
    ..slogan = json['slogan'] as String
    ..provider = json['provider'] == null
        ? null
        : Provider.fromJson(json['provider'] as Map<String, dynamic>)
    ..category = json['category'] as String
    ..author = json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>)
    ..cover = json['cover'] == null
        ? null
        : Cover.fromJson(json['cover'] as Map<String, dynamic>)
    ..playUrl = json['playUrl'] as String
    ..thumbPlayUrl = json['thumbPlayUrl'] as String
    ..duration = json['duration'] as int
    ..webUrl = json['webUrl'] == null
        ? null
        : WebUrl.fromJson(json['webUrl'] as Map<String, dynamic>)
    ..releaseTime = json['releaseTime'] as int
    ..playInfo = (json['playInfo'] as List)
        ?.map((e) =>
            e == null ? null : PlayInfo.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..campaign = json['campaign'] as String
    ..waterMarks = json['waterMarks'] as String
    ..ad = json['ad'] as bool
    ..type = json['type'] as String
    ..titlePgc = json['titlePgc'] as String
    ..descriptionPgc = json['descriptionPgc'] as String
    ..remark = json['remark'] as String
    ..ifLimitVideo = json['ifLimitVideo'] as bool
    ..searchWeight = json['searchWeight'] as int
    ..brandWebsiteInfo = json['brandWebsiteInfo'] as String
    ..videoPosterBean = json['videoPosterBean'] as String
    ..idx = json['idx'] as int
    ..shareAdTrack = json['shareAdTrack'] as String
    ..favoriteAdTrack = json['favoriteAdTrack'] as String
    ..webAdTrack = json['webAdTrack'] as String
    ..date = json['date'] as int
    ..promotion = json['promotion'] as String
    ..labelList = (json['labelList'] as List)
        ?.map((e) =>
            e == null ? null : LabelList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..descriptionEditor = json['descriptionEditor'] as String
    ..collected = json['collected'] as bool
    ..reallyCollected = json['reallyCollected'] as bool
    ..played = json['played'] as bool
    ..subtitles = (json['subtitles'] as List)?.map((e) => e as String)?.toList()
    ..lastViewTime = json['lastViewTime'] as String
    ..playlists = json['playlists'] as String
    ..src = json['src'] as String
    ..recallSource = json['recallSource'] as String
    ..recall_source = json['recall_source'] as String
    ..header = json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>)
    ..itemList = (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..footer = json['footer'] as String
    ..image = json['image'] as String
    ..shade = json['shade'] as bool
    ..autoPlay = json['autoPlay'] as bool
    ..content = json['content'] == null
        ? null
        : Content.fromJson(json['content'] as Map<String, dynamic>)
    ..uid = json['uid'] as int
    ..createTime = json['createTime'] as int
    ..updateTime = json['updateTime'] as int
    ..owner = json['owner'] == null
        ? null
        : Owner.fromJson(json['owner'] as Map<String, dynamic>)
    ..selectedTime = json['selectedTime'] as int
    ..checkStatus = json['checkStatus'] as String
    ..area = json['area'] as String
    ..city = json['city'] as String
    ..longitude = (json['longitude'] as num)?.toDouble()
    ..latitude = (json['latitude'] as num)?.toDouble()
    ..ifMock = json['ifMock'] as bool
    ..validateStatus = json['validateStatus'] as String
    ..validateResult = json['validateResult'] as String
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..addWatermark = json['addWatermark'] as bool
    ..recentOnceReply = json['recentOnceReply'] == null
        ? null
        : RecentOnceReply.fromJson(
            json['recentOnceReply'] as Map<String, dynamic>)
    ..privateMessageActionUrl = json['privateMessageActionUrl'] as String
   // ..status = json['status'] as String
    ..transId = json['transId'] as String
    ..validateTaskId = json['validateTaskId'] as String
    ..playUrlWatermark = json['playUrlWatermark'] as String
    ..weeklyDestination = json['weeklyDestination'] as String
    ..dailyDestination = json['dailyDestination'] as String
    ..recReason = json['recReason'] as String
    ..imageUrl = json['imageUrl'] as String
    ..topicId = json['topicId'] as int
    ..posterTitle = json['posterTitle'] as String
    ..subTitle = json['subTitle'] as String
    ..follow = json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>)
    ..rightText = json['rightText'] as String
    ..bgPicture = json['bgPicture'] as String
    ..url = json['url'] as String
    ..urls = (json['urls'] as List)?.map((e) => e as String)?.toList()
    ..urlsWithWatermark =
        (json['urlsWithWatermark'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$TextFooterToJson(TextFooter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'library': instance.library,
      'tags': instance.tags,
      'consumption': instance.consumption,
      'resourceType': instance.resourceType,
      'slogan': instance.slogan,
      'provider': instance.provider,
      'category': instance.category,
      'author': instance.author,
      'cover': instance.cover,
      'playUrl': instance.playUrl,
      'thumbPlayUrl': instance.thumbPlayUrl,
      'duration': instance.duration,
      'webUrl': instance.webUrl,
      'releaseTime': instance.releaseTime,
      'playInfo': instance.playInfo,
      'campaign': instance.campaign,
      'waterMarks': instance.waterMarks,
      'ad': instance.ad,
      'type': instance.type,
      'titlePgc': instance.titlePgc,
      'descriptionPgc': instance.descriptionPgc,
      'remark': instance.remark,
      'ifLimitVideo': instance.ifLimitVideo,
      'searchWeight': instance.searchWeight,
      'brandWebsiteInfo': instance.brandWebsiteInfo,
      'videoPosterBean': instance.videoPosterBean,
      'idx': instance.idx,
      'shareAdTrack': instance.shareAdTrack,
      'favoriteAdTrack': instance.favoriteAdTrack,
      'webAdTrack': instance.webAdTrack,
      'date': instance.date,
      'promotion': instance.promotion,
      'labelList': instance.labelList,
      'descriptionEditor': instance.descriptionEditor,
      'collected': instance.collected,
      'reallyCollected': instance.reallyCollected,
      'played': instance.played,
      'subtitles': instance.subtitles,
      'lastViewTime': instance.lastViewTime,
      'playlists': instance.playlists,
      'src': instance.src,
      'recallSource': instance.recallSource,
      'recall_source': instance.recall_source,
      'header': instance.header,
      'itemList': instance.itemList,
      'count': instance.count,
      'footer': instance.footer,
      'image': instance.image,
      'shade': instance.shade,
      'autoPlay': instance.autoPlay,
      'content': instance.content,
      'uid': instance.uid,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'owner': instance.owner,
      'selectedTime': instance.selectedTime,
      'checkStatus': instance.checkStatus,
      'area': instance.area,
      'city': instance.city,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'ifMock': instance.ifMock,
      'validateStatus': instance.validateStatus,
      'validateResult': instance.validateResult,
      'width': instance.width,
      'height': instance.height,
      'addWatermark': instance.addWatermark,
      'recentOnceReply': instance.recentOnceReply,
      'privateMessageActionUrl': instance.privateMessageActionUrl,
    //  'status': instance.status,
      'transId': instance.transId,
      'validateTaskId': instance.validateTaskId,
      'playUrlWatermark': instance.playUrlWatermark,
      'weeklyDestination': instance.weeklyDestination,
      'dailyDestination': instance.dailyDestination,
      'recReason': instance.recReason,
      'imageUrl': instance.imageUrl,
      'topicId': instance.topicId,
      'posterTitle': instance.posterTitle,
      'subTitle': instance.subTitle,
      'follow': instance.follow,
      'rightText': instance.rightText,
      'bgPicture': instance.bgPicture,
      'url': instance.url,
      'urls': instance.urls,
      'urlsWithWatermark': instance.urlsWithWatermark,
      'dataType': instance.dataType,
      'text': instance.text,
      'font': instance.font,
      'actionUrl': instance.actionUrl,
      'adTrack': instance.adTrack,
    };

HeaderWithCover _$HeaderWithCoverFromJson(Map<String, dynamic> json) {
  return HeaderWithCover(
    id: json['id'] as int,
    title: json['title'] as String,
    font: json['font'] as String,
    subTitle: json['subTitle'] as String,
    subTitleFont: json['subTitleFont'] as String,
    textAlign: json['textAlign'] as String,
    cover: json['cover'] as String,
    actionUrl: json['actionUrl'] as String,
    labelList: (json['labelList'] as List)
        ?.map((e) =>
            e == null ? null : LabelList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rightText: json['rightText'] as String,
  )
    ..iconList = json['iconList'] as List
    ..description = json['description'] as String
    ..follow = json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>)
    ..icon = json['icon'] as String
    ..iconType = json['iconType'] as String
    ..adTrack = (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..uid = json['uid'] as int
    ..ifShowNotificationIcon = json['ifShowNotificationIcon'] as bool
    ..expert = json['expert'] as bool
    ..time = json['time'] as int
    ..showHateVideo = json['showHateVideo'] as bool
    ..followType = json['followType'] as String
    ..tagId = json['tagId'] as int
    ..tagName = json['tagName'] as String
    ..issuerName = json['issuerName'] as String
    ..topShow = json['topShow'] as bool;
}

Map<String, dynamic> _$HeaderWithCoverToJson(HeaderWithCover instance) =>
    <String, dynamic>{
      'iconList': instance.iconList,
      'description': instance.description,
      'follow': instance.follow,
      'icon': instance.icon,
      'iconType': instance.iconType,
      'adTrack': instance.adTrack,
      'uid': instance.uid,
      'ifShowNotificationIcon': instance.ifShowNotificationIcon,
      'expert': instance.expert,
      'time': instance.time,
      'showHateVideo': instance.showHateVideo,
      'followType': instance.followType,
      'tagId': instance.tagId,
      'tagName': instance.tagName,
      'issuerName': instance.issuerName,
      'topShow': instance.topShow,
      'id': instance.id,
      'title': instance.title,
      'font': instance.font,
      'subTitle': instance.subTitle,
      'subTitleFont': instance.subTitleFont,
      'textAlign': instance.textAlign,
      'cover': instance.cover,
      'actionUrl': instance.actionUrl,
      'labelList': instance.labelList,
      'rightText': instance.rightText,
    };

HeaderWithFollow _$HeaderWithFollowFromJson(Map<String, dynamic> json) {
  return HeaderWithFollow(
    id: json['id'] as int,
    title: json['title'] as String,
    font: json['font'] as String,
    subTitle: json['subTitle'] as String,
    subTitleFont: json['subTitleFont'] as String,
    textAlign: json['textAlign'] as String,
    cover: json['cover'] as String,
    actionUrl: json['actionUrl'] as String,
    labelList: (json['labelList'] as List)
        ?.map((e) =>
            e == null ? null : LabelList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rightText: json['rightText'] as String,
    description: json['description'] as String,
    iconList: json['iconList'] as List,
  )
    ..follow = json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>)
    ..icon = json['icon'] as String
    ..iconType = json['iconType'] as String
    ..adTrack = (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..uid = json['uid'] as int
    ..ifShowNotificationIcon = json['ifShowNotificationIcon'] as bool
    ..expert = json['expert'] as bool
    ..time = json['time'] as int
    ..showHateVideo = json['showHateVideo'] as bool
    ..followType = json['followType'] as String
    ..tagId = json['tagId'] as int
    ..tagName = json['tagName'] as String
    ..issuerName = json['issuerName'] as String
    ..topShow = json['topShow'] as bool;
}

Map<String, dynamic> _$HeaderWithFollowToJson(HeaderWithFollow instance) =>
    <String, dynamic>{
      'follow': instance.follow,
      'icon': instance.icon,
      'iconType': instance.iconType,
      'adTrack': instance.adTrack,
      'uid': instance.uid,
      'ifShowNotificationIcon': instance.ifShowNotificationIcon,
      'expert': instance.expert,
      'time': instance.time,
      'showHateVideo': instance.showHateVideo,
      'followType': instance.followType,
      'tagId': instance.tagId,
      'tagName': instance.tagName,
      'issuerName': instance.issuerName,
      'topShow': instance.topShow,
      'id': instance.id,
      'title': instance.title,
      'font': instance.font,
      'subTitle': instance.subTitle,
      'subTitleFont': instance.subTitleFont,
      'textAlign': instance.textAlign,
      'cover': instance.cover,
      'actionUrl': instance.actionUrl,
      'labelList': instance.labelList,
      'rightText': instance.rightText,
      'iconList': instance.iconList,
      'description': instance.description,
    };

RoamingCalendarDailyCard _$RoamingCalendarDailyCardFromJson(
    Map<String, dynamic> json) {
  return RoamingCalendarDailyCard(
    dataType: json['dataType'] as String,
    id: json['id'] as int,
    date: json['date'] as int,
    dailyDestination: json['dailyDestination'] as String,
    recReason: json['recReason'] as String,
    weeklyDestination: json['weeklyDestination'] as String,
  )
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..library = json['library'] as String
    ..tags = (json['tags'] as List)
        ?.map(
            (e) => e == null ? null : Tags.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..consumption = json['consumption'] == null
        ? null
        : Consumption.fromJson(json['consumption'] as Map<String, dynamic>)
    ..resourceType = json['resourceType'] as String
    ..slogan = json['slogan'] as String
    ..provider = json['provider'] == null
        ? null
        : Provider.fromJson(json['provider'] as Map<String, dynamic>)
    ..category = json['category'] as String
    ..author = json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>)
    ..cover = json['cover'] == null
        ? null
        : Cover.fromJson(json['cover'] as Map<String, dynamic>)
    ..playUrl = json['playUrl'] as String
    ..thumbPlayUrl = json['thumbPlayUrl'] as String
    ..duration = json['duration'] as int
    ..webUrl = json['webUrl'] == null
        ? null
        : WebUrl.fromJson(json['webUrl'] as Map<String, dynamic>)
    ..releaseTime = json['releaseTime'] as int
    ..playInfo = (json['playInfo'] as List)
        ?.map((e) =>
            e == null ? null : PlayInfo.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..campaign = json['campaign'] as String
    ..waterMarks = json['waterMarks'] as String
    ..ad = json['ad'] as bool
    ..adTrack = (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..type = json['type'] as String
    ..titlePgc = json['titlePgc'] as String
    ..descriptionPgc = json['descriptionPgc'] as String
    ..remark = json['remark'] as String
    ..ifLimitVideo = json['ifLimitVideo'] as bool
    ..searchWeight = json['searchWeight'] as int
    ..brandWebsiteInfo = json['brandWebsiteInfo'] as String
    ..videoPosterBean = json['videoPosterBean'] as String
    ..idx = json['idx'] as int
    ..shareAdTrack = json['shareAdTrack'] as String
    ..favoriteAdTrack = json['favoriteAdTrack'] as String
    ..webAdTrack = json['webAdTrack'] as String
    ..promotion = json['promotion'] as String
    ..labelList = (json['labelList'] as List)
        ?.map((e) =>
            e == null ? null : LabelList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..descriptionEditor = json['descriptionEditor'] as String
    ..collected = json['collected'] as bool
    ..reallyCollected = json['reallyCollected'] as bool
    ..played = json['played'] as bool
    ..subtitles = (json['subtitles'] as List)?.map((e) => e as String)?.toList()
    ..lastViewTime = json['lastViewTime'] as String
    ..playlists = json['playlists'] as String
    ..src = json['src'] as String
    ..recallSource = json['recallSource'] as String
    ..recall_source = json['recall_source'] as String
    ..text = json['text'] as String
    ..font = json['font'] as String
    ..actionUrl = json['actionUrl'] as String
    ..header = json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>)
    ..itemList = (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..footer = json['footer'] as String
    ..image = json['image'] as String
    ..shade = json['shade'] as bool
    ..autoPlay = json['autoPlay'] as bool
    ..content = json['content'] == null
        ? null
        : Content.fromJson(json['content'] as Map<String, dynamic>)
    ..uid = json['uid'] as int
    ..createTime = json['createTime'] as int
    ..updateTime = json['updateTime'] as int
    ..owner = json['owner'] == null
        ? null
        : Owner.fromJson(json['owner'] as Map<String, dynamic>)
    ..selectedTime = json['selectedTime'] as int
    ..checkStatus = json['checkStatus'] as String
    ..area = json['area'] as String
    ..city = json['city'] as String
    ..longitude = (json['longitude'] as num)?.toDouble()
    ..latitude = (json['latitude'] as num)?.toDouble()
    ..ifMock = json['ifMock'] as bool
    ..validateStatus = json['validateStatus'] as String
    ..validateResult = json['validateResult'] as String
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..addWatermark = json['addWatermark'] as bool
    ..recentOnceReply = json['recentOnceReply'] == null
        ? null
        : RecentOnceReply.fromJson(
            json['recentOnceReply'] as Map<String, dynamic>)
    ..privateMessageActionUrl = json['privateMessageActionUrl'] as String
 //   ..status = json['status'] as String
    ..transId = json['transId'] as String
    ..validateTaskId = json['validateTaskId'] as String
    ..playUrlWatermark = json['playUrlWatermark'] as String
    ..imageUrl = json['imageUrl'] as String
    ..topicId = json['topicId'] as int
    ..posterTitle = json['posterTitle'] as String
    ..subTitle = json['subTitle'] as String
    ..follow = json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>)
    ..rightText = json['rightText'] as String
    ..bgPicture = json['bgPicture'] as String
    ..url = json['url'] as String
    ..urls = (json['urls'] as List)?.map((e) => e as String)?.toList()
    ..urlsWithWatermark =
        (json['urlsWithWatermark'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$RoamingCalendarDailyCardToJson(
        RoamingCalendarDailyCard instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'library': instance.library,
      'tags': instance.tags,
      'consumption': instance.consumption,
      'resourceType': instance.resourceType,
      'slogan': instance.slogan,
      'provider': instance.provider,
      'category': instance.category,
      'author': instance.author,
      'cover': instance.cover,
      'playUrl': instance.playUrl,
      'thumbPlayUrl': instance.thumbPlayUrl,
      'duration': instance.duration,
      'webUrl': instance.webUrl,
      'releaseTime': instance.releaseTime,
      'playInfo': instance.playInfo,
      'campaign': instance.campaign,
      'waterMarks': instance.waterMarks,
      'ad': instance.ad,
      'adTrack': instance.adTrack,
      'type': instance.type,
      'titlePgc': instance.titlePgc,
      'descriptionPgc': instance.descriptionPgc,
      'remark': instance.remark,
      'ifLimitVideo': instance.ifLimitVideo,
      'searchWeight': instance.searchWeight,
      'brandWebsiteInfo': instance.brandWebsiteInfo,
      'videoPosterBean': instance.videoPosterBean,
      'idx': instance.idx,
      'shareAdTrack': instance.shareAdTrack,
      'favoriteAdTrack': instance.favoriteAdTrack,
      'webAdTrack': instance.webAdTrack,
      'promotion': instance.promotion,
      'labelList': instance.labelList,
      'descriptionEditor': instance.descriptionEditor,
      'collected': instance.collected,
      'reallyCollected': instance.reallyCollected,
      'played': instance.played,
      'subtitles': instance.subtitles,
      'lastViewTime': instance.lastViewTime,
      'playlists': instance.playlists,
      'src': instance.src,
      'recallSource': instance.recallSource,
      'recall_source': instance.recall_source,
      'text': instance.text,
      'font': instance.font,
      'actionUrl': instance.actionUrl,
      'header': instance.header,
      'itemList': instance.itemList,
      'count': instance.count,
      'footer': instance.footer,
      'image': instance.image,
      'shade': instance.shade,
      'autoPlay': instance.autoPlay,
      'content': instance.content,
      'uid': instance.uid,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'owner': instance.owner,
      'selectedTime': instance.selectedTime,
      'checkStatus': instance.checkStatus,
      'area': instance.area,
      'city': instance.city,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'ifMock': instance.ifMock,
      'validateStatus': instance.validateStatus,
      'validateResult': instance.validateResult,
      'width': instance.width,
      'height': instance.height,
      'addWatermark': instance.addWatermark,
      'recentOnceReply': instance.recentOnceReply,
      'privateMessageActionUrl': instance.privateMessageActionUrl,
   //   'status': instance.status,
      'transId': instance.transId,
      'validateTaskId': instance.validateTaskId,
      'playUrlWatermark': instance.playUrlWatermark,
      'imageUrl': instance.imageUrl,
      'topicId': instance.topicId,
      'posterTitle': instance.posterTitle,
      'subTitle': instance.subTitle,
      'follow': instance.follow,
      'rightText': instance.rightText,
      'bgPicture': instance.bgPicture,
      'url': instance.url,
      'urls': instance.urls,
      'urlsWithWatermark': instance.urlsWithWatermark,
      'dataType': instance.dataType,
      'id': instance.id,
      'date': instance.date,
      'weeklyDestination': instance.weeklyDestination,
      'dailyDestination': instance.dailyDestination,
      'recReason': instance.recReason,
    };

RoamingCalendarWeeklyCard _$RoamingCalendarWeeklyCardFromJson(
    Map<String, dynamic> json) {
  return RoamingCalendarWeeklyCard(
    recReason: json['recReason'] as String,
    id: json['id'] as int,
    dataType: json['dataType'] as String,
    actionUrl: json['actionUrl'] as String,
    imageUrl: json['imageUrl'] as String,
    posterTitle: json['posterTitle'] as String,
    topicId: json['topicId'] as int,
    weeklyDestination: json['weeklyDestination'] as String,
  )
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..library = json['library'] as String
    ..tags = (json['tags'] as List)
        ?.map(
            (e) => e == null ? null : Tags.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..consumption = json['consumption'] == null
        ? null
        : Consumption.fromJson(json['consumption'] as Map<String, dynamic>)
    ..resourceType = json['resourceType'] as String
    ..slogan = json['slogan'] as String
    ..provider = json['provider'] == null
        ? null
        : Provider.fromJson(json['provider'] as Map<String, dynamic>)
    ..category = json['category'] as String
    ..author = json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>)
    ..cover = json['cover'] == null
        ? null
        : Cover.fromJson(json['cover'] as Map<String, dynamic>)
    ..playUrl = json['playUrl'] as String
    ..thumbPlayUrl = json['thumbPlayUrl'] as String
    ..duration = json['duration'] as int
    ..webUrl = json['webUrl'] == null
        ? null
        : WebUrl.fromJson(json['webUrl'] as Map<String, dynamic>)
    ..releaseTime = json['releaseTime'] as int
    ..playInfo = (json['playInfo'] as List)
        ?.map((e) =>
            e == null ? null : PlayInfo.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..campaign = json['campaign'] as String
    ..waterMarks = json['waterMarks'] as String
    ..ad = json['ad'] as bool
    ..adTrack = (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..type = json['type'] as String
    ..titlePgc = json['titlePgc'] as String
    ..descriptionPgc = json['descriptionPgc'] as String
    ..remark = json['remark'] as String
    ..ifLimitVideo = json['ifLimitVideo'] as bool
    ..searchWeight = json['searchWeight'] as int
    ..brandWebsiteInfo = json['brandWebsiteInfo'] as String
    ..videoPosterBean = json['videoPosterBean'] as String
    ..idx = json['idx'] as int
    ..shareAdTrack = json['shareAdTrack'] as String
    ..favoriteAdTrack = json['favoriteAdTrack'] as String
    ..webAdTrack = json['webAdTrack'] as String
    ..date = json['date'] as int
    ..promotion = json['promotion'] as String
    ..labelList = (json['labelList'] as List)
        ?.map((e) =>
            e == null ? null : LabelList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..descriptionEditor = json['descriptionEditor'] as String
    ..collected = json['collected'] as bool
    ..reallyCollected = json['reallyCollected'] as bool
    ..played = json['played'] as bool
    ..subtitles = (json['subtitles'] as List)?.map((e) => e as String)?.toList()
    ..lastViewTime = json['lastViewTime'] as String
    ..playlists = json['playlists'] as String
    ..src = json['src'] as String
    ..recallSource = json['recallSource'] as String
    ..recall_source = json['recall_source'] as String
    ..text = json['text'] as String
    ..font = json['font'] as String
    ..header = json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>)
    ..itemList = (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..footer = json['footer'] as String
    ..image = json['image'] as String
    ..shade = json['shade'] as bool
    ..autoPlay = json['autoPlay'] as bool
    ..content = json['content'] == null
        ? null
        : Content.fromJson(json['content'] as Map<String, dynamic>)
    ..uid = json['uid'] as int
    ..createTime = json['createTime'] as int
    ..updateTime = json['updateTime'] as int
    ..owner = json['owner'] == null
        ? null
        : Owner.fromJson(json['owner'] as Map<String, dynamic>)
    ..selectedTime = json['selectedTime'] as int
    ..checkStatus = json['checkStatus'] as String
    ..area = json['area'] as String
    ..city = json['city'] as String
    ..longitude = (json['longitude'] as num)?.toDouble()
    ..latitude = (json['latitude'] as num)?.toDouble()
    ..ifMock = json['ifMock'] as bool
    ..validateStatus = json['validateStatus'] as String
    ..validateResult = json['validateResult'] as String
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..addWatermark = json['addWatermark'] as bool
    ..recentOnceReply = json['recentOnceReply'] == null
        ? null
        : RecentOnceReply.fromJson(
            json['recentOnceReply'] as Map<String, dynamic>)
    ..privateMessageActionUrl = json['privateMessageActionUrl'] as String
  //  ..status = json['status'] as String
    ..transId = json['transId'] as String
    ..validateTaskId = json['validateTaskId'] as String
    ..playUrlWatermark = json['playUrlWatermark'] as String
    ..dailyDestination = json['dailyDestination'] as String
    ..subTitle = json['subTitle'] as String
    ..follow = json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>)
    ..rightText = json['rightText'] as String
    ..bgPicture = json['bgPicture'] as String
    ..url = json['url'] as String
    ..urls = (json['urls'] as List)?.map((e) => e as String)?.toList()
    ..urlsWithWatermark =
        (json['urlsWithWatermark'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$RoamingCalendarWeeklyCardToJson(
        RoamingCalendarWeeklyCard instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'library': instance.library,
      'tags': instance.tags,
      'consumption': instance.consumption,
      'resourceType': instance.resourceType,
      'slogan': instance.slogan,
      'provider': instance.provider,
      'category': instance.category,
      'author': instance.author,
      'cover': instance.cover,
      'playUrl': instance.playUrl,
      'thumbPlayUrl': instance.thumbPlayUrl,
      'duration': instance.duration,
      'webUrl': instance.webUrl,
      'releaseTime': instance.releaseTime,
      'playInfo': instance.playInfo,
      'campaign': instance.campaign,
      'waterMarks': instance.waterMarks,
      'ad': instance.ad,
      'adTrack': instance.adTrack,
      'type': instance.type,
      'titlePgc': instance.titlePgc,
      'descriptionPgc': instance.descriptionPgc,
      'remark': instance.remark,
      'ifLimitVideo': instance.ifLimitVideo,
      'searchWeight': instance.searchWeight,
      'brandWebsiteInfo': instance.brandWebsiteInfo,
      'videoPosterBean': instance.videoPosterBean,
      'idx': instance.idx,
      'shareAdTrack': instance.shareAdTrack,
      'favoriteAdTrack': instance.favoriteAdTrack,
      'webAdTrack': instance.webAdTrack,
      'date': instance.date,
      'promotion': instance.promotion,
      'labelList': instance.labelList,
      'descriptionEditor': instance.descriptionEditor,
      'collected': instance.collected,
      'reallyCollected': instance.reallyCollected,
      'played': instance.played,
      'subtitles': instance.subtitles,
      'lastViewTime': instance.lastViewTime,
      'playlists': instance.playlists,
      'src': instance.src,
      'recallSource': instance.recallSource,
      'recall_source': instance.recall_source,
      'text': instance.text,
      'font': instance.font,
      'header': instance.header,
      'itemList': instance.itemList,
      'count': instance.count,
      'footer': instance.footer,
      'image': instance.image,
      'shade': instance.shade,
      'autoPlay': instance.autoPlay,
      'content': instance.content,
      'uid': instance.uid,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'owner': instance.owner,
      'selectedTime': instance.selectedTime,
      'checkStatus': instance.checkStatus,
      'area': instance.area,
      'city': instance.city,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'ifMock': instance.ifMock,
      'validateStatus': instance.validateStatus,
      'validateResult': instance.validateResult,
      'width': instance.width,
      'height': instance.height,
      'addWatermark': instance.addWatermark,
      'recentOnceReply': instance.recentOnceReply,
      'privateMessageActionUrl': instance.privateMessageActionUrl,
 //     'status': instance.status,
      'transId': instance.transId,
      'validateTaskId': instance.validateTaskId,
      'playUrlWatermark': instance.playUrlWatermark,
      'dailyDestination': instance.dailyDestination,
      'subTitle': instance.subTitle,
      'follow': instance.follow,
      'rightText': instance.rightText,
      'bgPicture': instance.bgPicture,
      'url': instance.url,
      'urls': instance.urls,
      'urlsWithWatermark': instance.urlsWithWatermark,
      'dataType': instance.dataType,
      'id': instance.id,
      'weeklyDestination': instance.weeklyDestination,
      'recReason': instance.recReason,
      'actionUrl': instance.actionUrl,
      'imageUrl': instance.imageUrl,
      'topicId': instance.topicId,
      'posterTitle': instance.posterTitle,
    };

TextCard _$TextCardFromJson(Map<String, dynamic> json) {
  return TextCard(
    actionUrl: json['actionUrl'] as String,
    dataType: json['dataType'] as String,
    id: json['id'] as int,
    type: json['type'] as String,
    adTrack: (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    follow: json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>),
    rightText: json['rightText'] as String,
    subTitle: json['subTitle'] as String,
  )
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..library = json['library'] as String
    ..tags = (json['tags'] as List)
        ?.map(
            (e) => e == null ? null : Tags.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..consumption = json['consumption'] == null
        ? null
        : Consumption.fromJson(json['consumption'] as Map<String, dynamic>)
    ..resourceType = json['resourceType'] as String
    ..slogan = json['slogan'] as String
    ..provider = json['provider'] == null
        ? null
        : Provider.fromJson(json['provider'] as Map<String, dynamic>)
    ..category = json['category'] as String
    ..author = json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>)
    ..cover = json['cover'] == null
        ? null
        : Cover.fromJson(json['cover'] as Map<String, dynamic>)
    ..playUrl = json['playUrl'] as String
    ..thumbPlayUrl = json['thumbPlayUrl'] as String
    ..duration = json['duration'] as int
    ..webUrl = json['webUrl'] == null
        ? null
        : WebUrl.fromJson(json['webUrl'] as Map<String, dynamic>)
    ..releaseTime = json['releaseTime'] as int
    ..playInfo = (json['playInfo'] as List)
        ?.map((e) =>
            e == null ? null : PlayInfo.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..campaign = json['campaign'] as String
    ..waterMarks = json['waterMarks'] as String
    ..ad = json['ad'] as bool
    ..titlePgc = json['titlePgc'] as String
    ..descriptionPgc = json['descriptionPgc'] as String
    ..remark = json['remark'] as String
    ..ifLimitVideo = json['ifLimitVideo'] as bool
    ..searchWeight = json['searchWeight'] as int
    ..brandWebsiteInfo = json['brandWebsiteInfo'] as String
    ..videoPosterBean = json['videoPosterBean'] as String
    ..idx = json['idx'] as int
    ..shareAdTrack = json['shareAdTrack'] as String
    ..favoriteAdTrack = json['favoriteAdTrack'] as String
    ..webAdTrack = json['webAdTrack'] as String
    ..date = json['date'] as int
    ..promotion = json['promotion'] as String
    ..labelList = (json['labelList'] as List)
        ?.map((e) =>
            e == null ? null : LabelList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..descriptionEditor = json['descriptionEditor'] as String
    ..collected = json['collected'] as bool
    ..reallyCollected = json['reallyCollected'] as bool
    ..played = json['played'] as bool
    ..subtitles = (json['subtitles'] as List)?.map((e) => e as String)?.toList()
    ..lastViewTime = json['lastViewTime'] as String
    ..playlists = json['playlists'] as String
    ..src = json['src'] as String
    ..recallSource = json['recallSource'] as String
    ..recall_source = json['recall_source'] as String
    ..text = json['text'] as String
    ..font = json['font'] as String
    ..header = json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>)
    ..itemList = (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..footer = json['footer'] as String
    ..image = json['image'] as String
    ..shade = json['shade'] as bool
    ..autoPlay = json['autoPlay'] as bool
    ..content = json['content'] == null
        ? null
        : Content.fromJson(json['content'] as Map<String, dynamic>)
    ..uid = json['uid'] as int
    ..createTime = json['createTime'] as int
    ..updateTime = json['updateTime'] as int
    ..owner = json['owner'] == null
        ? null
        : Owner.fromJson(json['owner'] as Map<String, dynamic>)
    ..selectedTime = json['selectedTime'] as int
    ..checkStatus = json['checkStatus'] as String
    ..area = json['area'] as String
    ..city = json['city'] as String
    ..longitude = (json['longitude'] as num)?.toDouble()
    ..latitude = (json['latitude'] as num)?.toDouble()
    ..ifMock = json['ifMock'] as bool
    ..validateStatus = json['validateStatus'] as String
    ..validateResult = json['validateResult'] as String
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..addWatermark = json['addWatermark'] as bool
    ..recentOnceReply = json['recentOnceReply'] == null
        ? null
        : RecentOnceReply.fromJson(
            json['recentOnceReply'] as Map<String, dynamic>)
    ..privateMessageActionUrl = json['privateMessageActionUrl'] as String
 //  ..status = json['status'] as String
    ..transId = json['transId'] as String
    ..validateTaskId = json['validateTaskId'] as String
    ..playUrlWatermark = json['playUrlWatermark'] as String
    ..weeklyDestination = json['weeklyDestination'] as String
    ..dailyDestination = json['dailyDestination'] as String
    ..recReason = json['recReason'] as String
    ..imageUrl = json['imageUrl'] as String
    ..topicId = json['topicId'] as int
    ..posterTitle = json['posterTitle'] as String
    ..bgPicture = json['bgPicture'] as String
    ..url = json['url'] as String
    ..urls = (json['urls'] as List)?.map((e) => e as String)?.toList()
    ..urlsWithWatermark =
        (json['urlsWithWatermark'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$TextCardToJson(TextCard instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'library': instance.library,
      'tags': instance.tags,
      'consumption': instance.consumption,
      'resourceType': instance.resourceType,
      'slogan': instance.slogan,
      'provider': instance.provider,
      'category': instance.category,
      'author': instance.author,
      'cover': instance.cover,
      'playUrl': instance.playUrl,
      'thumbPlayUrl': instance.thumbPlayUrl,
      'duration': instance.duration,
      'webUrl': instance.webUrl,
      'releaseTime': instance.releaseTime,
      'playInfo': instance.playInfo,
      'campaign': instance.campaign,
      'waterMarks': instance.waterMarks,
      'ad': instance.ad,
      'titlePgc': instance.titlePgc,
      'descriptionPgc': instance.descriptionPgc,
      'remark': instance.remark,
      'ifLimitVideo': instance.ifLimitVideo,
      'searchWeight': instance.searchWeight,
      'brandWebsiteInfo': instance.brandWebsiteInfo,
      'videoPosterBean': instance.videoPosterBean,
      'idx': instance.idx,
      'shareAdTrack': instance.shareAdTrack,
      'favoriteAdTrack': instance.favoriteAdTrack,
      'webAdTrack': instance.webAdTrack,
      'date': instance.date,
      'promotion': instance.promotion,
      'labelList': instance.labelList,
      'descriptionEditor': instance.descriptionEditor,
      'collected': instance.collected,
      'reallyCollected': instance.reallyCollected,
      'played': instance.played,
      'subtitles': instance.subtitles,
      'lastViewTime': instance.lastViewTime,
      'playlists': instance.playlists,
      'src': instance.src,
      'recallSource': instance.recallSource,
      'recall_source': instance.recall_source,
      'text': instance.text,
      'font': instance.font,
      'header': instance.header,
      'itemList': instance.itemList,
      'count': instance.count,
      'footer': instance.footer,
      'image': instance.image,
      'shade': instance.shade,
      'autoPlay': instance.autoPlay,
      'content': instance.content,
      'uid': instance.uid,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'owner': instance.owner,
      'selectedTime': instance.selectedTime,
      'checkStatus': instance.checkStatus,
      'area': instance.area,
      'city': instance.city,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'ifMock': instance.ifMock,
      'validateStatus': instance.validateStatus,
      'validateResult': instance.validateResult,
      'width': instance.width,
      'height': instance.height,
      'addWatermark': instance.addWatermark,
      'recentOnceReply': instance.recentOnceReply,
      'privateMessageActionUrl': instance.privateMessageActionUrl,
   //   'status': instance.status,
      'transId': instance.transId,
      'validateTaskId': instance.validateTaskId,
      'playUrlWatermark': instance.playUrlWatermark,
      'weeklyDestination': instance.weeklyDestination,
      'dailyDestination': instance.dailyDestination,
      'recReason': instance.recReason,
      'imageUrl': instance.imageUrl,
      'topicId': instance.topicId,
      'posterTitle': instance.posterTitle,
      'bgPicture': instance.bgPicture,
      'url': instance.url,
      'urls': instance.urls,
      'urlsWithWatermark': instance.urlsWithWatermark,
      'dataType': instance.dataType,
      'id': instance.id,
      'type': instance.type,
      'actionUrl': instance.actionUrl,
      'adTrack': instance.adTrack,
      'subTitle': instance.subTitle,
      'follow': instance.follow,
      'rightText': instance.rightText,
    };
