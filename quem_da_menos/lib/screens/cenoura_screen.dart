import 'package:flutter/material.dart';
import 'package:quem_da_menos/models/produto_model.dart';
import 'package:quem_da_menos/models/supermercado_model.dart';
import 'package:quem_da_menos/screens/zaffari_screen.dart';
import 'package:quem_da_menos/staticData/marketList.dart';
import 'package:quem_da_menos/staticData/productList.dart';
import 'package:quem_da_menos/staticData/userProdList.dart';

class CenouraScreen extends StatefulWidget {
  const CenouraScreen({Key? key}) : super(key: key);

  @override
  _CenouraScreenState createState() => _CenouraScreenState();
}

class _CenouraScreenState extends State<CenouraScreen> {

  var zaffari = Zaffari();
  var carrefour = Carrefour();
  var cenoura = Produto(categoria: 9, id: 4, name: 'Cenoura', price: 8.99, imagem: 'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/15131/medium/cenoura-kg_10840.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 94, 35, 117),
        title: Text(cenoura.name),
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: EdgeInsets.all(10.0),
          childAspectRatio: 0.90,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 5.0,
          crossAxisCount: 2,
          children: productList
              .where((product) => product.categoria == cenoura.categoria)
              .map((product) {
            return GestureDetector(
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
                            product.imagem,
                            // width: 300,
                            height: 100,
                            fit:BoxFit.contain
                        ),
                      ),
                      ListTile(
                        title: Text(product.name),
                        subtitle: findLowestPrice(product.id),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${product.name} Adicionado na Lista"),
                  ));
                  userProductList.add({"title": product.name, "ok": false});
                });
          }).toList(),
        ),
      ),
    );
  }
}
Widget findLowestPrice(int productId) {
  // Filters markets that have the product in hand
  var lowestPriceMarket = marketList
      .where((market) => market.produtos.any((produto) => produto.id == productId)).toList();

  // Sorts markets by lowest product value
  lowestPriceMarket.sort((a, b) => a.produtos.firstWhere((prod) => prod.id == productId).price < b.produtos.firstWhere((prod) => prod.id == productId).price ? 0 : 1);
  var bestMarket = lowestPriceMarket[0];

  if (lowestPriceMarket.isEmpty){
    return Text("Produto n??o dispon??vel");
  }

  return Text("R\$${bestMarket.produtos.firstWhere((prod) => prod.id == productId).price}\nMenor pre??o em ${bestMarket.name}");
}
