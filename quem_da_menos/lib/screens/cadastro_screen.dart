import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quem_da_menos/models/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

class CadastroScreen extends StatefulWidget {

  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {

  @override
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 94, 35, 117),
          actions: <Widget>[
          ],
        ),
        body: ScopedModelDescendant<UserModel>(
            builder: (context, child, model){
              if(model.isLoading)
                return Center(child: CircularProgressIndicator(),);

              return Form(
                  key: _formKey,
                  child: ListView(
                      padding: EdgeInsets.all(16.0),
                      children: <Widget>[
                        SizedBox(height: 30.0),
                        Container(
                          height: 205.0,
                          width: 300.0,
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/Frame%2061.png?alt=media&token=bfdf9f24-a06a-4664-b50f-3d691156cef0"),
                                  fit: BoxFit.contain
                              )
                          ),
                        ),
                        SizedBox(height: 30.0),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Nome completo",
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Endereço",
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (text){
                            if(text!.isEmpty) return "Endereço inválido.";
                          },
                        ),
                        SizedBox(height: 20.0,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "E-mail",
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (text){
                            if(text!.isEmpty|| !text.contains("@")) return "E-mail inválido.";
                          },
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Senha"
                          ),
                          obscureText: true,
                          validator: (text){
                            if(text!.isEmpty || text.length < 6) return "Senha inválida. A senha deve conter ao menos 6 caracteres.";
                          },
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          height: 50.0,
                          child: RaisedButton(
                            child: Text("Criar conta",
                                style: TextStyle(fontSize: 18.0,)),
                            textColor: Colors.white,
                            color: Theme.of(context).primaryColor,
                            onPressed: (){
                              if(_formKey.currentState!.validate()){
                                Map<String, dynamic> userData = {
                                  "name": _nameController.text,
                                  "address": _addressController.text,
                                  "email": _emailController.text
                                };
                                model.signUp(
                                    userData: userData,
                                    pass: _passController.text,
                                    onSuccess: _onSuccess,
                                    onFailure: _onFailure
                                );
                              }
                            },
                          ),
                        ),
                      ]
                  )
              );
            }
        )
    );
  }
  void _onSuccess (){

  }
  void _onFailure (){

  }
}


