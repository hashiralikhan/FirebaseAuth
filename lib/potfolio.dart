import 'package:flutter/material.dart';

class Potfolio extends StatefulWidget {
  const Potfolio({super.key});

  @override
  State<Potfolio> createState() => _PotfolioState();
}

class _PotfolioState extends State<Potfolio> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("profile page")),
    );
  }
}