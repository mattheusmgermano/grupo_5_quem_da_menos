import 'package:flutter/material.dart';
import 'package:quem_da_menos/models/produto_model.dart';
import 'package:quem_da_menos/models/supermercado_model.dart';
import 'package:quem_da_menos/screens/zaffari_screen.dart';

class PeitoFrangoScreen extends StatefulWidget {
  const PeitoFrangoScreen({Key? key}) : super(key: key);

  @override
  _PeitoFrangoScreenState createState() => _PeitoFrangoScreenState();
}

class _PeitoFrangoScreenState extends State<PeitoFrangoScreen> {

  var zaffari = Zaffari();
  var carrefour = Carrefour();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${zaffari.produtos[1].name}"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 94, 35, 117),
          actions: <Widget>[
          ],
        ),
        body: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              Text("Peito de Frango Zaffari- R\$${zaffari.produtos[1].price}",
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
                          image: NetworkImage("${zaffari.produtos[1].imagem}"),
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
              Text("Peito de Frango Carrefour - R\$${carrefour.produtos[1].price}",
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
                            image: NetworkImage("${carrefour.produtos[1].imagem}"),
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