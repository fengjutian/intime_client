import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'tabs/main_tab_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '生产级 Riverpod 底部 Tab',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainTabPage(),
    );
  }
}
