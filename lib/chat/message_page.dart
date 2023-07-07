import "package:flutter/material.dart";

import "package:flutter_chat_app/chat/message_data.dart";
import "package:flutter_chat_app/chat/message_item.dart";

// 聊天主界面
class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // 构造列表
        body: ListView.builder(
      // 传入数据长度
      itemCount: messageData.length,
      // 构造列表项
      itemBuilder: (BuildContext context, int index) {
        // 传入messageData返回列表项
        return MessageItem(messageData[index]);
      },
    ));
  }
}
