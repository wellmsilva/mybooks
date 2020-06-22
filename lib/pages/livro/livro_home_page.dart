import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mybooks/db/moor_database.dart';
import 'package:mybooks/pages/autor/autor_home_page.dart';
import 'package:provider/provider.dart';

import 'livro_add_page.dart';

class LivroHomePage extends StatefulWidget {
  LivroHomePage({Key key}) : super(key: key);

  @override
  _LivroHomePageState createState() => _LivroHomePageState();
}

class _LivroHomePageState extends State<LivroHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livros'),
         actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AutorHomePage()));
              },
            )
         ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: _buildListViewLivros(context)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LivroAddPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  StreamBuilder<List<Livro>> _buildListViewLivros(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);
    return StreamBuilder(
      stream: database.watchAllLivros(),
      builder: (context, AsyncSnapshot<List<Livro>> snapshot) {
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

  Widget _buildListItem(Livro item, AppDatabase database) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Excluir',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => database.deleteLivro(item),
        )
      ],
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueGrey,
          child: Text(
            item.nome[0].toUpperCase(),
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        title: Text(item.nome),
        subtitle: Text(item.descricao)
      ),
    );
  }
}
