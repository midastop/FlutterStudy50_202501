import 'package:flutter/material.dart';
import "board/main_page.dart";
import "board/board_list.dart";
import "board/board_detail.dart";
import "board/board_write.dart";
import "board/board_update.dart";
import "board/board_delete.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Board App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/main",
      routes: {
        "/main": (context) => MainPage(),
        "/board/list": (context) => BoardListPage(),
        "/board/detail": (context) => BoardDetailPage(),
        "/board/write": (context) => BoardWritePage(),
        "/board/update": (context) => BoardUpdatePage(),
        "/board/delete": (context) => BoardDeletePage(),
      }
    );
  }
}
