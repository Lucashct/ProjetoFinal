import 'package:flutter/material.dart';
import 'TelaDeLogin.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.person),
                  hintText: 'Usuário'),
            ),
            TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.lock),
                    hintText: 'Senha')),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Cadastrar'),
                    color: Colors.blueAccent,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text('Login >'),
                    color: Colors.blueAccent,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
