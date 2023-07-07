import "package:flutter/material.dart";
import "package:flutter_webview_plugin/flutter_webview_plugin.dart";

import "../app.dart";
import "../search.dart";

// 路由
final routes = <String, WidgetBuilder>{
  "app": (BuildContext context) => const App(),
  "/flutter": (_) => WebviewScaffold(
        url: "https://flutter.io",
        appBar: AppBar(
          title: const Text("flutter官网"),
        ),
        withZoom: true,
        withLocalStorage: true,
      ),
  "/search": (BuildContext context) => const Search(),
};
