import 'package:extra_alignments/extra_alignments.dart';
import 'package:flutter/material.dart';
import 'package:integration_gpt/ui/widgets/spacers.dart';

import 'package:integration_gpt/ui/widgets/styled_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawerEnableOpenDragGesture: false,
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: ListView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top) + const EdgeInsets.all(10),
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.add, size: 20),
                  HzSpace(10),
                  Text('New Chat', style: TextStyle(fontWeight: FontWeight.normal)),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        top: false,
        child: Stack(
          children: const [
            TopCenter(
              child: StyledAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
