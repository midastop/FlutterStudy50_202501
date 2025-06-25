import "package:flutter/material.dart";

// 초기화 게시글 상세 페이지
class BoardDetailPage extends StatefulWidget {
  const BoardDetailPage({super.key});

  @override
  State<BoardDetailPage> createState() => _BoardDetailPageState();
}

class _BoardDetailPageState extends State<BoardDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("게시글 상세보기"),
        ),
        body: Center(
          child: Text("BoardDetailPage"),
        )
    );
  }
}
