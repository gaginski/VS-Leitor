import 'package:flutter/cupertino.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:teste/src/controller/product_controller.dart';

import '../../db/database.dart';
import '../Utils/Config.dart';

class HomePageCrontoller extends GetxController{ //controller para atribuir funções para os botões

  String valorCodigoBarras = '';

  Future<void> escanearCodigoBarras() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', //cor da linha do scanner
        'Cancelar', //botão de cancelar o scanner
        true, //"deseja ligar o flash?"
        ScanMode.BARCODE);

//checagem pra  retornar um valor negativo
    if(barcodeScanRes == '-1'){ //se eu cancelar, ele retornará isso
      Get.snackbar('Cancelado', 'Leitura cancelada pelo usuário');
    }else{
      var controllerProd = new ProductController();
      var produto = await controllerProd.GetProductByEan(barcodeScanRes); //passa o ean, pega o produto na api, e constroi um obejto
      if(produto != null && produto.nome != null)
        Config.Current.db?.productRepositoryDao.insertItem(produto);
      valorCodigoBarras = produto?.nome ?? 'Produto não encontrado na base de dados.'; //se ele nao achar nada na api, ele retorna isso
      update(); //metodo que atualiza a tela
    }
  }
}


