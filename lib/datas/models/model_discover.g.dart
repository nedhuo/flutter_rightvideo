// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_discover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TabInfo _$TabInfoFromJson(Map<String, dynamic> json) {
  debugPrint("======TabInfoFromJson========${json}=================");
  return TabInfo(
    defaultIdx: json['defaultIdx'] as int,
    tabInfo: (json['tabInfo']['tabList'] as List)
        ?.map((e) =>
            e == null ? null : TabList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TabInfoToJson(TabInfo instance) => <String, dynamic>{
      'tabInfo': instance.tabInfo,
      'defaultIdx': instance.defaultIdx,
    };

TabList _$TabListFromJson(Map<String, dynamic> json) {
  return TabList(
    adTrack: (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    apiUrl: json['apiUrl'] as String,
    id: json['id'] as int,
    nameType: json['nameType'] as int,
    tabType: json['tabType'] as int,
  );
}

Map<String, dynamic> _$TabListToJson(TabList instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'apiUrl': instance.apiUrl,
      'tabType': instance.tabType,
      'nameType': instance.nameType,
      'adTrack': instance.adTrack,
    };

AdTrack _$AdTrackFromJson(Map<String, dynamic> json) {
  return AdTrack(
    id: json['id'] as int,
    clickUrl: json['clickUrl'] as String,
    monitorPositions: json['monitorPositions'] as String,
    needExtraParams:
        (json['needExtraParams'] as List)?.map((e) => e as String)?.toList(),
    organization: json['organization'] as String,
    playUrl: json['playUrl'] as String,
    viewUrl: json['viewUrl'] as String,
  );
}

Map<String, dynamic> _$AdTrackToJson(AdTrack instance) => <String, dynamic>{
      'id': instance.id,
      'organization': instance.organization,
      'viewUrl': instance.viewUrl,
      'clickUrl': instance.clickUrl,
      'playUrl': instance.playUrl,
      'monitorPositions': instance.monitorPositions,
      'needExtraParams': instance.needExtraParams,
    };

DisCover _$DisCoverFromJson(Map<String, dynamic> json) {
  return DisCover(
    itemList: (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextPageUrl: json['nextPageUrl'] as String,
    count: json['count'] as int,
    adExist: json['adExist'] as bool,
    total: json['total'] as int,
  );
}

Map<String, dynamic> _$DisCoverToJson(DisCover instance) => <String, dynamic>{
      'itemList': instance.itemList,
      'count': instance.count,
      'total': instance.total,
      'nextPageUrl': instance.nextPageUrl,
      'adExist': instance.adExist,
    };

HeaderWithSquare _$HeaderWithSquareFromJson(Map<String, dynamic> json) {
  return HeaderWithSquare(
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

Map<String, dynamic> _$HeaderWithSquareToJson(HeaderWithSquare instance) =>
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

HeaderWithScrollCard _$HeaderWithScrollCardFromJson(Map<String, dynamic> json) {
  return HeaderWithScrollCard(
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
    follow: json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>),
  )
    ..iconList = json['iconList'] as List
    ..description = json['description'] as String
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

Map<String, dynamic> _$HeaderWithScrollCardToJson(
        HeaderWithScrollCard instance) =>
    <String, dynamic>{
      'iconList': instance.iconList,
      'description': instance.description,
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
      'follow': instance.follow,
    };

HeaderWithBanner _$HeaderWithBannerFromJson(Map<String, dynamic> json) {
  return HeaderWithBanner(
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
    icon: json['icon'] as String,
  )
    ..iconList = json['iconList'] as List
    ..follow = json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>)
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

Map<String, dynamic> _$HeaderWithBannerToJson(HeaderWithBanner instance) =>
    <String, dynamic>{
      'iconList': instance.iconList,
      'follow': instance.follow,
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
      'icon': instance.icon,
      'description': instance.description,
    };

BannerBean _$BannerBeanFromJson(Map<String, dynamic> json) {
  return BannerBean(
    dataType: json['dataType'] as String,
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String,
    image: json['image'] as String,
    actionUrl: json['actionUrl'] as String,
    adTrack: (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shade: json['shade'] as bool,
    labelList: (json['labelList'] as List)
        ?.map((e) =>
            e == null ? null : LabelList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    header: json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>),
    autoPlay: json['autoPlay'] as bool,
  )
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
    ..itemList = (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..footer = json['footer'] as String
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

Map<String, dynamic> _$BannerBeanToJson(BannerBean instance) =>
    <String, dynamic>{
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
      'itemList': instance.itemList,
      'count': instance.count,
      'footer': instance.footer,
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
      //    'status': instance.status,
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
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'actionUrl': instance.actionUrl,
      'adTrack': instance.adTrack,
      'shade': instance.shade,
      'labelList': instance.labelList,
      'header': instance.header,
      'autoPlay': instance.autoPlay,
    };

Content _$ContentFromJson(Map<String, dynamic> json) {
  Data data;
  switch (json['type'] as String) {
    case 'video':
      debugPrint("==modeldata===ItemListfromJson====video====");
      if (json['data']['dataType'] == 'VideoBeanForClient') {
        data = VideoBean.fromJson(json['data'] as Map<String, dynamic>);
      } else if (json['data']['dataType'] == 'UgcVideoBean') {
        data = UgcVideoBean.fromJson(json['data'] as Map<String, dynamic>);
      }

      break;
    case 'textFooter':
      debugPrint("==modeldata===ItemListfromJson====textFooter====");
      data = TextFooter.fromJson(json['data'] as Map<String, dynamic>);
      break;
    case 'videoCollectionWithCover':
      debugPrint("==modeldata===ItemListfromJson====videoCollectionWithCover=");
      data = ItemCollection.fromJson(json['data'] as Map<String, dynamic>);
      break;
    case 'textHeader':
      debugPrint("==modeldata===ItemListfromJson====textHeader=");
      data = TextHeader.fromJson(json['data'] as Map<String, dynamic>);
      break;
    case 'videoCollectionOfFollow':
      debugPrint("==modeldata===ItemListfromJson====videoCollectionOfFollow=");
      data = ItemCollection.fromJson(json['data'] as Map<String, dynamic>);
      break;
    case 'horizontalScrollCard':
      debugPrint("==modeldata===ItemListfromJson====horizontalScrollCard====");
      if (json['data']['dataType'] == 'HorizontalScrollCard') {
        data =
            HorizontalScrollCard.fromJson(json['data'] as Map<String, dynamic>);
      } else if (json['data']['dataType'] == 'ItemCollection') {
        data = ItemCollection.fromJson(json['data'] as Map<String, dynamic>);
      }

      break;
    case 'squareCardCollection':
      debugPrint("==modeldata===ItemListfromJson====squareCardCollection====");
      data = ItemCollection.fromJson(json['data'] as Map<String, dynamic>);
      break;
    case 'banner2':
      debugPrint("==modeldata===ItemListfromJson====banner2====");
      data = BannerBean.fromJson(json['data'] as Map<String, dynamic>);
      break;
    case 'banner':
      debugPrint("==modeldata===ItemListfromJson====banner====");
      data = BannerBean.fromJson(json['data'] as Map<String, dynamic>);
      break;
    case 'communityColumnsCard':
      debugPrint("==modeldata===ItemListfromJson====communityColumnsCard====");
      data = FollowCard.fromJson(json['data'] as Map<String, dynamic>);
      break;
    case 'roamingCalendarDailyCard':
      debugPrint("==modeldata===ItemListfromJson====roamingCalendarDailyCard=");
      data = RoamingCalendarDailyCard.fromJson(
          json['data'] as Map<String, dynamic>);
      break;
    case 'roamingCalendarWeeklyCard':
      debugPrint(
          "==modeldata===ItemListfromJson====roamingCalendarWeeklyCard=");
      data = RoamingCalendarWeeklyCard.fromJson(
          json['data'] as Map<String, dynamic>);
      break;
    case 'textCard':
      debugPrint("==modeldata===ItemListfromJson====textCard=");
      data = TextCard.fromJson(json['data'] as Map<String, dynamic>);
      break;

    case 'squareCardOfCommunityContent':
      debugPrint(
          "==modeldata==ItemListfromJson==squareCardOfCommunityContent=");
      data = CommunityContent.fromJson(json['data'] as Map<String, dynamic>);
      break;
    case 'ugcPicture':
      debugPrint("==modeldata==ItemListfromJson==ugcPicture=");
      data = UgcPictureBean.fromJson(json['data'] as Map<String, dynamic>);
      break;
    default:
      data = null;
  }
  return Content(
    id: json['id'] as int,
    data: json['data'] == null ? null : data,
    tag: json['tag'] as String,
    type: json['type'] as String,
    adIndex: json['adIndex'] as int,
    trackingData: json['trackingData'] as String,
  );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
      'trackingData': instance.trackingData,
      'tag': instance.tag,
      'id': instance.id,
      'adIndex': instance.adIndex,
    };

UgcVideoBean _$UgcVideoBeanFromJson(Map<String, dynamic> json) {
  return UgcVideoBean(
    dataType: json['dataType'] as String,
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String,
    library: json['library'] as String,
    tags: (json['tags'] as List)
        ?.map(
            (e) => e == null ? null : Tags.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    consumption: json['consumption'] == null
        ? null
        : Consumption.fromJson(json['consumption'] as Map<String, dynamic>),
    resourceType: json['resourceType'] as String,
    uid: json['uid'] as int,
    createTime: json['createTime'] as int,
    updateTime: json['updateTime'] as int,
    collected: json['collected'] as bool,
    reallyCollected: json['reallyCollected'] as bool,
    owner: json['owner'] == null
        ? null
        : Owner.fromJson(json['owner'] as Map<String, dynamic>),
    cover: json['cover'] == null
        ? null
        : Cover.fromJson(json['cover'] as Map<String, dynamic>),
    selectedTime: json['selectedTime'] as int,
    checkStatus: json['checkStatus'] as String,
    area: json['area'] as String,
    city: json['city'] as String,
    longitude: (json['longitude'] as num)?.toDouble(),
    latitude: (json['latitude'] as num)?.toDouble(),
    ifMock: json['ifMock'] as bool,
    validateStatus: json['validateStatus'] as String,
    validateResult: json['validateResult'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
    addWatermark: json['addWatermark'] as bool,
    recentOnceReply: json['recentOnceReply'] == null
        ? null
        : RecentOnceReply.fromJson(
            json['recentOnceReply'] as Map<String, dynamic>),
    privateMessageActionUrl: json['privateMessageActionUrl'] as String,
    playUrl: json['playUrl'] as String,
    //   status: json['status'] as String,
    releaseTime: json['releaseTime'] as int,
    duration: json['duration'] as int,
    transId: json['transId'] as String,
    type: json['type'] as String,
    validateTaskId: json['validateTaskId'] as String,
    playUrlWatermark: json['playUrlWatermark'] as String,
  )
    ..slogan = json['slogan'] as String
    ..provider = json['provider'] == null
        ? null
        : Provider.fromJson(json['provider'] as Map<String, dynamic>)
    ..category = json['category'] as String
    ..author = json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>)
    ..thumbPlayUrl = json['thumbPlayUrl'] as String
    ..webUrl = json['webUrl'] == null
        ? null
        : WebUrl.fromJson(json['webUrl'] as Map<String, dynamic>)
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

Map<String, dynamic> _$UgcVideoBeanToJson(UgcVideoBean instance) =>
    <String, dynamic>{
      'slogan': instance.slogan,
      'provider': instance.provider,
      'category': instance.category,
      'author': instance.author,
      'thumbPlayUrl': instance.thumbPlayUrl,
      'webUrl': instance.webUrl,
      'playInfo': instance.playInfo,
      'campaign': instance.campaign,
      'waterMarks': instance.waterMarks,
      'ad': instance.ad,
      'adTrack': instance.adTrack,
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
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'library': instance.library,
      'tags': instance.tags,
      'consumption': instance.consumption,
      'resourceType': instance.resourceType,
      'uid': instance.uid,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'collected': instance.collected,
      'reallyCollected': instance.reallyCollected,
      'owner': instance.owner,
      'cover': instance.cover,
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
      'playUrl': instance.playUrl,
      //   'status': instance.status,
      'releaseTime': instance.releaseTime,
      'duration': instance.duration,
      'transId': instance.transId,
      'type': instance.type,
      'validateTaskId': instance.validateTaskId,
      'playUrlWatermark': instance.playUrlWatermark,
    };

FollowCard _$FollowCardFromJson(Map<String, dynamic> json) {
  return FollowCard(
    adTrack: (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    header: json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>),
    dataType: json['dataType'] as String,
    content: json['content'] == null
        ? null
        : Content.fromJson(json['content'] as Map<String, dynamic>),
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
    ..text = json['text'] as String
    ..font = json['font'] as String
    ..actionUrl = json['actionUrl'] as String
    ..itemList = (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..footer = json['footer'] as String
    ..image = json['image'] as String
    ..shade = json['shade'] as bool
    ..autoPlay = json['autoPlay'] as bool
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

Map<String, dynamic> _$FollowCardToJson(FollowCard instance) =>
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
      'text': instance.text,
      'font': instance.font,
      'actionUrl': instance.actionUrl,
      'itemList': instance.itemList,
      'count': instance.count,
      'footer': instance.footer,
      'image': instance.image,
      'shade': instance.shade,
      'autoPlay': instance.autoPlay,
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
      //    'status': instance.status,
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
      'header': instance.header,
      'content': instance.content,
      'adTrack': instance.adTrack,
    };

RecentOnceReply _$RecentOnceReplyFromJson(Map<String, dynamic> json) {
  return RecentOnceReply(
    dataType: json['dataType'] as String,
    actionUrl: json['actionUrl'] as String,
    message: json['message'] as String,
    contentType: json['contentType'] as String,
    nickname: json['nickname'] as String,
  );
}

Map<String, dynamic> _$RecentOnceReplyToJson(RecentOnceReply instance) =>
    <String, dynamic>{
      'dataType': instance.dataType,
      'message': instance.message,
      'nickname': instance.nickname,
      'actionUrl': instance.actionUrl,
      'contentType': instance.contentType,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return Owner(
    uid: json['uid'] as int,
    nickname: json['nickname'] as String,
    avatar: json['avatar'] as String,
    userType: json['userType'] as String,
    ifPgc: json['ifPgc'] as bool,
    description: json['description'] as String,
    area: json['area'] as String,
    gender: json['gender'] as String,
    registDate: json['registDate'] as int,
    releaseDate: json['releaseDate'] as int,
    cover: json['cover'] as String,
    actionUrl: json['actionUrl'] as String,
    followed: json['followed'] as bool,
    limitVideoOpen: json['limitVideoOpen'] as bool,
    library: json['library'] as String,
    birthday: json['birthday'] as int,
    country: json['country'] as String,
    city: json['city'] as String,
    university: json['university'] as String,
    job: json['job'] as String,
    expert: json['expert'] as bool,
  );
}

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'uid': instance.uid,
      'nickname': instance.nickname,
      'avatar': instance.avatar,
      'userType': instance.userType,
      'ifPgc': instance.ifPgc,
      'description': instance.description,
      'area': instance.area,
      'gender': instance.gender,
      'registDate': instance.registDate,
      'releaseDate': instance.releaseDate,
      'cover': instance.cover,
      'actionUrl': instance.actionUrl,
      'followed': instance.followed,
      'limitVideoOpen': instance.limitVideoOpen,
      'library': instance.library,
      'birthday': instance.birthday,
      'country': instance.country,
      'city': instance.city,
      'university': instance.university,
      'job': instance.job,
      'expert': instance.expert,
    };

CommunityContent _$CommunityContentFromJson(Map<String, dynamic> json) {
  return CommunityContent(
    actionUrl: json['actionUrl'] as String,
    dataType: json['dataType'] as String,
    bgPicture: json['bgPicture'] as String,
    title: json['title'] as String,
    subTitle: json['subTitle'] as String,
  )
    ..id = json['id'] as int
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
    ..weeklyDestination = json['weeklyDestination'] as String
    ..dailyDestination = json['dailyDestination'] as String
    ..recReason = json['recReason'] as String
    ..imageUrl = json['imageUrl'] as String
    ..topicId = json['topicId'] as int
    ..posterTitle = json['posterTitle'] as String
    ..follow = json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>)
    ..rightText = json['rightText'] as String
    ..url = json['url'] as String
    ..urls = (json['urls'] as List)?.map((e) => e as String)?.toList()
    ..urlsWithWatermark =
        (json['urlsWithWatermark'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$CommunityContentToJson(CommunityContent instance) =>
    <String, dynamic>{
      'id': instance.id,
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
      //    'status': instance.status,
      'transId': instance.transId,
      'validateTaskId': instance.validateTaskId,
      'playUrlWatermark': instance.playUrlWatermark,
      'weeklyDestination': instance.weeklyDestination,
      'dailyDestination': instance.dailyDestination,
      'recReason': instance.recReason,
      'imageUrl': instance.imageUrl,
      'topicId': instance.topicId,
      'posterTitle': instance.posterTitle,
      'follow': instance.follow,
      'rightText': instance.rightText,
      'url': instance.url,
      'urls': instance.urls,
      'urlsWithWatermark': instance.urlsWithWatermark,
      'dataType': instance.dataType,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'bgPicture': instance.bgPicture,
      'actionUrl': instance.actionUrl,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    alias: json['alias'] as String,
    bgColor: json['bgColor'] as String,
    bgPicture: json['bgPicture'] as String,
    defaultAuthorId: json['defaultAuthorId'] as int,
    headerImage: json['headerImage'] as String,
    tagId: json['tagId'] as int,
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bgColor': instance.bgColor,
      'description': instance.description,
      'bgPicture': instance.bgPicture,
      'alias': instance.alias,
      'headerImage': instance.headerImage,
      'defaultAuthorId': instance.defaultAuthorId,
      'tagId': instance.tagId,
    };

UgcPictureBean _$UgcPictureBeanFromJson(Map<String, dynamic> json) {
  try {
    return UgcPictureBean(
      title: json['title'] as String,
      cover: json['cover'] == null
          ? null
          : Cover.fromJson(json['cover'] as Map<String, dynamic>),
      validateStatus: json['validateStatus'] as String,
      validateResult: json['validateResult'] as String,
      updateTime: json['updateTime'] as int,
      uid: json['uid'] as int,
      selectedTime: json['selectedTime'] as int,
      recentOnceReply: json['recentOnceReply'] == null
          ? null
          : RecentOnceReply.fromJson(
              json['recentOnceReply'] as Map<String, dynamic>),
      privateMessageActionUrl: json['privateMessageActionUrl'] as String,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      ifMock: json['ifMock'] as bool,
      createTime: json['createTime'] as int,
      city: json['city'] as String,
      checkStatus: json['checkStatus'] as String,
      area: json['area'] as String,
      addWatermark: json['addWatermark'] as bool,
      dataType: json['dataType'] as String,
      description: json['description'] as String,
      height: json['height'] as int,
      width: json['width'] as int,
      id: json['id'] as int,
      url: json['url'] as String,
      collected: json['collected'] as bool,
      consumption: json['consumption'] == null
          ? null
          : Consumption.fromJson(json['consumption'] as Map<String, dynamic>),
      library: json['library'] as String,
      reallyCollected: json['reallyCollected'] as bool,
      releaseTime: json['releaseTime'] as int,
      resourceType: json['resourceType'] as String,
      tags: (json['tags'] as List)
          ?.map((e) =>
              e == null ? null : Tags.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      urls: (json['urls'] as List)?.map((e) => e as String)?.toList(),
      urlsWithWatermark: (json['urlsWithWatermark'] as List)
          ?.map((e) => e as String)
          ?.toList(),
    )
      ..slogan = json['slogan'] as String
      ..provider = json['provider'] == null
          ? null
          : Provider.fromJson(json['provider'] as Map<String, dynamic>)
      ..category = json['category'] as String
      ..author = json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>)
      ..playUrl = json['playUrl'] as String
      ..thumbPlayUrl = json['thumbPlayUrl'] as String
      ..duration = json['duration'] as int
      ..webUrl = json['webUrl'] == null
          ? null
          : WebUrl.fromJson(json['webUrl'] as Map<String, dynamic>)
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
      ..played = json['played'] as bool
      ..subtitles =
          (json['subtitles'] as List)?.map((e) => e as String)?.toList()
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
      ..longitude = (json['longitude'] as num)?.toDouble()
      ..latitude = (json['latitude'] as num)?.toDouble()
      //   ..status = json['status'] as String
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
      ..bgPicture = json['bgPicture'] as String;
  } catch (e) {
    debugPrint("==model_discover===UgcPictureBeanFromJson=====${e}");
  }
}

Map<String, dynamic> _$UgcPictureBeanToJson(UgcPictureBean instance) =>
    <String, dynamic>{
      'slogan': instance.slogan,
      'provider': instance.provider,
      'category': instance.category,
      'author': instance.author,
      'playUrl': instance.playUrl,
      'thumbPlayUrl': instance.thumbPlayUrl,
      'duration': instance.duration,
      'webUrl': instance.webUrl,
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
      'longitude': instance.longitude,
      'latitude': instance.latitude,
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
      'dataType': instance.dataType,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'library': instance.library,
      'tags': instance.tags,
      'consumption': instance.consumption,
      'resourceType': instance.resourceType,
      'uid': instance.uid,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'collected': instance.collected,
      'reallyCollected': instance.reallyCollected,
      'owner': instance.owner,
      'cover': instance.cover,
      'selectedTime': instance.selectedTime,
      'checkStatus': instance.checkStatus,
      'area': instance.area,
      'city': instance.city,
      'ifMock': instance.ifMock,
      'validateStatus': instance.validateStatus,
      'validateResult': instance.validateResult,
      'width': instance.width,
      'height': instance.height,
      'addWatermark': instance.addWatermark,
      'recentOnceReply': instance.recentOnceReply,
      'privateMessageActionUrl': instance.privateMessageActionUrl,
      'url': instance.url,
      'urls': instance.urls,
      'releaseTime': instance.releaseTime,
      'urlsWithWatermark': instance.urlsWithWatermark,
    };
