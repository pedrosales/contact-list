import 'package:contacts/android/views/address.view.dart';
import 'package:contacts/android/views/editor-contact.view.dart';
import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image:
                      NetworkImage("https://balta.io/imgs/andrebaltieri.jpg"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Pedro Ivo",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "31994969424",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "pedro@gmail.com",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.phone,
                  color: Theme.of(context).accentColor,
                ),
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.email,
                  color: Theme.of(context).accentColor,
                ),
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.camera_enhance,
                  color: Theme.of(context).accentColor,
                ),
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Text(
              "Endereço",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Conselheiro lafaiete",
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  "Sagrada Familia",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
            isThreeLine: true,
            trailing: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddressView()),
                );
              },
              child: Icon(
                Icons.pin_drop,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(
                model: ContactModel(
                  id: "1",
                  name: "Pedro Ivo",
                  email: "pedro@gmal.com",
                  phone: "31994969424",
                ),
              ),
            ),
          );
        },
        child: Icon(
          Icons.edit,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
