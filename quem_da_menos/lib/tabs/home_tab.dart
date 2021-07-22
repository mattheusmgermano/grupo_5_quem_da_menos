import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quem_da_menos/models/produto_model.dart';
import 'package:quem_da_menos/screens/categoryItems.dart';
import 'package:quem_da_menos/screens/cenoura_screen.dart';
import 'package:quem_da_menos/screens/maca_screen.dart';
import 'package:quem_da_menos/screens/pfrango_screen.dart';
import 'package:quem_da_menos/staticData/categoryList.dart';

class HomeTab extends StatelessWidget {
  var maca = Produto(categoria: 6, id: 1, name: 'Maçã', price: 80.99, imagem: 'https://superprix.vteximg.com.br/arquivos/ids/175207-600-600/Maca-Argentina--1-unidade-aprox.-200g-.png?v=636294203590200000');
  var pfrango =   Produto(categoria: 3, id: 2, name: 'Peito de Frango', price: 26.99, imagem: 'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/16025/medium/peito-de-frango-com-osso-resfriado-kg_18931.png');
  var cenoura = Produto(categoria: 9, id: 4, name: 'Cenoura', price: 8.99, imagem: 'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/15131/medium/cenoura-kg_10840.jpg');




  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
          Color.fromARGB(255, 94, 35, 117),
          Color.fromARGB(255, 139, 98, 156)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)));
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      SizedBox(
        height: 280.0,
        width: 420.0,
        child: Carousel(
          images: [
            NetworkImage(
                'https://lh5.googleusercontent.com/p/AF1QipMe3gfkEwIl2yG8zwFTrTenTeJeunni6Ghfps-I=w1080-k-no'),
            NetworkImage(
                'https://www.airaz.com.br/wp-content/uploads/SAPImagens/EMPREENDIMENTO3IB00100000007.jpeg'),
          ],
          dotSize: 4.0,
          dotSpacing: 15.0,
          dotColor: Colors.lightGreenAccent,
          indicatorBgPadding: 8.0,
          dotBgColor: Colors.purple.withOpacity(0.3),
          borderRadius: true,
          moveIndicatorFromBottom: 180.0,
          noRadiusForIndicator: true,
        ),
      ),
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
                        CategoryScreen(category: category)))
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
                  Text("PRODUTOS POPULARES",
                      style: TextStyle(
                        fontSize: 25.0,
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
                              crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                  child: Image.network(
                                      pfrango.imagem,
                                      // width: 300,
                                      height: 65,
                                      fit:BoxFit.contain
                                  ),
                                ),
                                ListTile(
                                  title: Text(pfrango.name, textAlign: TextAlign.center,),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PeitoFrangoScreen()));
                          }),
                      GestureDetector(
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                  child: Image.network(
                                      cenoura.imagem,
                                      // width: 300,
                                      height: 65,
                                      fit:BoxFit.contain
                                  ),
                                ),
                                ListTile(
                                  title: Text(cenoura.name, textAlign: TextAlign.center,),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MacaScreen()));
                          }),
                      GestureDetector(
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                  child: Image.network(
                                      maca.imagem,
                                      // width: 300,
                                      height: 65,
                                      fit:BoxFit.contain
                                  ),
                                ),
                                ListTile(
                                  title: Text(maca.name, textAlign: TextAlign.center,),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MacaScreen()));
                          }),
                    ],
                  ),
                  // ...... other list children.
                ],
              ))
        ],
      )
    ]));
  }
}
