import 'package:flutter/material.dart';
import 'package:quem_da_menos/models/produto_model.dart';
import 'package:quem_da_menos/models/supermercado_model.dart';
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
          Text("${zaffari.name}",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          )),
          SizedBox(
            width: 400.0,
            height: 200.0,
            child: Container(
                width: 90.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: NetworkImage("${zaffari.imagem}"),
                      fit: BoxFit.scaleDown
                  ),
                ),
                child: InkWell(
                    onTap: (){},
                    child: Card(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                      shadowColor: Color.fromARGB(10, 255, 255, 255),
                )
            ),
          ),
          ),
          Divider(),
          Text("${carrefour.name}",
          style: TextStyle(
              fontSize: 25.0,
          fontWeight: FontWeight.bold),),
          SizedBox(height: 16),
          SizedBox(
            width: 400.0,
            height: 200.0,
            child: Container(
              width: 90.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: NetworkImage("${carrefour.imagem}"),
                    fit: BoxFit.scaleDown
                ),
              ),
              child: InkWell(
                  onTap: (){},
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                    shadowColor: Color.fromARGB(10, 255, 255, 255),
                  )
              ),
            ),
          ),
        ]
      )
    );
  }
}
