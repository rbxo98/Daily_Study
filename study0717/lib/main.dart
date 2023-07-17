import 'package:flutter/material.dart';
import 'package:study0717/words.dart';

// 검색 UI
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();
  List<ListTile> items = [];

  void setSearchResult(String query) {
    List<String> result = [];
    List<ListTile> resultItems = [];
    items=[];
    // 1000개의 각 단어들을 나타내는 지역 변수 word에 대해,
    // word가 query로 시작한다면 이를 result에 추가한다.
    for (String word in Words.words){
      if (word.startsWith(query))
        result.add(word);
    }

    // query로 필터링 된 각 단어들을 나타내는 지역 변수 word에 대해,
    // word를 title로 가지는 LiteTile 위젯을 resultItems에 추가한다.
    for (String word in result){
        resultItems.add(
          ListTile(
            title:Text(word)
          )
        );
    }

    // setState를 통해 items 변수의 상태 변경을 알린다.
    setState(() {
      items=resultItems;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          controller: _controller,
          onChanged: setSearchResult,
        ),
      ),
      body: ListView(
        children: items,
      ),
    );
  }
}
