import 'package:flutter/material.dart';
import 'package:quem_da_menos/models/produto_model.dart';
import 'package:quem_da_menos/models/supermercado_model.dart';
import 'package:quem_da_menos/screens/zaffari_screen.dart';

class MacaScreen extends StatefulWidget {
  const MacaScreen({Key? key}) : super(key: key);

  @override
  _MacaScreenState createState() => _MacaScreenState();
}

class _MacaScreenState extends State<MacaScreen> {

  var zaffari = Zaffari();
  var carrefour = Carrefour();
  var maca = Produto(categoria: 6, id: 1, name: 'Maçã', price: 80.99, imagem: 'https://superprix.vteximg.com.br/arquivos/ids/175207-600-600/Maca-Argentina--1-unidade-aprox.-200g-.png?v=636294203590200000');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${maca.name}"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 94, 35, 117),
        actions: <Widget>[
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30.0),
          Text("Maçã Zaffari - R\$${zaffari.produtos[2].price}",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),),
          SizedBox(
            height: 150.0,
            width: 150.0,
            child: Container(
                width: 90.0,
                height: 40.0,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: NetworkImage("${zaffari.produtos[2].imagem}"),
                      fit: BoxFit.fill
                  ),
                ),
                child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>ZaffariScreen())
                      );
                    },
                    child: Card(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                      shadowColor: Color.fromARGB(90, 241, 230, 245),)
                )
            ),
          ),
          Divider(),
          SizedBox(height: 30),
          Text("Maçã Carrefour - R\$${carrefour.produtos[2].price}",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(
            height: 150.0,
            width: 150.0,
            child: Container(
                width: 90.0,
                height: 40.0,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: NetworkImage("${maca.imagem}"),
                      fit: BoxFit.contain
                  ),
                ),
                child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>ZaffariScreen())
                      );
                    },
                    child: Card(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                      shadowColor: Color.fromARGB(90, 241, 230, 245),
                    ),
                )
            )
            ),
        ]
      )
    );
  }
}
