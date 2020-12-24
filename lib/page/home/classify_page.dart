import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ClassifyPage extends StatefulWidget {
  Color backgroundColor;
  Color selectedColor;
  Color unSelectedColor;

  @override
  State<StatefulWidget> createState() {
    return _ClassifyPageState();
  }
}

class _ClassifyPageState extends State<ClassifyPage> {
  List<String> _locationList;

  List<String> _dateList;

  List<String> _typeList;

  int _typeIndex = 0;

  int _locationIndex = 0;

  int _dateIndex = 0;

  ScrollController _typeController;

  ScrollController _dateController;

  ScrollController _locationController;

  @override
  void initState() {
    super.initState();

    _initView();
    _typeController = ScrollController();
    _locationController = ScrollController();
    _dateController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    Fluttertoast.showToast(
        msg: "ClassifyPage ${_typeList[_typeIndex]},"
            "${_locationList[_locationIndex]},"
            "${_dateList[_dateIndex]}");

    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: _typeController,
              itemCount: _typeList.length,
              itemBuilder: (context, index) {
                bool isSelected = false;
                if (index == _typeIndex) {
                  isSelected = true;
                }
                return InkWell(
                  child: MenuItem(_typeList[index], isSelected),
                  onTap: () {
                    _typeIndex = index;
                    if (mounted) {
                      setState(() {});
                    }
                  },
                );
              },
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: _locationController,
              itemCount: _locationList.length,
              itemBuilder: (context, index) {
                bool isSelected = false;
                if (index == _locationIndex) {
                  isSelected = true;
                }
                return InkWell(
                  child: MenuItem(_locationList[index], isSelected),
                  onTap: () {
                    _locationIndex = index;
                    if (mounted) {
                      setState(() {});
                    }
                  },
                );
              },
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: _dateController,
              itemCount: _dateList.length,
              itemBuilder: (context, index) {
                bool isSelected = false;
                if (index == _dateIndex) {
                  isSelected = true;
                }
                return InkWell(
                  child: MenuItem(_dateList[index], isSelected),
                  onTap: () {
                    _dateIndex = index;
                    if (mounted) {
                      setState(() {});
                    }
                  },
                );
              },
            ),
          ),

          ///视频列表
        ],
      ),
    );
  }

  @override
  void dispose() {
    _typeController?.dispose();
    _locationController?.dispose();
    _dateController?.dispose();
    super.dispose();
  }

  void _initView() {
    _typeList = [
      "全部类型",
      "动作",
      "搞笑",
      "恋爱",
      "科幻",
      "推理",
      "经典",
      "恋爱",
      "科幻",
      "推理",
      "经典",
      "其他"
    ];
    _dateList = [
      "全部时间",
      "2020",
      "2019",
      "2018",
      "2017",
      "2016",
      "2015",
      "2014",
      "2013",
      "2011",
      "2010",
      "其他"
    ];

    _locationList = [
      "全部地区",
      "中国大陆",
      "港澳台",
      "欧美",
      "日韩",
      "泰国",
      "老挝",
      "柬埔寨",
      "其他"
    ];
  }
}

// ignore: must_be_immutable
class MenuItem extends StatelessWidget {
  String title;
  bool isSelected;

  MenuItem(this.title, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        color: isSelected ? Colors.blue : Colors.white,
        margin: EdgeInsets.only(left: 5, right: 5),
        padding: EdgeInsets.all(5),
        child: Text(title),
      ),
    );
  }
}
