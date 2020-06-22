import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mybooks/db/moor_database.dart';
import 'package:mybooks/formaters/DateTextFormatter.dart';
import 'package:provider/provider.dart';

// import 'package:mybooks/db/moor_database.dart';
// import 'package:provider/provider.dart';
class AutorFormPage extends StatefulWidget {
  AutorFormPage({Key key}) : super(key: key);

  @override
  _AutorFormPageState createState() => _AutorFormPageState();
}

class _AutorFormPageState extends State<AutorFormPage> {
  String _nome;
  String _descricao;
  DateTime _dataNascimento;
  DateTime _dataMorte;

  @override
  Widget build(BuildContext context) {
    AppDatabase database = Provider.of<AppDatabase>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de autor'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              submit(database, context);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Expanded(child: _buildView(context)),
      ),
    );
  }

  Widget _buildView(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Padding(padding: EdgeInsets.all(8.0)),
            new TextFormField(
              decoration: new InputDecoration(
                labelText: "Nome",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              maxLength: 50,
              inputFormatters: [
                WhitelistingTextInputFormatter(RegExp("[a-zA-Z ]"))
              ],
              onChanged: (val) => setState(() => {this._nome = val}),
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new TextFormField(
              decoration: new InputDecoration(
                labelText: "Descrição",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              maxLength: 100,
              inputFormatters: [
                WhitelistingTextInputFormatter(RegExp("[a-zA-Z ]"))
              ],
              onChanged: (val) => setState(() => {this._descricao = val}),
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            _fieldDataNascimento(),
            new Padding(padding: EdgeInsets.all(8.0)),
            _fieldDataMorte(),
          ],
        ));
  }

  void submit(AppDatabase database, BuildContext context) {
    database
        .insertNewAutor(Autor(id: null, nome: _nome, descricao: _descricao));
    Navigator.pop(context);
  }

  _fieldDataNascimento() {
    return new TextFormField(
      decoration: new InputDecoration(
        labelText: "Data Nascimento",
        fillColor: Colors.white,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(),
        ),
      ),
      maxLength: 10,
       keyboardType: TextInputType.datetime,
      inputFormatters: [
        DateTextFormatter()
      ],
      onChanged: (val) =>
          setState(() => {this._dataNascimento = DateTime.parse(val)}),
    );
  }

  _fieldDataMorte() {
    return new TextFormField(
      decoration: new InputDecoration(
        labelText: "Data da Morte",
        fillColor: Colors.white,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(),
        ),
      ),
      minLines: 1,
      maxLength: 10,
       keyboardType: TextInputType.datetime,
      inputFormatters: [
        DateTextFormatter()
      ],
      onChanged: (val) =>
          setState(() => {this._dataMorte = DateTime.parse(val)}),
    );
  }
}
