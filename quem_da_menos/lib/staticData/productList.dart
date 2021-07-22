import 'package:quem_da_menos/models/produto_model.dart';

List<Produto> productList = [
  Produto(categoria: 3, id: 1, name: 'Filé Mignon', price: 80.99, imagem: 'https://cdn.awsli.com.br/800x800/1561/1561317/produto/61075456/ac63721154.jpg'),
  Produto(categoria: 3, id: 2, name: 'Peito de Frango', price: 17.99, imagem: 'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/16025/medium/peito-de-frango-com-osso-resfriado-kg_18931.png'),
  Produto(categoria: 6, id: 3, name: 'Maçã', price: 80.99, imagem: 'https://superprix.vteximg.com.br/arquivos/ids/175207-600-600/Maca-Argentina--1-unidade-aprox.-200g-.png?v=636294203590200000'),
  Produto(categoria: 9, id: 4, name: 'Cenoura', price: 80.99, imagem: 'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/15131/medium/cenoura-kg_10840.jpg'),
  Produto(categoria: 9, id: 5, name: 'Parmesão Marca Djabo', price: 80.99, imagem: 'https://a-static.mlcdn.com.br/618x463/queijo-parmesao-scala-premium/tioaliemporioarabe/5f6e65094a27ef6dfc314927/f8b45fb0371c401666ef7851177d27cc.jpg'),
  Produto(categoria: 2, id: 6, name: 'Coca-cola 2l', price: 80.99, imagem: 'https://static.distribuidoracaue.com.br/media/catalog/product/cache/1/thumbnail/600x800/9df78eab33525d08d6e5fb8d27136e95/r/e/refrigerante-coca-cola-2-litros.jpg'),
];

class ListProducts {
  String titlelist = "";
  String definitionlist = "";

  ListProducts(String titlelist, String definitionlist) {
    this.titlelist = titlelist;
    this.definitionlist = definitionlist;
  }
}