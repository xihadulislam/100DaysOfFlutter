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
      home: MyHomePage(title: 'Day 4, 5 6'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: getData(),
          builder:(ctx,snapshort){

          if(!snapshort.hasData){
         return   Center(child: CircularProgressIndicator());
          }else {
            return ListView.builder(
                itemCount: 1,
                itemBuilder: (ctx,data)=> Item()
            );
          }
          }
          )
    );
  }

  List<int> list ;

  Future< List<int>> getData() async{

   await  Future.delayed(
        Duration(seconds: 2));

   list = [1,2,3,4,5,6,7,78,8,8678,8,678,67,8,678,67,867,867,867,8,678,];
    return list;
  }

}



class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (ctx)=> DetailsPage()));
      },
      leading: CircleAvatar(
        child: Hero(
            tag: "h",
            child: Icon(Icons.home)),
      ),
      title: Text("This is Title",style: TextStyle(fontSize: 16)),
      subtitle: Text("this is subTitle"),
    );
  }
}



class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            child: Hero(
                tag: "h",
                child: Icon(Icons.home,color: Colors.white,size: 54,)),

          ),
        ),
      ),
    );
  }
}

