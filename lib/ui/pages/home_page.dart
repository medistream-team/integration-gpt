import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () { debugPrint('새 채팅'); },
        tooltip: '새 채팅',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: const Text('인티그레이션 지피티'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Text('GPT'),
        ),
      ),
    );
  }
}
