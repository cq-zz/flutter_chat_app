import "package:flutter/material.dart";
import "dart:async";

// 加载页面
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    // 在加载页面停留3s
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          // 加载页面居中背景图
          Image.asset("images/loading.jpeg", fit: BoxFit.cover)
        ],
      ),
    );
  }
}
