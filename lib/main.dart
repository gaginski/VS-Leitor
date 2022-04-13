import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste/db/database.dart';
import 'src/Utils/Config.dart';
import 'src/View/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    key: null,
    db: await $FloorAppDatabase.databaseBuilder('app_database.db').build(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.db}) : super(key: key);
  final AppDatabase? db;

  @override
  Widget build(BuildContext context) {
    Config.Current.db = db;//aqui é feito a criação das páginas e o gerenciamento das mesmas
    return GetMaterialApp( //configurando o get
      //adicionar páginas
        getPages:[
        GetPage(name: '/', page:() => HomePage()), //gerenciar as páginas -- =>  retornou a homepag
      //name é a rota e page é a página
    ],
    );
  }
}


