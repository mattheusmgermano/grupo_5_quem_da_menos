import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home_View(),
  ));
}

class Home_View extends StatefulWidget {
  const Home_View({Key? key}) : super(key: key);

  @override
  _Home_ViewState createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children:<Widget>[
          new Scaffold(
            appBar: AppBar(
              title: Text("Página inicial")
            ),
          )
        ]
      )
    );
  }
}
