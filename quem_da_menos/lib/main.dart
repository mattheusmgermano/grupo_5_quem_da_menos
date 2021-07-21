import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quem_da_menos/models/user_model.dart';
import 'package:quem_da_menos/screens/home_screen.dart';
import 'package:quem_da_menos/screens/maca_screen.dart';
import 'package:quem_da_menos/screens/supermercado_screen.dart';
import 'package:scoped_model/scoped_model.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  runApp (QuemDaMenos());
}

class QuemDaMenos extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return ScopedModel<UserModel>(
      model: UserModel(),
        child: MaterialApp(
        title: 'Quem dá menos?',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          primaryColor: Color.fromARGB(255, 94, 35, 117),
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
    ));
  }
}