import 'package:flutter/material.dart';
import 'package:valentine_choco_app/result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'はっぴーばれんたいん',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const RoulettePage(),
    );
  }
}

class RoulettePage extends StatefulWidget {
  const RoulettePage({Key? key}) : super(key: key);

  @override
  State<RoulettePage> createState() => _RoulettePageState();
}

class _RoulettePageState extends State<RoulettePage>  {

  @override
  Widget build(BuildContext context) {

    var _pages = [
      Text("1！",),//0
      Text("2！",),//1
      Text("3！",),//2
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Happy Valentine!'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultPage(0),
                      )
                  );
                } ,
                child: _pages[0]
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultPage(1),
                      )
                  );
                } ,
                child: _pages[1]
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultPage(2),
                      )
                  );
                } ,
                child: _pages[2]
              ),
            ],
          ),
        ),
      ),
    );
  }
}