import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget{

  final int curretIndex;
  const ResultPage(this.curretIndex,{Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var _pages = [
      Container(
        color: Colors.blue,
        child: const Center(child: Text("1！",)),
      ),
      Container(
        color: Colors.green,
        child: const Center(child: Text("2！",)),
      ),
      Container(
        color: Colors.pink,
        child: const Center(child: Text("3！",)),
      ),
    ];

    PageController _controller = PageController(initialPage: curretIndex);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Happy Valentine!'),
      ),
      body: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: PageView(
              controller: _controller,
              children: [
                for (var i = 0; i < 3; i++)
                  _pages[i]
              ],
            ),
          ),
        ),
      ),
    );
  }
}