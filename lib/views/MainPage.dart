import 'package:flutter/material.dart';
import 'Maps.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Projeto final'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage()));
              },
              child: Text('Mapas'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Contatos'),
            )
          ],
        ),
      ),
    );
  }
}
