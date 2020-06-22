import 'package:moor_flutter/moor_flutter.dart';
part 'moor_database.g.dart';

class Autors extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withLength(min: 3, max: 50)();
  TextColumn get descricao => text().withLength(min: 0, max: 100)();
  DateTimeColumn get dateNascimento =>dateTime().nullable()();
  DateTimeColumn get dateMorte => dateTime().nullable()();
}

class Livros extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get autorId =>
      integer().customConstraint('REFERENCES Autor(id)')();
  TextColumn get nome => text().withLength(min: 3, max: 50)();
  TextColumn get descricao => text().withLength(min: 0, max: 100)();
  IntColumn get ano => integer()();
   RealColumn get preco => real()();
  BoolColumn get lido => boolean()();
}

class Emprestados extends Table {
  IntColumn get id => integer().autoIncrement()();
    IntColumn get autorId =>
      integer().customConstraint('REFERENCES Livro(id)')();
  TextColumn get nomeLivro => text().withLength(min: 3, max: 50)();
  TextColumn get nomePessoa => text().withLength(min: 3, max: 50)();
}

class Usuarios extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get login => text().withLength(min: 3, max: 15)();
  TextColumn get senha => text().withLength(min: 3, max: 10)();
}

@UseMoor(tables: [Autors, Livros, Emprestados, Usuarios])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          logStatements: true,
        )));

  @override
  int get schemaVersion => 1;

  // // Autores
  Future<List<Autor>> getAllAutores() => select(autors).get();
  Stream<List<Autor>> watchAllAutores() => select(autors).watch();
  Future insertNewAutor(Autor _autor) => into(autors).insert(_autor);
  Future deleteAutor(Autor _autor) => delete(autors).delete(_autor);


  //   // Livros
  Future<List<Livro>> getAllLivros() => select(livros).get();
  Stream<List<Livro>> watchAllLivros() => select(livros).watch();
  Future insertNewLivro(Livro livro) => into(livros).insert(livro);
  Future deleteLivro(Livro livro) => delete(livros).delete(livro);
}
