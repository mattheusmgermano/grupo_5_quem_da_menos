import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model{

  FirebaseAuth _auth = FirebaseAuth.instance;
  late User fireBaseUser;
  Map<String, dynamic> userData = Map();
  bool isLoading = false;

  /*MOCKS*/
  bool userOn = true;
  String name = "grupo5";
  String email = "grupo@cinco.com.br";
  String password = "grupo5";


  void signUp({required Map<String, dynamic> userData, required String pass, required VoidCallback onSuccess, required VoidCallback onFailure}){

    isLoading = true;
    notifyListeners();

    _auth.createUserWithEmailAndPassword(
        email: userData["email"],
        password: pass

    ).then((user) async {
      fireBaseUser = user as User;
      await _saveUserData(userData);

      onSuccess();
      isLoading = false;
      notifyListeners();
    }).catchError((e){
      isLoading = false;
      notifyListeners();
    });
  }
  void signIn() async{
    isLoading = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 3));

    isLoading = false;
    notifyListeners();
  }
  void recoverPass(){

  }
  void favorite(){

  }
  void unfavorite(){

  }
  void setPrice(){

  }
  Future<Null> _saveUserData(Map<String, dynamic> userData) async{
    future: Firebase.initializeApp();
    this.userData = userData;
    await FirebaseFirestore.instance.collection("users").doc(fireBaseUser.uid).set(userData);
  }
}