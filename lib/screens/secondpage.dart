import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider_example/providers/provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pagina'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(myProvider.mitexto),
              
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Volver"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
