import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:quem_da_menos/models/produto_model.dart';
import 'package:quem_da_menos/models/supermercado_model.dart';
import 'package:quem_da_menos/screens/home_screen.dart';
import 'package:quem_da_menos/screens/zaffari_category.dart';
import 'package:quem_da_menos/staticData/categoryList.dart';
import 'package:quem_da_menos/staticData/userProdList.dart';
import 'package:quem_da_menos/widgets/custom_drawer.dart';

import 'categoryItems.dart';

class ZaffariScreen extends StatefulWidget {
  const ZaffariScreen({Key? key}) : super(key: key);

  @override
  _ZaffariScreenState createState() => _ZaffariScreenState();
}

class _ZaffariScreenState extends State<ZaffariScreen> {
  var zaffari = Zaffari();
  var maca = Produto(
      categoria: 6,
      id: 1,
      name: 'Maçã',
      price: 80.99,
      imagem:
          'https://superprix.vteximg.com.br/arquivos/ids/175207-600-600/Maca-Argentina--1-unidade-aprox.-200g-.png?v=636294203590200000');
  var pfrango = Produto(
      categoria: 3,
      id: 2,
      name: 'Peito de Frango',
      price: 26.99,
      imagem:
          'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/16025/medium/peito-de-frango-com-osso-resfriado-kg_18931.png');
  var cenoura = Produto(
      categoria: 9,
      id: 4,
      name: 'Cenoura',
      price: 8.99,
      imagem:
          'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/15131/medium/cenoura-kg_10840.jpg');
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 94, 35, 117),
          title: Text(zaffari.name),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                })
          ],
        ),
        body: Stack(children: <Widget>[
          Container(
            decoration: new BoxDecoration(color: Colors.white),
          ),
          Center(
              child: SingleChildScrollView(
                  child: Column(children: <Widget>[
            GestureDetector(
                child: Card(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(zaffari.imagem,
                            // width: 300,
                            height: 65,
                            fit: BoxFit.contain),
                      ),
                      ListTile(
                        title: Text(
                          zaffari.endereco,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ZaffariScreen()));
                }),
            Divider(),
            Column(children: <Widget>[
              SizedBox(
                height: 100.0,
                width: 400.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: categories
                      .map(
                        (category) => GestureDetector(
                          onTap: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ZaffariCategoryScreen(category: category)))
                          },
                          child: Container(
                            width: 90.0,
                            height: 40.0,
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image: NetworkImage(category.url),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ]),
            Divider(),
            SizedBox(height: 20.0),
            Column(
              children: <Widget>[
                SizedBox(
                    height: 300.0,
                    width: 400.0,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Text("PRODUTOS COM MAIOR VARIAÇÃO",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),
                            textAlign: TextAlign.center),
                        SizedBox(height: 20.0),
                        GridView.count(
                          crossAxisCount: 3,
                          physics:
                              NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                          shrinkWrap: true, // You won't see infinite size error
                          children: <Widget>[
                            GestureDetector(
                                child: Card(
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch, // add this
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0),
                                        ),
                                        child: Image.network(pfrango.imagem,
                                            // width: 300,
                                            height: 65,
                                            fit: BoxFit.contain),
                                      ),
                                      ListTile(
                                        title: Text(
                                          pfrango.name,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                        "${pfrango.name} Adicionado na Lista"),
                                  ));
                                  userProductList.add(
                                      {"title": pfrango.name, "ok": false});
                                }),
                            GestureDetector(
                                child: Card(
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch, // add this
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0),
                                        ),
                                        child: Image.network(cenoura.imagem,
                                            // width: 300,
                                            height: 65,
                                            fit: BoxFit.contain),
                                      ),
                                      ListTile(
                                        title: Text(
                                          cenoura.name,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                        "${cenoura.name} Adicionado na Lista"),
                                  ));
                                  userProductList.add(
                                      {"title": cenoura.name, "ok": false});
                                }),
                            GestureDetector(
                                child: Card(
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch, // add this
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0),
                                        ),
                                        child: Image.network(maca.imagem,
                                            // width: 300,
                                            height: 65,
                                            fit: BoxFit.contain),
                                      ),
                                      ListTile(
                                        title: Text(
                                          maca.name,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                        "${cenoura.name} Adicionado na Lista"),
                                  ));
                                  userProductList.add(
                                      {"title": cenoura.name, "ok": false});
                                }),
                          ],
                        ),
                        // ...... other list children.
                      ],
                    ))
              ],
            )
          ])))
        ]));
  }
}
