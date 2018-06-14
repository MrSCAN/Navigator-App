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
        title: new Text('Inbox'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 0.0 : 0.0,
        backgroundColor: Colors.red[500],
        actions: <Widget>[
          new Icon(Icons.search),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("images/drawer1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
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
              leading: new Icon(Icons.store),
              title: new Text('All inboxes'),
              onTap: () => Navigator.of(context).pushNamed('/a'),
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.inbox),
              title: new Text('Inbox'),
              trailing: new Text("99+"),
              enabled: true,
            ),
            new Divider(),
            new Text('     All labels'),
            new ListTile(
              leading: new Icon(Icons.star),
              title: new Text('Starred'),
              trailing: new Text("7"),
              enabled: true,
            ),
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text('Snoozed'),
              trailing: new Text("1"),
              enabled: true,
            ),
            new ListTile(
              leading: new Icon(Icons.send),
              title: new Text('Sent'),
              trailing: new Text('2'),
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
      floatingActionButton: new FloatingActionButton(
        onPressed: () => {},
        child: new Icon(Icons.edit),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        child: new Center(
          child: new Text("Your Inbox is empty"),
        ),
      ),
    );
  }
}
