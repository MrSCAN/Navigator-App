import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String title;

  Page2({Key key, this.title});

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
