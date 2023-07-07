import "package:flutter/material.dart";
import "package:date_format/date_format.dart";

import "package:flutter_chat_app/chat/message_data.dart";
import "package:flutter_chat_app/common/touch_callback.dart";

// 消息项
class MessageItem extends StatelessWidget {
  const MessageItem(this.message, {super.key});

  final MessageData message;

  @override
  Widget build(BuildContext context) {
    // 最外层容器
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          // 加一个底部边，这样每条信息的下面都会有一条边
          border:
              Border(bottom: BorderSide(width: 0.5, color: Color(0xffd9d9d9)))),
      height: 64.0,
      // 按下回调处理
      child: TouchCallBack(
        onPressed: () {},
        // 整体水平方向布局
        child: Row(
          // 垂直方向居中显示
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // 展示头像
            Container(
              // 头像左右留一定边距
              margin: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Image.network(
                message.avatar,
                width: 48.0,
                height: 48.0,
              ),
            ),
            Expanded(
                // 主标题与子标题采用垂直布局
                child: Column(
              // 垂直方向居中
              mainAxisAlignment: MainAxisAlignment.center,
              // 水平方向靠左
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  message.title,
                  style:
                      const TextStyle(fontSize: 16.0, color: Color(0xff353535)),
                  maxLines: 1,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                ),
                Text(
                  message.subTitle,
                  style:
                      const TextStyle(fontSize: 14.0, color: Color(0xff9a9a9a)),
                  // 显示不完的文本用省略号
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )),
            Container(
              // 时间顶部对齐
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(right: 12.0, top: 12.0),
              child: Text(
                //格式化时间
                formatDate(message.time, [HH, ':', nn, ':', ss]).toString(),
                style:
                    const TextStyle(fontSize: 16.0, color: Color(0xffa9a9a9)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
