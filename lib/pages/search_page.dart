import 'package:flutter/material.dart';

class Searching extends StatefulWidget {
  Searching({Key? key}) : super(key: key);

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search A City'),
      ),
    );
  }
}
