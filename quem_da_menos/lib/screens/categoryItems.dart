import 'package:flutter/material.dart';
import 'package:quem_da_menos/models/Category.dart';
import 'package:quem_da_menos/staticData/productList.dart';

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
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 5.0,
          crossAxisCount: 2,
          children: productList
              .where((product) => product.categoria == this.category.id)
              .map((product) {
            return GestureDetector(
                child: Card(
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(product.imagem),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  print("hii");
                });
          }).toList(),
        ),
      ),
    );
  }
}
