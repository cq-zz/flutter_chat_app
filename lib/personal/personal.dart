import "package:flutter/material.dart";

import "../common/touch_callback.dart";
import "../common/im_item.dart";

// 我的模块
class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 列表
      body: ListView(
        children: <Widget>[
          // 头像部分实现
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: TouchCallBack(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // 添加头像
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset('images/header.jpeg',
                        width: 70.0, height: 70.0),
                  ),
                  // 用户及账号显示
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '旺仔仔',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff353535),
                          ),
                        ),
                        Text(
                          '账号 wangzz',
                          style: TextStyle(
                              fontSize: 14.0, color: Color(0xffa9a9a9)),
                        )
                      ],
                    ),
                  ),
                  // 二维码显示
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset('images/code.png',
                        width: 24.0, height: 24.0),
                  )
                ],
              ),
              onPressed: () {},
            ),
          ),
          // 列表项 使用ImItem渲染
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: const ImItem(
              title: '好友动态',
              imagesPath: 'images/icon_me_friends.png',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: const Column(
              children: <Widget>[
                ImItem(
                  imagesPath: 'images/icon_me_message.png',
                  title: '消息管理',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  imagesPath: 'images/icon_me_photo.png',
                  title: '我的相册',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  imagesPath: 'images/icon_me_file.png',
                  title: '我的文件',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  imagesPath: 'images/icon_me_service.png',
                  title: '联系客服',
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: const ImItem(
              imagesPath: 'images/icon_me_clear.png',
              title: '清理缓存',
            ),
          )
        ],
      ),
    );
  }
}
