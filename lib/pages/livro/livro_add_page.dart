import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mybooks/db/moor_database.dart';
import 'package:mybooks/formaters/CurrencyPtBrInputFormatter.dart';
import 'package:provider/provider.dart';

class LivroAddPage extends StatefulWidget {
  LivroAddPage({Key key}) : super(key: key);

  @override
  _LivroAddPageState createState() => _LivroAddPageState();
}

class _LivroAddPageState extends State<LivroAddPage> {
  String _nome;
  int _autorId;
  String _descricao;
  int _ano;
  double _preco;

  @override
  Widget build(BuildContext context) {
    AppDatabase database = Provider.of<AppDatabase>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro livro'),
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
        child: Expanded(child: _buildView(database, context)),
      ),
    );
  }

  Widget _buildView(AppDatabase database, BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Padding(padding: EdgeInsets.all(8.0)),
            StreamBuilder<List<Autor>>(
                stream: database.getAllAutores().asStream(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return Container();
                  var _items = snapshot.data;
                  return DropdownButtonFormField(
                      decoration: new InputDecoration(
                        labelText: "Autor",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          borderSide: new BorderSide(),
                        ),
                      ),
                      value: _autorId,
                      items: _items
                          .map((e) => DropdownMenuItem(
                                child: Text(e.nome),
                                value: e.id,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          _autorId = val;
                        });
                      });
                }),
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
              onChanged: (val) => setState(() => {_nome = val}),
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
              onChanged: (val) => setState(() => {_descricao = val}),
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new TextFormField(
              decoration: new InputDecoration(
                labelText: "Ano",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
              maxLength: 4,
              onChanged: (val) => setState(() => {_ano = int.parse(val)}),
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new TextFormField(
              decoration: new InputDecoration(
                labelText: "Preço",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                WhitelistingTextInputFormatter.digitsOnly,
                CurrencyPtBrInputFormatter()
              ],
              //validator: _validarNome,
              onChanged: (val) => setState(() => {_preco = double.parse(val)}),
            ),
          ],
        ));
  }

  Widget getListTile(String title, String subtitle) {
    return Container(
      child: ListTile(
        leading: Text(title),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }

  _showDialog(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  void submit(AppDatabase database, BuildContext context) {
    database.insertNewLivro(Livro(
        id: null,
        nome: _nome,
        autorId: _autorId,
        descricao: _descricao,
        ano: _ano,
        lido: false,
        preco: _preco));
    Navigator.pop(context);
  }
}
