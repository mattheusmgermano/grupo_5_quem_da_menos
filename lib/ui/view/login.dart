import 'package:flutter/material.dart';
import 'package:grupo5/ui/view/home_view.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

// Used for controlling whether the user is login or creating an account
enum FormType { login, register }

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailFilter = TextEditingController();
  final TextEditingController _passwordFilter = TextEditingController();
  String _email = "";
  String _password = "";
  FormType _form = FormType
      .login; // our default setting is to login, and we should switch to creating an account when the user chooses to

  _LoginPageState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

  void _emailListen() {
    if (_emailFilter.text.isEmpty) {
      _email = "";
    } else {
      _email = _emailFilter.text;
    }
  }

  void _passwordListen() {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  // Swap in between our two forms, registering and logging in
  void _formChange() async {
    setState(() {
      if (_form == FormType.register) {
        _form = FormType.login;
      } else {
        _form = FormType.register;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/quemdamenos.jpg'),
            ),
            _buildTextFields(),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFields() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              controller: _emailFilter,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                labelText: 'Email',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              cursorColor: Colors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              controller: _passwordFilter,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                labelText: 'Senha',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              obscureText: true,
              cursorColor: Colors.deepPurple[800],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    if (_form == FormType.login) {
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                child: Text(
                  'Entrar',
                  style: TextStyle(color: Colors.deepPurple[800]),
                ),
                onPressed: _loginPressed,
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ),
            ),
            TextButton(
              child: Text('Ainda não possui conta? Registre-se agora.'),
              onPressed: _formChange,
              style: TextButton.styleFrom(primary: Colors.white),
            ),
            TextButton(
              child: Text('Esqueceu a senha?'),
              onPressed: _passwordReset,
              style: TextButton.styleFrom(primary: Colors.white),
            )
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                child: Text(
                  'Criar uma Conta',
                  style: TextStyle(color: Colors.deepPurple[800]),
                ),
                onPressed: _createAccountPressed,
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ),
            ),
            TextButton(
              child: Text('Tem uma conta? Clique aqui para entrar.'),
              onPressed: _formChange,
              style: TextButton.styleFrom(primary: Colors.white),
            )
          ],
        ),
      );
    }
  }

  // These functions can self contain any user auth logic required, they all have access to _email and _password

  void _loginPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeView()));
  }

  void _createAccountPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeView()));
  }

  void _passwordReset() {
    print("Change password for -> $_email");
  }
}
