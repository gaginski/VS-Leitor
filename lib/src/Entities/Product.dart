import 'package:floor/floor.dart';

import '../Base/EntityBase.dart';

@entity
class Product extends EntityBase {
  Product(sequence, createdData, updateDate, this.id, this.nome/*, this.descricao, this.gtin, this.ean, this.imagemProduto, this.preco, this.precoMedio, this.precoMaximo, this.precoMinimo, this.largura, this.altura, this.comprimento, this.pesoLiquido, this.pesoBruto, this.imagemCodigoBarras, this.marcaNome, this.imagemMarca, this.gpcCodigo, this.gpcDescricao, this.tipoEmbalagem, this.quantidadeEmbalagem, this.ncmCodigo, this.ncmDescricao, this.cestCodigo, this.cestDescricao, this.fabricanteNome, this.baseOrigem, this.dataCriacao, this.dataAtualizacao}*/) :
        super(sequence, createdData, updateDate);

  String id;
  String nome;
  /*String? descricao;
  String? gtin;
  String? ean;
  String? imagemProduto;
  String? preco;
  String? precoMedio;
  String? precoMaximo;
  String? precoMinimo;
  String? largura;
  String? altura;
  String? comprimento;
  String? pesoLiquido;
  String? pesoBruto;
  String? imagemCodigoBarras;
  String? marcaNome;
  String? imagemMarca;
  String? gpcCodigo;
  String? gpcDescricao;
  String? tipoEmbalagem;
  String? quantidadeEmbalagem;
  String? ncmCodigo;
  String? ncmDescricao;
  String? cestCodigo;
  String? cestDescricao;
  String? fabricanteNome;
  String? baseOrigem;
  String? dataCriacao;
  String? dataAtualizacao;*/



 /* Product.fromJson(Map<String, dynamic> json) : super(0,DateTime.now().toString(), DateTime.now().toString() ){
    id = json['id'];
    nome = json['nome'];
    /*descricao = json['descricao'];
    gtin = json['gtin'];
    ean = json['ean'];
    imagemProduto = json['imagem_produto'];
    preco = json['preco'];
    precoMedio = json['preco_medio'];
    precoMaximo = json['preco_maximo'];
    precoMinimo = json['preco_minimo'];
    largura = json['largura'];
    altura = json['altura'];
    comprimento = json['comprimento'];
    pesoLiquido = json['peso_liquido'];
    pesoBruto = json['peso_bruto'];
    imagemCodigoBarras = json['imagem_codigo_barras'];
    marcaNome = json['marca_nome'];
    imagemMarca = json['imagem_marca'];
    gpcCodigo = json['gpc_codigo'];
    gpcDescricao = json['gpc_descricao'];
    tipoEmbalagem = json['tipo_embalagem'];
    quantidadeEmbalagem = json['quantidade_embalagem'];
    ncmCodigo = json['ncm_codigo'];
    ncmDescricao = json['ncm_descricao'];
    cestCodigo = json['cest_codigo'];
    cestDescricao = json['cest_descricao'];
    fabricanteNome = json['fabricante_nome'];
    baseOrigem = json['base_origem'];
    dataCriacao = json['data_criacao'];
    dataAtualizacao = json['data_atualizacao'];*/
  }*/
}