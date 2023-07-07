import "package:flutter/material.dart";

// 触摸回调组件封装
class TouchCallBack extends StatefulWidget {
  // 子组件
  final Widget child;
  // 回调函数
  final VoidCallback onPressed;
  final bool isfeed;
  // 背景色
  final Color background;
  // 传入参数列表
  const TouchCallBack(
      {required this.child,
      required this.onPressed,
      this.isfeed = true,
      this.background = const Color(0xffd8d8d8),
      super.key});

  @override
  State<TouchCallBack> createState() => _TouchCallBackState();
}

class _TouchCallBackState extends State<TouchCallBack> {
  Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    // 返回GestureDetector
    return GestureDetector(
      // 使用Container容器包裹
      onTap: widget.onPressed,
      onPanDown: (d) {
        if (widget.isfeed == false) return;
        setState(() {
          color = widget.background;
        });
      },
      onPanCancel: () {
        setState(() {
          color = Colors.transparent;
        });
      },
      // 使用Container容器包裹
      child: Container(
        color: color,
        child: widget.child,
      ),
    );
  }
}
