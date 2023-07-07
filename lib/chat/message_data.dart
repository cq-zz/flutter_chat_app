// 消息类型枚举
enum MessageType { SYSTE, PUBLIC, CHAT, GROUP }

// 聊天数据
class MessageData {
  // 头像
  String avatar;
  // 主标题
  String title;
  // 子标题
  String subTitle;
  // 消息时间
  DateTime time;
  // 消息类型
  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

List<MessageData> messageData = [
  MessageData(
      'https://img0.baidu.com/it/u=1692173979,3104490459&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
      '小旺仔仔',
      '喝旺仔牛奶',
      DateTime.now(),
      MessageType.CHAT),
  MessageData(
      'https://img1.baidu.com/it/u=3762998275,2618077829&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
      '哆啦A梦',
      '大熊和静香',
      DateTime.now(),
      MessageType.CHAT),
];
