import 'dart:io';

import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

/// 따로 User-Agent 값을 추가하지 않으면 기본값으로  `Dart/<version> (dart:io)` 가 들어감
/// (https://api.flutter.dev/flutter/dart-io/HttpClient/userAgent.html)
/// 네이버에 request를 할 경우, 이 값을 지우고 브라우저에서 사용하는 값으로 바꿔줌 (브라우저 값이 아니면 네이버에서 차단하는걸로 보임)
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..userAgent =
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36';
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();

  runApp(const App());
}

class App extends StatelessWidget {
  /// ID 같은 식별자 역할을 하는 key를 부모 클래스(StatelessWidget)에게 보냄
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
