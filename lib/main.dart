import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_kamus/ModelKamus.dart';
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
  List<ModelKamus> _list = [];
  List<ModelKamus> _search = [];
  var loading = false;
  Future<Null> fetchData() async {
    setState(() {
      loading = true;
    });
    final response = await http.get("http://192.168.43.159/kamus/getKamus.php");
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        for (Map i in data) {
          _list.add(ModelKamus.fromJson(i));
          loading = false;
        }
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  TextEditingController controller = TextEditingController();
  onSearch(String text) async {
    _search.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }
    _list.forEach((f) {
      if (f.kata.contains(text) ||
          f.idKamus.toString().contains(text) ||
          f.deksripsi.contains(text)) {
        _search.add(f);
      }
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Container(
              child: Text(
            'Kamus Teknologi Informasi',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          centerTitle: true,
        ),
        /*backgroundColor: Colors.pink[100],*/
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.orange,
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.search),
                    title: TextField(
                      controller: controller,
                      onChanged: onSearch,
                      decoration: InputDecoration(
                          hintText: "Search", border: InputBorder.none),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        controller.clear();
                        onSearch('');
                      },
                      icon: Icon(Icons.cancel),
                    ),
                  ),
                ),
              ),
              loading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Expanded(
                      child: _search.length != 0 || controller.text.isNotEmpty
                          ? ListView.builder(
                              itemCount: _search.length,
                              itemBuilder: (context, index) {
                                final b = _search[index];
                                return new Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 5.0, top: 5.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              5,
                                      child: new Card(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        child: Stack(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15.0, left: 20),
                                              child: Text(
                                                b.kata,
                                                style: TextStyle(
                                                    fontSize: 28.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue[700]),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 50.0, left: 20),
                                              child: Text(
                                                b.deksripsi,
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )
                          : ListView.builder(
                              itemCount: _list.length,
                              itemBuilder: (context, index) {
                                final a = _list[index];
                                return new Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 5.0, top: 5.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              6,
                                      child: new Card(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        child: Stack(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0, left: 20),
                                              child: Text(
                                                a.kata,
                                                style: TextStyle(
                                                    fontSize: 28.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue[700]),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 50.0, left: 20),
                                              child: Text(
                                                a.deksripsi,
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                    ),
            ],
          ),
        ));
  }
}
