import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mybooks/db/moor_database.dart';
import 'package:provider/provider.dart';

import 'autor_form_page.dart';

class AutorHomePage extends StatefulWidget {
  AutorHomePage({Key key}) : super(key: key);

  @override
  _AutorHomePageState createState() => _AutorHomePageState();
}

class _AutorHomePageState extends State<AutorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Autores'),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: _buildListViewLivros(context)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue[900],
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AutorFormPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  StreamBuilder<List<Autor>> _buildListViewLivros(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);
    return StreamBuilder(
      stream: database.watchAllAutores(),
      builder: (context, AsyncSnapshot<List<Autor>> snapshot) {
        final livros = snapshot.data ?? List();

        return ListView.builder(
          itemCount: livros.length,
          itemBuilder: (_, index) {
            final itemLivro = livros[index];
            return _buildListItem(itemLivro, database);
          },
        );
      },
    );
  }

  Widget _buildListItem(Autor item, AppDatabase database) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => database.deleteAutor(item),
        )
      ],
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.lightBlue[900],
          child: Text(
            item.nome[0].toUpperCase(),
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        title: Text(item.nome),
        subtitle: Text(item.descricao.toString() ?? 'No date'),
      ),
    );
  }
}
