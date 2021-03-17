import 'package:flutter/material.dart';

class TextAudioChat extends StatefulWidget {
  TextAudioChat({Key key}) : super(key: key);

  @override
  _TextAudioChatState createState() => _TextAudioChatState();
}

class _TextAudioChatState extends State<TextAudioChat> {
  final _textCtrl = TextEditingController();
  List<String> _messages = [];

  _onSubmit(String input) {
    setState(() {
      _messages.add(input);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.green[100],
        child: Row(
          children: [
            Container(
              width: 300,
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: _textCtrl,
                onFieldSubmitted: _onSubmit,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your message...',
                  // labelText: 'Enter a search term',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => _onSubmit(_textCtrl.text),
              child: Text('Submit'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Make Believe',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(border: Border()),
        padding: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: _messages.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return new Text(
                _messages[index],
                style: TextStyle(
                  fontSize: 20,
                ),
              );
            }),
      ),
    );
  }
}
