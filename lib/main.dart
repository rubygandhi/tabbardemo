import 'package:flutter/material.dart';
import 'chat.dart';
import 'calls.dart';
import 'Contacts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabbarDemo(
      ),
    );
  }
}
class TabbarDemo extends StatefulWidget {
  @override
  _TabbarDemoState createState() => _TabbarDemoState();
}

class _TabbarDemoState extends State<TabbarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text("Tabbar Demo"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Chat'),
              ),
              Tab(
                child: Text("Calls"),
              ),
              Tab(
                child: Text("Contacts"),
              ),
              Tab(
                child:Icon(Icons.camera_alt),
              )
            ],
          ),
        ),
        body: TabBarView(
          children:<Widget> [
            chat(),
            calls(),
            Contacts(),
            Container(
              child: Icon(Icons.camera_alt),
            ),
          ],

        ),
      ),
    );
  }
}

