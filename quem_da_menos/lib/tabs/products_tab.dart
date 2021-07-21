import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class ProductsTab extends StatefulWidget {

  @override
  _ProductsTabState createState() => _ProductsTabState();
}

class _ProductsTabState extends State<ProductsTab> {

  final _productController = TextEditingController();
  List _productList = [];

  late Map<String, dynamic> _lastRemoved;
  late int _lastRemovedIndex;


  @override
  void initState() {
    _readData().then((data) {
      _productList = json.decode(data!);
      setState((){
        _productList = json.decode(data);
      });
    });
  }

  void addProduct(){
    setState((){
      Map<String, dynamic> product = Map();
      product["title"] = _productController.text;
      _productController.text = "";
      product["ok"] = false;
      _productList.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(17.0, 1.0, 7.0, 1.0),
                  child: Row(
                      children: <Widget>[
                        Expanded(
                            child: TextField(
                              controller: _productController,
                              decoration: InputDecoration(
                                  labelText:"Novo item",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 94, 35, 117))
                              ),
                            )
                        ),
                        RaisedButton(
                          color: Color.fromARGB(255, 94, 35, 117),
                          onPressed: addProduct,
                          child: Text("Novo"),
                          textColor: Colors.white,
                        )
                      ]
                  )
              ),

              Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 10.0),
                    itemCount: _productList.length,
                    itemBuilder: (context, index){
                      return Dismissible(
                          key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
                        background: Container(
                          color: Colors.red,
                          child: Align(
                            alignment: Alignment(-0.9, 0.0),
                            child: Icon(Icons.delete, color: Colors.white)
                          )
                        ),
                        direction: DismissDirection.startToEnd,

                        child: CheckboxListTile(
                          title: Text(_productList[index]["title"]),
                          value: _productList[index]["ok"],
                          secondary: CircleAvatar(
                            child: Icon(_productList[index]["ok"] ?
                            Icons.mood : Icons.error_outline),

                          ),
                          onChanged: (c) { setState((){
                            _productList[index]["ok"] = c;
                          }
                          );
                          },
                        ),
                        onDismissed: (direction){setState((){
                          _lastRemoved = Map.from(_productList[index]);
                          _lastRemovedIndex = index;
                          _productList.removeAt(index);
                          _saveData();

                          final snack = SnackBar(
                            content: Text("Produto ${_lastRemoved["title"]} removido."),
                            action: SnackBarAction(label: "Desfazer", onPressed: () {
                              setState((){
                                _productList.insert(_lastRemovedIndex, _lastRemoved);
                                _saveData();
                              });
                              _productList.insert(_lastRemovedIndex, _lastRemoved);
                              _saveData();
                            },
                            ),
                            duration: Duration(seconds: 2),
                          );
                          Scaffold.of(context).showSnackBar(snack);
                        });
                        },
                      );
                    },
                  )
              )
            ]
        )
    );
  }
  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/data.json");
  }
  Future<File> _saveData() async {
    String data = json.encode(_productList);

    final file = await _getFile();
    return file.writeAsString(data);
  }
  Future<String?> _readData() async {
    try{
      final file = await _getFile();
      return file.readAsString();
    } catch(e){
      return null;
    }
  }
}


