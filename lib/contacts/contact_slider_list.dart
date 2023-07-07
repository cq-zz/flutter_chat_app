import "package:flutter/material.dart";

import "./contact_vo.dart";

// 好友列表
class ContactSiderList extends StatefulWidget {
  // 好友列表项数据
  final List<ContactVO> items;
  // 好友列表头构造器
  final IndexedWidgetBuilder? headerBuilder;
  // 好友列表项构造器
  final IndexedWidgetBuilder itemBuilder;
  // 字母构造器
  final IndexedWidgetBuilder sectionBuilder;

  const ContactSiderList(
      {required this.items,
      this.headerBuilder,
      required this.itemBuilder,
      required this.sectionBuilder,
      super.key});

  @override
  State<ContactSiderList> createState() => _ContactSiderListState();
}

class _ContactSiderListState extends State<ContactSiderList> {
  // 列表滚动控制器
  final ScrollController _scrollController = ScrollController();

  bool _onNotification(ScrollNotification notification) {
    return true;
  }

  // 判断显示头部视图或空容器
  _isShowHeaderView(index) {
    if (index == 0 && widget.headerBuilder != null) {
      return Offstage(
        offstage: false,
        child: widget.headerBuilder!(context, index),
      );
    }
    return Container();
  }

  // 根据定位判断显示好友列表
  bool _shouldShowHeader(int position) {
    if (position == 0) {
      return false;
    }
    if (position != 0 &&
        (widget.items[position].seationKey !=
            widget.items[position - 1].seationKey)) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // 列表加载更多
          NotificationListener(
            onNotification: _onNotification,
            child: ListView.builder(
              // 滚动控制器
              controller: _scrollController,
              // 列表内的内容不足一层时，也可滑动
              physics: const AlwaysScrollableScrollPhysics(),
              // 列表长度
              itemCount: widget.items.length,
              // 列表构造器
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      // 展示列表头
                      _isShowHeaderView(index),
                      // 用Offstage组件控制是否显示英文字母
                      Offstage(
                        offstage: _shouldShowHeader(index),
                        child: widget.sectionBuilder(context, index),
                      ),
                      // 显示列表项
                      Column(
                        children: <Widget>[widget.itemBuilder(context, index)],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
