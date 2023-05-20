import 'package:flutter/material.dart';
// Delete the package:webview_flutter/webview_flutter.dart import
import 'src/web_view_stack.dart';  // Add this import

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebViewApp(),
      theme:ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)
        ),
      )
     )
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('김해시 친환경 미래도시 모바일 관제'),
      ),
      body: const WebViewStack(),   // Replace the WebView widget with WebViewStack
    );
  }
}