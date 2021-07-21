import 'package:flutter/material.dart';
import 'package:quem_da_menos/models/user_model.dart';
import 'package:quem_da_menos/screens/cadastro_screen.dart';
import 'package:scoped_model/scoped_model.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrar"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 94, 35, 117),
        actions: <Widget>[
          FlatButton(
            child: Text("Criar conta",style: TextStyle(
              fontSize: 15.0
            ),
            ),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context)=>CadastroScreen())
              );
            },
          )
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
                      height: 200.0,
                      width: 125.0,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/copy_515053066.png?alt=media&token=e2d5f271-b07a-4fa8-8363-5695ec0954d9"),
                              fit: BoxFit.contain
                          )
                      ),
                    ),
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
                        if(text!.isEmpty || text.length < 6) return "Senha inválida.";
                      },
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                            onPressed: (){},
                            padding: EdgeInsets.all(0.0),
                            child: Text("Esqueci minha senha", textAlign: TextAlign.right,)
                        )
                    ),
                    SizedBox(height: 20.0,),
                    SizedBox(
                        height: 50.0,
                        child: RaisedButton(
                          child: Text("Entrar",
                              style: TextStyle(fontSize: 18.0,)),
                          textColor: Colors.white,
                          color: Theme.of(context).primaryColor,
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                            }
                            model.signIn();
                          },
                        ))
                  ]
              )
          );
        }
      )
    );
  }
}
