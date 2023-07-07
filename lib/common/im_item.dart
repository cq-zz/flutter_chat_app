import "package:flutter/material.dart";

import "./touch_callback.dart";

// 通用列表项
class ImItem extends StatelessWidget {
  // 标题
  final String title;
  // 图片路径
  final String imagesPath;
  // 图标
  final Icon? icon;

  const ImItem(
      {required this.title,
      required this.imagesPath,
      this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TouchCallBack(
      // 判断点击的项
      onPressed: () {
        switch (title) {
          case '好友动态':
            // 路由到好友动态页面
            Navigator.pushNamed(context, '/friends');
            break;
          case '联系客服':
            break;
        }
      },
      // 展示部分
      child: SizedBox(
        height: 50.0,
        child: Row(
          children: <Widget>[
            // 图标或图片
            Container(
              margin: const EdgeInsets.only(left: 22.0, right: 20.0),
              child: imagesPath != null
                  ? Image.asset(imagesPath, width: 32.0, height: 32.0)
                  : SizedBox(
                      height: 32.0,
                      width: 32.0,
                      child: icon,
                    ),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16.0, color: Color(0xff353535)),
            ),
          ],
        ),
      ),
    );
  }
}
