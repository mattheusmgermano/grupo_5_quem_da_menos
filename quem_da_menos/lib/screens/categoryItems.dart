import 'package:flutter/material.dart';
import 'package:quem_da_menos/models/Category.dart';
import 'package:quem_da_menos/staticData/marketList.dart';
import 'package:quem_da_menos/staticData/productList.dart';
import 'package:quem_da_menos/staticData/userProdList.dart';

class CategoryScreen extends StatelessWidget {
  final Category category;
  const CategoryScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.category.name),
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
              .where((product) => product.categoria == this.category.id)
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
                            fit:BoxFit.fill
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
                  userProductList.add({"title": product.name, "ok": true});
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
    return Text("Produto não disponível");
  }


  return Text("R\$${bestMarket.produtos.firstWhere((prod) => prod.id == productId).price} em ${bestMarket.name}");
}