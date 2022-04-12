import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { //aqui é feito a criação das páginas e o gerenciamento das mesmas
    return GetMaterialApp( //configurando o get
      //adicionar páginas
        getPages:[
        GetPage(name: '/', page:() => HomePage()), //gerenciar as páginas -- =>  retornou a homepag
      //name é a rota e page é a página
    ],
    );
  }
}


