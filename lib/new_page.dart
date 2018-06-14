import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String title;

  NewPage({Key key, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Container(
        child: new Center(
          child: new Text('Page Two'),
        ),
      ),
    );
  }
}
