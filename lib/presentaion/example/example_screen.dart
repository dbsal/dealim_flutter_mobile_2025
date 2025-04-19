import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ExampleScreen> {
  int _count = 0;

  void _handleIncreaseCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('FlutterDemo')),

      floatingActionButton: FloatingActionButton(
        onPressed:
            _handleIncreaseCount, //onPressed(){_handleIncreaseCount()}   ->  onPressed()=>_handleIncreaseCount() ->현재재
        child: Icon(Icons.add),
      ),

      body: SafeArea(
        child: SizedBox(
          width: double.infinity, //무한(에러날수있음)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('버튼 클릭 시 횟수 증가', style: TextStyle(fontSize: 34)),
              Text('$_count', style: TextStyle(fontSize: 40)),
            ],
          ),
        ),
      ),
    );
  }
}
