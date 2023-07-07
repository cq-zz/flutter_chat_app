import "package:flutter/material.dart";

import "./chat/message_page.dart";
import "./contacts/contacts.dart";
import "./personal/personal.dart";

// 主页面
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // 当前选中页
  var _currentIndex = 0;

  // 聊天界面
  MessagePage? message;

  // 好友界面
  Contacts? contacts;

  // 我的界面
  Personal? me;

  // 根据当前索引返回不同页面
  currentPage() {
    switch (_currentIndex) {
      case 0:
        message ??= const MessagePage();
        return message;
      case 1:
        contacts ??= const Contacts();
        return contacts;
      case 2:
        me ??= const Personal();
        return me;
    }
  }

  // 渲染某个菜单，传入菜单标题，图片路径或图标
  _popupMenuItem(String title, String imagePath) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          // 判断是使用图片路径还是图标
          Image.asset(imagePath, width: 32.0, height: 32.0),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('即时通讯'),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              // 跳转到搜索页
              Navigator.pushNamed(context, "/search");
            },
            child: const Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                // 弹出菜单
                showMenu(
                    context: context,
                    position:
                        const RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                    items: <PopupMenuEntry>[
                      _popupMenuItem('发起会话', "images/icon_me_message.png"),
                      _popupMenuItem('添加好友', "images/icon_addfriend.png"),
                      _popupMenuItem('联系客服', "images/icon_me_service.png"),
                    ]);
              },
              child: const Icon(Icons.add),
            ),
          )
        ],
      ),
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.purple,
          selectedIconTheme:
              const IconThemeData(color: Colors.purple, opacity: 0.1),
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
            });
          }),
          items: [
            BottomNavigationBarItem(
                label: "聊天",
                icon: Image.asset("images/message.png",
                    width: 32.0, height: 28.0)),
            BottomNavigationBarItem(
                label: "好友",
                icon: Image.asset("images/contacts.png",
                    width: 32.0, height: 28.0)),
            BottomNavigationBarItem(
                label: "我的",
                icon: Image.asset("images/profile.png",
                    width: 32.0, height: 28.0)),
          ]),
      // 中间显示当前页面
      body: currentPage(),
    );
  }
}
