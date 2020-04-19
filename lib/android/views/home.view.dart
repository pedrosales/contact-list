import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Meus Contatos"),
        centerTitle: true,
        leading: FlatButton(
          child: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {},
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(48),
                image: DecorationImage(
                  image:
                      NetworkImage("https://balta.io/imgs/andrebaltieri.jpg"),
                ),
              ),
            ),
            title: Text("Pedro"),
            subtitle: Text("oi"),
            trailing: FlatButton(
              onPressed: () {},
              child: Icon(
                Icons.chat,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
