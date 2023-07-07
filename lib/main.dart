import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_chat_app/loading.dart";

import "./routes/index.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    //强制竖屏
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

// 自定义主题
final ThemeData mDefaultTheme = ThemeData(
    primaryColor: Colors.purple,
    scaffoldBackgroundColor: const Color(0xFFebebeb),
    cardColor: Colors.purple);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '聊天室',
      theme: mDefaultTheme,
      routes: routes,
      home: const Loading(),
    );
  }
}
