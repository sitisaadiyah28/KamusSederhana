import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_kamus/DeskripsiPage.dart';
import 'package:http/http.dart' as http;
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: KamusPage(),
));

class KamusPage extends StatefulWidget {
  @override
  _KamusPageState createState() => _KamusPageState();
}

class _KamusPageState extends State<KamusPage> {

  getData() async {
    final response =
    await http.get("http://192.168.43.159/kamus/getKamus.php");

    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Kamus Sederhana IT'),
        centerTitle: true,
      ),
      backgroundColor: Colors.pink[100],
      body: FutureBuilder(
        future: getData(),
        builder: (context,result){
          if(result.hasError) print(result.error);
          return result.hasData
              ? ListKamus(list: result.data)
              : Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class ListKamus extends StatelessWidget {
  final List list;
  ListKamus({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context,index){
        return new Container(
          child: new GestureDetector(
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>  DeskripsiPage(
                list: list, index: index
              )));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
              child: Container(
                height: MediaQuery.of(context).size.height/12,
                child: new Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 20),
                    child: Text('${list[index]['kata']}', style: TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}


