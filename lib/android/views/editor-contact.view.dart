import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel model;

  EditorContactView({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: model == null ? Text("Novo Contato") : Text("Editar contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: model?.name,
                onSaved: (val) {
                  model.name = val;
                },
              ),
              TextFormField(
                initialValue: model?.phone,
                onSaved: (val) {
                  model.phone = val;
                },
              ),
              TextFormField(
                initialValue: model?.email,
                onSaved: (val) {
                  model.email = val;
                },
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: FlatButton.icon(
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                  icon: Icon(
                    Icons.save,
                    color: Theme.of(context).accentColor,
                  ),
                  label: Text(
                    "Salvar",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
