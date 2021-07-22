import 'package:flutter/material.dart';
import 'package:quem_da_menos/screens/supermercado_screen.dart';
import 'package:quem_da_menos/tabs/home_tab.dart';
import 'package:quem_da_menos/tabs/products_tab.dart';
import 'package:quem_da_menos/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController();
  TextEditingController _searchQueryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 94, 35, 117),
            title: Text('Início'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search),
                  onPressed: () {})
            ],
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
        Scaffold(
          appBar: AppBar(
            title: Text("Supermercados"),
            backgroundColor: Color.fromARGB(255, 94, 35, 117),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: SupermercadoScreen(),
        ),
      ],
    );
  }
  Widget _buildSearchField() {
    return TextField(
      controller: _searchQueryController,
      autofocus: true,
      decoration: InputDecoration(
        hintText: "Digite o nome do produto",
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white30),
      ),
      style: TextStyle(color: Colors.white, fontSize: 16.0),
    );
  }
  }