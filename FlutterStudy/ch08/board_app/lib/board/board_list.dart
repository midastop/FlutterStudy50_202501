import "package:flutter/material.dart";

class BoardListPage extends StatefulWidget {
  const BoardListPage({super.key});

  @override
  State<BoardListPage> createState() => _BoardListPageState();
}

class _BoardListPageState extends State<BoardListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("게시 글 리스트"),
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Card(
                  child: ListTile(
                    leading: Text("101"),
                    title: Text("게시 글 제목"),
                    subtitle: Text("작성자"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/board/read", arguments: 101);
                },
              );
            }
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, "/board/insert");
          },
          child: const Icon(Icons.create)
      ),
    );
  }
}
