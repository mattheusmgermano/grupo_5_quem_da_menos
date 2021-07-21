import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quem_da_menos/models/produto_model.dart';
import 'package:quem_da_menos/screens/cenoura_screen.dart';
import 'package:quem_da_menos/screens/maca_screen.dart';
import 'package:quem_da_menos/screens/pfrango_screen.dart';

class HomeTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var file = Produto(categoria: 'carnes', id: 1, name: 'Filé Mignon', price: 80.99, imagem: 'https://cdn.awsli.com.br/800x800/1561/1561317/produto/61075456/ac63721154.jpg');
    var pfrango = Produto(categoria: 'carnes', id: 1, name: 'Peito de Frango', price: 17.99, imagem: 'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/16025/medium/peito-de-frango-com-osso-resfriado-kg_18931.png');
    var maca = Produto(categoria: 'frutas', id: 1, name: 'Maçã', price: 80.99, imagem: 'https://superprix.vteximg.com.br/arquivos/ids/175207-600-600/Maca-Argentina--1-unidade-aprox.-200g-.png?v=636294203590200000');
    var cenoura = Produto(categoria: 'verduras', id: 1, name: 'Cenoura', price: 80.99, imagem: 'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/15131/medium/cenoura-kg_10840.jpg');
    var parmesao = Produto(categoria: 'laticinios', id: 1, name: 'Parmesão Marca Djabo', price: 80.99, imagem: 'https://a-static.mlcdn.com.br/618x463/queijo-parmesao-scala-premium/tioaliemporioarabe/5f6e65094a27ef6dfc314927/f8b45fb0371c401666ef7851177d27cc.jpg');
    var coca = Produto(categoria: 'bebidas', id: 1, name: 'Coca-cola 2l', price: 80.99, imagem: 'https://static.distribuidoracaue.com.br/media/catalog/product/cache/1/thumbnail/600x800/9df78eab33525d08d6e5fb8d27136e95/r/e/refrigerante-coca-cola-2-litros.jpg');

    Widget _buildBodyBack() => Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 94, 35, 117),
              Color.fromARGB(255, 139, 98, 156)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)));
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
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
            Column(
            children: <Widget>[
              SizedBox(
                height: 100.0,
                width: 400.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/alcool.png?alt=media&token=b86b64ef-fa86-438d-a909-13a55599c2ba"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                          onTap: (){},
                            child: Card(
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                                shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/bebidas.png?alt=media&token=284cc314-6ecd-4070-9154-736a08d93a9e"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/carnes.png?alt=media&token=4981f60d-74bc-4e38-9d93-bdb3226ac360"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/chocolate.png?alt=media&token=f318aa4f-f9cf-467b-9fef-d966487a7900"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/conservas.png?alt=media&token=86e93acb-9c34-4969-ad4e-624b8f5b4f0e"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/frutas.png?alt=media&token=63a18ad4-3c93-4740-be5a-07ef488e27e3"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/graos.png?alt=media&token=cc847998-019c-4322-8e81-5bf814f5fcbe"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/higiene.png?alt=media&token=8178959f-b558-4251-9bc1-0a4104fda886"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/laticinios.png?alt=media&token=5e2503cf-2b9a-41ed-8bec-b039d8a87b3c"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/legumes.png?alt=media&token=c4435780-7317-46bc-8a65-4e56b420c430"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/limpeza.png?alt=media&token=a9f56ea6-2677-40be-aed8-0c8968280852"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/molhos.png?alt=media&token=df386923-80bd-4588-9328-d29d1ffd49ce"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/padaria.png?alt=media&token=bd0edfc0-432d-4f8d-b086-622ec811abfc"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/papelaria.png?alt=media&token=04f91f59-8125-44cb-99eb-b570eb8beaae"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/pescados.png?alt=media&token=c13424b0-01a2-4283-843f-5d13cd16c21f"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/salgados.png?alt=media&token=85272cda-25fc-4e4e-b73e-8deb677fdecf"),
                            fit: BoxFit.contain
                        ),
                      ),
                        child: InkWell(
                            onTap: (){},
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                              shadowColor: Color.fromARGB(90, 241, 230, 245),)
                        )
                    ),
                  ]
                )
              )
            ]
          ),
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
                      physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                      shrinkWrap: true, // You won't see infinite size error
                      children: <Widget>[
                        Container(
                            width: 90.0,
                            height: 40.0,
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image: NetworkImage("https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/15131/medium/cenoura-kg_10840.jpg"),
                                  fit: BoxFit.contain
                              ),
                            ),
                            child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context)=>CenouraScreen())
                                  );
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                                  shadowColor: Color.fromARGB(90, 241, 230, 245),
                                )
                            )
                        ),
                        Container(
                            width: 90.0,
                            height: 40.0,
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image: NetworkImage("https://superprix.vteximg.com.br/arquivos/ids/175207-600-600/Maca-Argentina--1-unidade-aprox.-200g-.png?v=636294203590200000"),
                                  fit: BoxFit.contain
                              ),
                            ),
                            child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context)=>MacaScreen())
                                  );
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                                  shadowColor: Color.fromARGB(90, 241, 230, 245),)
                            )
                        ),
                        Container(
                            width: 90.0,
                            height: 40.0,
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image: NetworkImage("https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/16025/medium/peito-de-frango-com-osso-resfriado-kg_18931.png"),
                                  fit: BoxFit.contain
                              ),
                            ),
                            child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context)=>PeitoFrangoScreen())
                                  );
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
                                  shadowColor: Color.fromARGB(90, 241, 230, 245),
                                  child: SizedBox(
                                    height: 20.0,
                                  )
                                )
                            )
                        ),
                      ],
                    ),
                    // ...... other list children.
                  ],
                )
              )
            ],
          )
        ]
      )
    );
  }
}
