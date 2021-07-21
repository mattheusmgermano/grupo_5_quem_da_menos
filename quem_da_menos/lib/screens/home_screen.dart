import 'package:flutter/material.dart';
import 'package:quem_da_menos/tabs/home_tab.dart';
import 'package:quem_da_menos/tabs/products_tab.dart';
import 'package:quem_da_menos/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget> [
        Scaffold(
          appBar: AppBar(
            title: Text("Início"),
            backgroundColor: Color.fromARGB(255, 94, 35, 117),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: HomeTab(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Lista de Compras"),
            backgroundColor: Color.fromARGB(255, 94, 35, 117),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
        ),
      ],
    );
  }
}
