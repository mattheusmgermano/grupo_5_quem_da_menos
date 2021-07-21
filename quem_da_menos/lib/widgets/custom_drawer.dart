import 'package:flutter/material.dart';
import 'package:quem_da_menos/models/user_model.dart';
import 'package:quem_da_menos/screens/login_screen.dart';
import 'package:quem_da_menos/tiles/drawer_tile.dart';
import 'package:scoped_model/scoped_model.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {

      Widget _buildDrawerBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 185, 109, 214),
                Color.fromARGB(255, 255, 255, 255)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)));

    return Drawer(
      child: Stack(
        children:<Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.0,
                      left:48.0,
                      child: Container(
                          height: 100.0,
                          width: 120.0,
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/copy_515053066.png?alt=media&token=e2d5f271-b07a-4fa8-8363-5695ec0954d9"),
                                  fit: BoxFit.contain
                              )
                          ),
                      ),
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: ScopedModelDescendant<UserModel>(
                        builder: (context,child, model){
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Olá${!model.userOn ? "!" : " ${model.name}!"}",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 94, 35, 117),
                                    )),
                                GestureDetector(
                                  child: Text("Entre ou cadastre-se >",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 13, 117, 168),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                  onTap: (){
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context)=>LoginScreen())
                                    );
                                  },
                                )
                              ]
                          );
                        }
                      )
                    )
                  ],
                )
              ),
              Divider(),
              DrawerTile(Icons.home, "Início", pageController, 0),
              DrawerTile(Icons.list, "Lista de compras", pageController, 1),
              DrawerTile(Icons.location_on, "Supermercados", pageController, 2),
            ]

          )
        ]
      )
    );
  }
}
