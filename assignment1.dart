import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom AppBar Example',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press
          },
        ),
        title: Text('Custom AppBar'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search button press
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options button press
            },
          ),
        ],
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.photo_camera,
            size: 75.0,
            color: Colors.white70,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.lightGreen.shade100,
            height: 75.0,
            width: double.infinity,
            child: Center(
              child: Text('Bottom'),
            ),
          ),
          preferredSize: Size.fromHeight(75.0),
        ),
      ),
      body: Center(
        child: Text('Hello, Flutter World!'),
      ),
    );
  }
}