import 'package:flutter/material.dart';
import 'package:quem_da_menos/models/produto_model.dart';
import 'package:quem_da_menos/models/supermercado_model.dart';
import 'package:quem_da_menos/screens/carrefour_screen.dart';
import 'package:quem_da_menos/screens/zaffari_screen.dart';
import 'package:scoped_model/scoped_model.dart';

class SupermercadoScreen extends StatefulWidget {
  const SupermercadoScreen({Key? key}) : super(key: key);

  @override
  _SupermercadoScreenState createState() => _SupermercadoScreenState();
}

class _SupermercadoScreenState extends State<SupermercadoScreen> {

  var zaffari = Zaffari();

  var carrefour = Carrefour();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text("PERTO DE VOCÊ", style:
          TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold
          )),
          Divider(),
          SizedBox(height: 20.0,),
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
                          zaffari.imagem,
                          // width: 300,
                          height: 65,
                          fit:BoxFit.contain
                      ),
                    ),
                    ListTile(
                      title: Text(zaffari.name, textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ZaffariScreen()));
              }),
          Divider(),
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
                          carrefour.imagem,
                          // width: 300,
                          height: 65,
                          fit:BoxFit.contain
                      ),
                    ),
                    ListTile(
                      title: Text(carrefour.name, textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CarrefourScreen()));
              }),
        ]
      )
    );
  }
}
