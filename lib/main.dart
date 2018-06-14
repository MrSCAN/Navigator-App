import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigationanddrawerapp/new_page.dart';
import 'package:navigationanddrawerapp/page_two.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.green,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS
              ? Colors.grey[50]
              : null,
        ),
        home: new MyHomePage(title: 'Flutter Demo Home Page'),
        routes: <String, WidgetBuilder>{
          "/a": (BuildContext context) => new NewPage(title: "Status"),
        });
  }
}

class MyHomePage extends StatefulWidget {
  var title;

  MyHomePage({Key key, this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Drawer App'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 0.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Chinonso Ngwu'),
              accountEmail: new Text('cngwu@seamfix.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.teal,
                child: new Text(
                  'C',
                  style: new TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  child: new Text('N'),
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
            new ListTile(
              title: new Text('View Status'),
              trailing: new Icon(Icons.navigate_next),
              onTap: () => Navigator.of(context).pushNamed('/a'),
            ),
            new ListTile(
              title: new Text('Settings'),
              trailing: new Icon(Icons.settings),
            ),
            new Divider(
              height: 30.0,
              color: Colors.green,
            ),
            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(
                Icons.close,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text('page 2'),
              trailing: new Icon(
                Icons.navigate_next,
                color: Colors.black54,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new Page2(title: "Page Two")));
              },
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
