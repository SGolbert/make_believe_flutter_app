import 'package:flutter/material.dart';
import 'package:make_believe_flutter_app/chat.dart';

void main() {
  runApp(MakeBelieveApp());
}

class MakeBelieveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Make Believe',
      // TODO: Instead of pointing to exactly 1 Category widget,
      // our home should now point to an instance of the CategoryRoute widget.
      home: TextAudioChat(),
    );
  }
}
