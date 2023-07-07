import "package:flutter/material.dart";

import './contact_vo.dart';

// 好友列表项
class ContactItem extends StatelessWidget {
  // 好友数据
  final ContactVO? item;
  // 标题名
  final String? titleName;
  // 图片路径
  final String? imageName;

  const ContactItem({this.item, this.titleName, this.imageName, super.key});

  // 渲染构建好友列表
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        // 每条列表项底部加一个边框
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0xffd9d9d9)),
        ),
      ),
      height: 52.0,
      child: MaterialButton(
        onPressed: () {},
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // 展示头像或者图片
              imageName == null
                  ? Image.network(
                      item?.avatarUrl != ''
                          ? item!.avatarUrl
                          : 'https://img1.baidu.com/it/u=1388260926,2383571603&fm=253&fmt=auto&app=138&f=JPEG?w=300&h=300',
                      height: 36.0,
                      width: 36.0,
                      scale: 0.9)
                  : Image.asset(imageName!, width: 36.0, height: 36.0),
              // 展示名称或标题
              Container(
                margin: const EdgeInsets.only(left: 12.0),
                child: Text(
                  titleName == null ? item?.name ?? '展示' : titleName!,
                  style:
                      const TextStyle(fontSize: 18.0, color: Color(0xff353535)),
                  maxLines: 1,
                ),
              )
            ]),
      ),
    );
  }
}
