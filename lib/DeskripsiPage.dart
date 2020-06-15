import 'package:flutter/material.dart';



class DeskripsiPage extends StatefulWidget {
  List list;
  int index;

  DeskripsiPage({this.list, this.index});

  @override
  _DeskripsiPageState createState() => _DeskripsiPageState();
}

class _DeskripsiPageState extends State<DeskripsiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("${widget.list[widget.index]['kata']}"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30),
            child: Text("${widget.list[widget.index]['kata']}", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24.0
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
            child: Container(
              height: MediaQuery.of(context).size.height/120,
              color: Colors.pink[300],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30),
            child: Text("${widget.list[widget.index]['deksripsi']}", style: TextStyle(
                fontSize: 18.0
            ),),
          ),
        ],
      ),
    );
  }
}
