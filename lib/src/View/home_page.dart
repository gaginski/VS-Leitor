import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste/src/controller/home_page_controller.dart';
import 'package:teste/constants.dart';

import '../controller/rest_controller.dart';
//HOME PAGE DO APP

class HomePage extends StatelessWidget {
  HomePage() {
    Get.put(HomePageCrontoller()); //inicializador
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BarCode Scanner'),
      ), //titulo do app
      body: SizedBox.expand(
        //parte que alinha, coloca dentro de uma "caixa" e alinha
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Valor do código de barras:',
                //aqui q vai ter q retornar os dados da api dps
                style: Get.theme.textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.w100, color: Colors.indigo)),
            Text(''
                ''
                ''
                ''
                ''
                ''),
            GetBuilder<HomePageCrontoller>(//update
                //init: MyController(), já foi inicializado
                //initState: (_) {},
                builder: (controller) {
              return Text(
                controller.valorCodigoBarras,
                // ---> minha varável  do controle da página
                style: Get.theme.textTheme.headline6,
              );
            }),
            SizedBox(height: 10),
            TextButton.icon(
              icon: Image.asset(
                'assets/icon.png',
                width: 50,
              ),
              label: Text('Ler código de barras',
                  style: Get.theme.textTheme.headline6),
              onPressed: () => Get.find<HomePageCrontoller>()
                  .escanearCodigoBarras(),

              //₢hamar o método do botao
            )
          ],
        ),
      ),
    );
  }
}
