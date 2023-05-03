import 'package:flutter/material.dart';

class StyledAppBar extends StatefulWidget {
  const StyledAppBar({super.key});

  @override
  State<StyledAppBar> createState() => _StyledAppBarState();
}

class _StyledAppBarState extends State<StyledAppBar> {
  late EdgeInsets _padding;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _padding = MediaQuery.of(context).viewPadding;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50 + _padding.top,
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.6)),
      padding: EdgeInsets.fromLTRB(20, _padding.top, 10, 0),
      child: const Center(
        child: Text('Chat GPT', style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
