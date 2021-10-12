import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/datas/models/model_data.dart';


class DisCoverItem extends StatelessWidget {
  ItemList hotData;

  DisCoverItem(this.hotData);

  @override
  Widget build(BuildContext context) {
    switch (hotData.type) {
      case "horizontalScrollCard":
        //BannerView
//        return bannerWidget(hotData.data);
        return Container();
          //BannerWidget(hotData.data.itemList);
        break;
      case "textHeader":
        return Container();
        break;
      case "video":
        return Container();
        break;
      case "squareCardCollection":
        return Container();
        break;
      default:
        return Container();
        break;
    }
  }
}
