import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double _width = 100.0;
  double _height = 100.0;


  void inCreaseWidth(){
    setState(() {
      _width = _width >320 ? 100.0:_width+=50.0;
    });

  }
  void inCreaseHeightanswidth(){
    setState(() {
      _height = _height >220 ? 100.0:_height+=50.0;
      _width = _width >220 ? 100.0:_width+=50.0;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedContainer"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          AnimatedContainer(
            curve:  Curves.elasticInOut,
            duration: Duration(seconds: 2),
            height: _height,
            width: _width,
            color: Colors.amber,
            child: FlatButton(
              onPressed: ()=> inCreaseWidth(),
              child: Text("tap to increase  width $_width"),
            ),

          ),
          SizedBox(
            height: 20,
          ),

          AnimatedContainer(
            duration: Duration(seconds: 2),
            height: _height,
            width: _width,
            color: Colors.amber,
            child: FlatButton(
              onPressed: ()=> inCreaseHeightanswidth(),
              child: Text("tap to increase"),
            ),

          )

        ],
      ),
    );
  }
}
