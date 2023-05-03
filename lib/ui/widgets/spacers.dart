import 'package:flutter/material.dart';

class VtSpace extends StatelessWidget {
  final double size;

  const VtSpace(this.size, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(height: size);
}

class HzSpace extends StatelessWidget {
  final double size;

  const HzSpace(this.size, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(width: size);
}