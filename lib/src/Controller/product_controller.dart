import 'package:teste/src/controller/rest_controller.dart';
import 'package:teste/src/Entities/Product.dart';

import '../Utils/Config.dart';
import '../Entities/ResponseProduct.dart';
class ProductController{

   Future<Product?> GetProductByEan(String ean) async {//metodo pra pegar o produto na api pelo cod.barras

     var url = 'http://brasilapi.simplescontrole.com.br/mercadoria/consulta/?ean='+ean+'&access-token='+Config.Current.tokenAcesso+'&_format=json';
     var Rest = RestController();

     var response = await Rest.Get(url) ;
     return (ResponseProduct.fromJson(response.data)).product;
   }
}