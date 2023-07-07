// 好友vo类
class ContactVO {
  // 字母排列值
  String seationKey;
  // 名称
  String name;
  // 头像
  String avatarUrl;

  ContactVO(
      {required this.seationKey, required this.name, required this.avatarUrl});
}

List<ContactVO> contactData = [
  ContactVO(
    seationKey: 'A',
    name: '啊哦',
    avatarUrl:
        'https://img1.baidu.com/it/u=3312978443,2212357745&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
  ),
  ContactVO(
    seationKey: 'A',
    name: '阿黄',
    avatarUrl:
        'https://img2.baidu.com/it/u=392444393,3857667382&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=507',
  ),
  ContactVO(
    seationKey: 'D',
    name: '哆啦A梦',
    avatarUrl:
        'https://img1.baidu.com/it/u=3762998275,2618077829&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
  ),
  ContactVO(
    seationKey: 'X',
    name: '小旺仔仔',
    avatarUrl:
        'https://img0.baidu.com/it/u=1692173979,3104490459&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
  ),
];
