import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'package:projetofinal_2/controllers/users.dart';

class Login extends StatelessWidget {
  Map usuarios = users;
  final TextEditingController _usuario = TextEditingController();
  final TextEditingController _senha = TextEditingController();

  bool _confirmUser() {
    usuarios.forEach((key, value) {
      if (_usuario.text == value['usuario'] && _senha.text == value['senha']) {
        return true;
      } else {
        return false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: ListView(padding: EdgeInsets.all(15), children: [
          TextField(
            controller: _usuario,
            decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.person),
                hintText: 'Usuário'),
          ),
          TextField(
              controller: _senha,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.lock),
                  hintText: 'Senha')),
          Padding(
            padding: const EdgeInsets.all(50),
            child: RaisedButton(onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            }),
          )
        ]),
      ),
    );
  }
}
