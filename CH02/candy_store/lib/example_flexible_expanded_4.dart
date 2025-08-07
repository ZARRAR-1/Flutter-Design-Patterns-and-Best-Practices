import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //So we can wrap the Row with SingleChildScroll view and set the Scroll Direction to Horizontal
        body: Row(
          children: [
            const Text('First text'),
            Container(
              color: Colors.red,
              width: 1000000,
              height: 100,
            ),
            const Text('Second text')
          ],
        ),
      ),
    ),
  );
}
