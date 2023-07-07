import "package:flutter/material.dart";

import './contact_item.dart';

// 好友列表头部
class ContactHeader extends StatelessWidget {
  const ContactHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        ContactItem(titleName: '新加好友', imageName: 'images/icon_public.png'),
        ContactItem(titleName: '公共聊天室', imageName: 'images/icon_groupchat.png'),
      ],
    );
  }
}
