import "package:flutter/material.dart";
import "package:board_app/models/board_model.dart";
import "package:async/async.dart";
import "package:http/http.dart" as http;
import "dart:convert";

// 2. 더미 데이터로 게시 글 리스트 UI 구성하기
// 상세페이지 링크, FloatingActionButton 추가
class BoardListPage extends StatefulWidget {
  const BoardListPage({super.key});

  @override
  State<BoardListPage> createState() => _BoardListPageState();
}

class _BoardListPageState extends State<BoardListPage> {

  Map<String, Object> _resMap = {};
  
  // SpringBootRestAPI에 게시글 리스트를 요청하는 함수
  Future<Map<String, dynamic>> getBoardList() async {
    // 게시글을 읽어올 서버 URL
    Uri url = Uri.parse("http://192.168.0.16:8080/boards/");

    // 게시글 리스트를 GET 방식으로 요청하고 결과 데이터를 응답으로 받는다.
    final response = await http.get(url);

    // response.body : 응답 데이터를 json 데이터로 읽어옴
    print("##### response.body #####");
    print(response.body);

    // json 데이터를 Dart의 자료구조(객체)로 변환
    var resMap = jsonDecode(response.body);
    print("pageCount : ${resMap['pageCount']}, startPage : ${resMap['startPage']}");
    var mapList = resMap["bList"];//['bList'];
    var pageCount = resMap['pageCount'];
    print("pageCount :::: $pageCount");

    List<Board> bList = [];

    for(Map<String, dynamic> board in mapList) {
      //print("board : $board");
      Board b = Board.fromJson(board);
      print("b : ${b.regDate}");
      bList.add(b);
    }
    print(bList);
    return resMap;
  }

  @override
  void initState() {
    super.initState();
    print("###initState");
    getBoardList().then((resMap) {
      //print("##### resMap #####");
      //print(resMap);
    }, onError: (e) {
      print("error : $e");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("게시글 리스트")),
      body: Container(
        //padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                child: ListTile(
                  leading: Text("10"),
                  title: Text("제목 : Flutter 게시판 만들기"),
                  subtitle: Text("작성자 : 홍길동"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/board/detail", arguments: 101);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/board/write");
        },
        child: const Icon(Icons.create),
      ),
    );
  }
}
