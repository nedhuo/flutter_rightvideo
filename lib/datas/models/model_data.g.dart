// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoBean _$VideoBeanFromJson(Map<String, dynamic> json) {
  try {
    return VideoBean(
      dataType: json['dataType'] as String,
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      library: json['library'] as String,
      tags: (json['tags'] as List)
          ?.map((e) =>
              e == null ? null : Tags.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      consumption: json['consumption'] == null
          ? null
          : Consumption.fromJson(json['consumption'] as Map<String, dynamic>),
      resourceType: json['resourceType'] as String,
      slogan: json['slogan'] as String,
      provider: json['provider'] == null
          ? null
          : Provider.fromJson(json['provider'] as Map<String, dynamic>),
      category: json['category'] as String,
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      cover: json['cover'] == null
          ? null
          : Cover.fromJson(json['cover'] as Map<String, dynamic>),
      playUrl: json['playUrl'] as String,
      thumbPlayUrl: json['thumbPlayUrl'] as String,
      duration: json['duration'] as int,
      webUrl: json['webUrl'] == null
          ? null
          : WebUrl.fromJson(json['webUrl'] as Map<String, dynamic>),
      releaseTime: json['releaseTime'] as int,
      playInfo: (json['playInfo'] as List)
          ?.map((e) =>
              e == null ? null : PlayInfo.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      campaign: json['campaign'] as String,
      waterMarks: json['waterMarks'] as String,
      ad: json['ad'] as bool,
      adTrack: (json['adTrack'] as List)
          ?.map((e) =>
              e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      type: json['type'] as String,
      titlePgc: json['titlePgc'] as String,
      descriptionPgc: json['descriptionPgc'] as String,
      remark: json['remark'] as String,
      ifLimitVideo: json['ifLimitVideo'] as bool,
      searchWeight: json['searchWeight'] as int,
      brandWebsiteInfo: json['brandWebsiteInfo'] as String,
  //    videoPosterBean: json['videoPosterBean'] as String,
      idx: json['idx'] as int,
      shareAdTrack: json['shareAdTrack'] as String,
      favoriteAdTrack: json['favoriteAdTrack'] as String,
      webAdTrack: json['webAdTrack'] as String,
      date: json['date'] as int,
      promotion: json['promotion'] as String,
      labelList: (json['labelList'] as List)
          ?.map((e) =>
              e == null ? null : LabelList.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      descriptionEditor: json['descriptionEditor'] as String,
      collected: json['collected'] as bool,
      reallyCollected: json['reallyCollected'] as bool,
      played: json['played'] as bool,
      subtitles: (json['subtitles'] as List)?.map((e) => e as String)?.toList(),
      lastViewTime: json['lastViewTime'] as String,
      playlists: json['playlists'] as String,
      src: json['src'] as String,
      recallSource: json['recallSource'] as String,
      recall_source: json['recall_source'] as String,
    )
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
      ..urlsWithWatermark = (json['urlsWithWatermark'] as List)
          ?.map((e) => e as String)
          ?.toList();
  } catch (e) {
    debugPrint("==model_data===VideoBeanFromJson===$e===");
    debugPrint("====${json['title']}=${json['shareAdTrack']}=="
        "=${json['favoriteAdTrack']}===${json['webAdTrack']}=="
        "=${json['playlists']}===${json['adTrack']}===");
    return null;
  }
}

Map<String, dynamic> _$VideoBeanToJson(VideoBean instance) => <String, dynamic>{
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
    };

ItemList _$ItemListFromJson(Map<String, dynamic> json) {
  Data data;
  switch (json['type'] as String) {
    case 'video':
      if (json['data']['dataType'] == 'VideoBeanForClient') {
        debugPrint("==modeldata===ItemListfromJson====VideoBeanForClient====");
        data = VideoBean.fromJson(json['data'] as Map<String, dynamic>);
        debugPrint("==modeldata===ItemListfromJson====UgcVideoBean====");
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
  return ItemList(
    type: json['type'] as String,
    data: json['data'] == null ? null : data,
    trackingData: json['trackingData'] as String,
    tag: json['tag'] as String,
    id: json['id'] as int,
    adIndex: json['adIndex'] as int,
  );
}

Map<String, dynamic> _$ItemListToJson(ItemList instance) => <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
      'trackingData': instance.trackingData,
      'tag': instance.tag,
      'id': instance.id,
      'adIndex': instance.adIndex,
    };

ItemCollection _$ItemCollectionFromJson(Map<String, dynamic> json) {
  return ItemCollection(
    dataType: json['dataType'] as String,
    header: json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>),
    itemList: (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    count: json['count'] as int,
    adTrack: (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    footer: json['footer'] as String,
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

Map<String, dynamic> _$ItemCollectionToJson(ItemCollection instance) =>
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
      'subTitle': instance.subTitle,
      'follow': instance.follow,
      'rightText': instance.rightText,
      'bgPicture': instance.bgPicture,
      'url': instance.url,
      'urls': instance.urls,
      'urlsWithWatermark': instance.urlsWithWatermark,
      'dataType': instance.dataType,
      'header': instance.header,
      'itemList': instance.itemList,
      'count': instance.count,
      'adTrack': instance.adTrack,
      'footer': instance.footer,
    };

TextHeader _$TextHeaderFromJson(Map<String, dynamic> json) {
  return TextHeader(
    dataType: json['dataType'] as String,
    text: json['text'] as String,
    font: json['font'] as String,
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

Map<String, dynamic> _$TextHeaderToJson(TextHeader instance) =>
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
      'text': instance.text,
      'font': instance.font,
      'adTrack': instance.adTrack,
    };

HorizontalScrollCard _$HorizontalScrollCardFromJson(Map<String, dynamic> json) {
  return HorizontalScrollCard(
    dataType: json['dataType'] as String,
    itemList: (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    count: json['count'] as int,
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
    ..actionUrl = json['actionUrl'] as String
    ..header = json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>)
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

Map<String, dynamic> _$HorizontalScrollCardToJson(
        HorizontalScrollCard instance) =>
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
      'actionUrl': instance.actionUrl,
      'header': instance.header,
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
      'subTitle': instance.subTitle,
      'follow': instance.follow,
      'rightText': instance.rightText,
      'bgPicture': instance.bgPicture,
      'url': instance.url,
      'urls': instance.urls,
      'urlsWithWatermark': instance.urlsWithWatermark,
      'dataType': instance.dataType,
      'itemList': instance.itemList,
      'count': instance.count,
    };

SquareCard _$SquareCardFromJson(Map<String, dynamic> json) {
  return SquareCard(
    dataType: json['dataType'] as String,
    id: json['id'] as int,
    title: json['title'] as String,
    image: json['image'] as String,
    actionUrl: json['actionUrl'] as String,
    adTrack: (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shade: json['shade'] as bool,
    description: json['description'] as String,
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

Map<String, dynamic> _$SquareCardToJson(SquareCard instance) =>
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
      'image': instance.image,
      'actionUrl': instance.actionUrl,
      'adTrack': instance.adTrack,
      'shade': instance.shade,
      'description': instance.description,
    };

Header _$HeaderFromJson(Map<String, dynamic> json) {
  return Header(
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
    iconList: json['iconList'] as List,
    description: json['description'] as String,
    follow: json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>),
    icon: json['icon'] as String,
    iconType: json['iconType'] as String,
    adTrack: (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uid: json['uid'] as int,
    ifShowNotificationIcon: json['ifShowNotificationIcon'] as bool,
    expert: json['expert'] as bool,
  )
    ..time = json['time'] as int
    ..showHateVideo = json['showHateVideo'] as bool
    ..followType = json['followType'] as String
    ..tagId = json['tagId'] as int
    ..tagName = json['tagName'] as String
    ..issuerName = json['issuerName'] as String
    ..topShow = json['topShow'] as bool;
}

Map<String, dynamic> _$HeaderToJson(Header instance) => <String, dynamic>{
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
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
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
    slogan: json['slogan'] as String,
    provider: json['provider'] == null
        ? null
        : Provider.fromJson(json['provider'] as Map<String, dynamic>),
    category: json['category'] as String,
    author: json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>),
    cover: json['cover'] == null
        ? null
        : Cover.fromJson(json['cover'] as Map<String, dynamic>),
    playUrl: json['playUrl'] as String,
    thumbPlayUrl: json['thumbPlayUrl'] as String,
    duration: json['duration'] as int,
    webUrl: json['webUrl'] == null
        ? null
        : WebUrl.fromJson(json['webUrl'] as Map<String, dynamic>),
    releaseTime: json['releaseTime'] as int,
    playInfo: (json['playInfo'] as List)
        ?.map((e) =>
            e == null ? null : PlayInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    campaign: json['campaign'] as String,
    waterMarks: json['waterMarks'] as String,
    ad: json['ad'] as bool,
    adTrack: (json['adTrack'] as List)
        ?.map((e) =>
            e == null ? null : AdTrack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    titlePgc: json['titlePgc'] as String,
    descriptionPgc: json['descriptionPgc'] as String,
    remark: json['remark'] as String,
    ifLimitVideo: json['ifLimitVideo'] as bool,
    searchWeight: json['searchWeight'] as int,
    brandWebsiteInfo: json['brandWebsiteInfo'] as String,
    videoPosterBean: json['videoPosterBean'] as String,
    idx: json['idx'] as int,
    shareAdTrack: json['shareAdTrack'] as String,
    favoriteAdTrack: json['favoriteAdTrack'] as String,
    webAdTrack: json['webAdTrack'] as String,
    date: json['date'] as int,
    promotion: json['promotion'] as String,
    labelList: (json['labelList'] as List)
        ?.map((e) =>
            e == null ? null : LabelList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    descriptionEditor: json['descriptionEditor'] as String,
    collected: json['collected'] as bool,
    reallyCollected: json['reallyCollected'] as bool,
    played: json['played'] as bool,
    subtitles: (json['subtitles'] as List)?.map((e) => e as String)?.toList(),
    lastViewTime: json['lastViewTime'] as String,
    playlists: json['playlists'] as String,
    src: json['src'] as String,
    recallSource: json['recallSource'] as String,
    recall_source: json['recall_source'] as String,
    text: json['text'] as String,
    font: json['font'] as String,
    actionUrl: json['actionUrl'] as String,
    header: json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>),
    itemList: (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    count: json['count'] as int,
    footer: json['footer'] as String,
    image: json['image'] as String,
    shade: json['shade'] as bool,
    autoPlay: json['autoPlay'] as bool,
    content: json['content'] == null
        ? null
        : Content.fromJson(json['content'] as Map<String, dynamic>),
    uid: json['uid'] as int,
    createTime: json['createTime'] as int,
    updateTime: json['updateTime'] as int,
    owner: json['owner'] == null
        ? null
        : Owner.fromJson(json['owner'] as Map<String, dynamic>),
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
    //   status: json['status'] as String,
    transId: json['transId'] as String,
    validateTaskId: json['validateTaskId'] as String,
    playUrlWatermark: json['playUrlWatermark'] as String,
    weeklyDestination: json['weeklyDestination'] as String,
    dailyDestination: json['dailyDestination'] as String,
    recReason: json['recReason'] as String,
    imageUrl: json['imageUrl'] as String,
    topicId: json['topicId'] as int,
    posterTitle: json['posterTitle'] as String,
    subTitle: json['subTitle'] as String,
    follow: json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>),
    rightText: json['rightText'] as String,
    bgPicture: json['bgPicture'] as String,
  )
    ..url = json['url'] as String
    ..urls = (json['urls'] as List)?.map((e) => e as String)?.toList()
    ..urlsWithWatermark =
        (json['urlsWithWatermark'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'dataType': instance.dataType,
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
      //     'status': instance.status,
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
    };

Follow _$FollowFromJson(Map<String, dynamic> json) {
  return Follow(
    itemType: json['itemType'] as String,
    itemId: json['itemId'] as int,
    followed: json['followed'] as bool,
  );
}

Map<String, dynamic> _$FollowToJson(Follow instance) => <String, dynamic>{
      'itemType': instance.itemType,
      'itemId': instance.itemId,
      'followed': instance.followed,
    };

LabelList _$LabelListFromJson(Map<String, dynamic> json) {
  return LabelList(
    text: json['text'] as String,
    actionUrl: json['actionUrl'] as String,
  );
}

Map<String, dynamic> _$LabelListToJson(LabelList instance) => <String, dynamic>{
      'text': instance.text,
      'actionUrl': instance.actionUrl,
    };

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return Tags(
    id: json['id'] as int,
    name: json['name'] as String,
    actionUrl: json['actionUrl'] as String,
    adTrack: json['adTrack'] as String,
    desc: json['desc'] as String,
    bgPicture: json['bgPicture'] as String,
    headerImage: json['headerImage'] as String,
    tagRecType: json['tagRecType'] as String,
    childTagList: json['childTagList'] as String,
    childTagIdList: json['childTagIdList'] as String,
    haveReward: json['haveReward'] as bool,
    ifNewest: json['ifNewest'] as bool,
    newestEndTime: json['newestEndTime'] as String,
    communityIndex: json['communityIndex'] as int,
  );
}

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'actionUrl': instance.actionUrl,
      'adTrack': instance.adTrack,
      'desc': instance.desc,
      'bgPicture': instance.bgPicture,
      'headerImage': instance.headerImage,
      'tagRecType': instance.tagRecType,
      'childTagList': instance.childTagList,
      'childTagIdList': instance.childTagIdList,
      'haveReward': instance.haveReward,
      'ifNewest': instance.ifNewest,
      'newestEndTime': instance.newestEndTime,
      'communityIndex': instance.communityIndex,
    };

Consumption _$ConsumptionFromJson(Map<String, dynamic> json) {
  return Consumption(
    collectionCount: json['collectionCount'] as int,
    shareCount: json['shareCount'] as int,
    replyCount: json['replyCount'] as int,
    realCollectionCount: json['realCollectionCount'] as int,
  );
}

Map<String, dynamic> _$ConsumptionToJson(Consumption instance) =>
    <String, dynamic>{
      'collectionCount': instance.collectionCount,
      'shareCount': instance.shareCount,
      'replyCount': instance.replyCount,
      'realCollectionCount': instance.realCollectionCount,
    };

Provider _$ProviderFromJson(Map<String, dynamic> json) {
  return Provider(
    name: json['name'] as String,
    alias: json['alias'] as String,
    icon: json['icon'] as String,
  );
}

Map<String, dynamic> _$ProviderToJson(Provider instance) => <String, dynamic>{
      'name': instance.name,
      'alias': instance.alias,
      'icon': instance.icon,
    };

Shield _$ShieldFromJson(Map<String, dynamic> json) {
  return Shield(
    itemType: json['itemType'] as String,
    itemId: json['itemId'] as int,
    shielded: json['shielded'] as bool,
  );
}

Map<String, dynamic> _$ShieldToJson(Shield instance) => <String, dynamic>{
      'itemType': instance.itemType,
      'itemId': instance.itemId,
      'shielded': instance.shielded,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return Author(
    id: json['id'] as int,
    icon: json['icon'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    link: json['link'] as String,
    latestReleaseTime: json['latestReleaseTime'] as int,
    videoNum: json['videoNum'] as int,
    adTrack: json['adTrack'] as String,
    follow: json['follow'] == null
        ? null
        : Follow.fromJson(json['follow'] as Map<String, dynamic>),
    shield: json['shield'] == null
        ? null
        : Shield.fromJson(json['shield'] as Map<String, dynamic>),
    approvedNotReadyVideoCount: json['approvedNotReadyVideoCount'] as int,
    ifPgc: json['ifPgc'] as bool,
    recSort: json['recSort'] as int,
    expert: json['expert'] as bool,
  );
}

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'link': instance.link,
      'latestReleaseTime': instance.latestReleaseTime,
      'videoNum': instance.videoNum,
      'adTrack': instance.adTrack,
      'follow': instance.follow,
      'shield': instance.shield,
      'approvedNotReadyVideoCount': instance.approvedNotReadyVideoCount,
      'ifPgc': instance.ifPgc,
      'recSort': instance.recSort,
      'expert': instance.expert,
    };

Cover _$CoverFromJson(Map<String, dynamic> json) {
  return Cover(
    feed: json['feed'] as String,
    detail: json['detail'] as String,
    blurred: json['blurred'] as String,
    sharing: json['sharing'] as String,
    homepage: json['homepage'] as String,
  );
}

Map<String, dynamic> _$CoverToJson(Cover instance) => <String, dynamic>{
      'feed': instance.feed,
      'detail': instance.detail,
      'blurred': instance.blurred,
      'sharing': instance.sharing,
      'homepage': instance.homepage,
    };

WebUrl _$WebUrlFromJson(Map<String, dynamic> json) {
  return WebUrl(
    raw: json['raw'] as String,
    forWeibo: json['forWeibo'] as String,
  );
}

Map<String, dynamic> _$WebUrlToJson(WebUrl instance) => <String, dynamic>{
      'raw': instance.raw,
      'forWeibo': instance.forWeibo,
    };

PlayInfo _$PlayInfoFromJson(Map<String, dynamic> json) {
  return PlayInfo(
    height: json['height'] as int,
    width: json['width'] as int,
    urlList: (json['urlList'] as List)
        ?.map((e) =>
            e == null ? null : UrlList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    type: json['type'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$PlayInfoToJson(PlayInfo instance) => <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'urlList': instance.urlList,
      'name': instance.name,
      'type': instance.type,
      'url': instance.url,
    };

UrlList _$UrlListFromJson(Map<String, dynamic> json) {
  return UrlList(
    name: json['name'] as String,
    url: json['url'] as String,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$UrlListToJson(UrlList instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'size': instance.size,
    };
