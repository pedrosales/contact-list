import 'package:contacts/android/views/details.view.dart';
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsView(),
                  ),
                );
              },
              child: Icon(
                Icons.chat,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
