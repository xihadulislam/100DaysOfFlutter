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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Day 3"),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Text(
                  "Table",
                  style: TextStyle(fontSize: 33),
                ),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {0: FractionColumnWidth(.4)},
                  children: [
                    TableRow(children: [
                      Container(
                        height: 100,
                        color: Colors.amber,
                      ),
                      Container(
                        height: 100,
                        color: Colors.blueAccent,
                      ),
                      Container(
                        height: 100,
                        color: Colors.deepPurple,
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        height: 100,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        height: 100,
                        color: Colors.redAccent,
                      ),
                      Container(
                        height: 100,
                        color: Colors.yellowAccent,
                      ),
                    ]),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
