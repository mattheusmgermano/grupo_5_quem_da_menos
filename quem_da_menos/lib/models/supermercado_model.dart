import 'package:quem_da_menos/models/produto_model.dart';

class Supermercado {
  String name = '';
  List<String> avaliacao = [];
  List<Produto> produtos = [];
  int notaFresco = 0;
  int notaMuitoBom = 0;
  int notaRuim = 0;
  int notaFeio = 0;

  void avaliacoes (){
    for(var prod in produtos){
      if(prod.frescos > 10){
        notaFresco++;
        if(!avaliacao.contains("Este mercado tem produtos frescos!")){
          avaliacao.add("Este mercado tem produtos frescos!");
        }
      } else if (prod.muitoBom > 10){
        notaMuitoBom++;
        if(!avaliacao.contains("Este mercado tem excelentes produtos!")){
          avaliacao.add("Este mercado tem excelentes produtos!");
        }
      }else if (prod.bom > 50){
        notaMuitoBom++;
        if(!avaliacao.contains("Este mercado tem excelentes produtos!")){
          avaliacao.add("Este mercado tem excelentes produtos!");
        }
      }else if (prod.ruim > 10){
        notaMuitoBom--;
        notaRuim++;
        if(!avaliacao.contains("Este mercado tem produtos ruins!")){
          avaliacao.add("Este mercado tem produtos ruins!");
        }
      }else if (prod.feio > 10){
        notaFresco--;
        notaFeio++;
        if(!avaliacao.contains("Este mercado tem produtos feios ou mal preservados!")){
          avaliacao.add("Este mercado tem feios ou mal preservados!");
        }
      }
    }
  }
}
class Zaffari extends Supermercado{

  int id = 1;
  String name = "Zaffari Ipiranga";
  String endereco = "Avenida Ipiranga, 5200";
  String imagem = "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/image%201.png?alt=media&token=123b8106-0ac7-4363-8f2a-cb329deedbca";
  int notaFresco = 0;
  int notaMuitoBom = 0;
  int notaRuim = 0;
  int notaFeio = 0;
  List<String> avaliacao = [];

  List<Produto> produtos = [
    Produto(categoria: 3, id: 1, name: 'Filé Mignon', price: 50.99, imagem: 'https://cdn.awsli.com.br/800x800/1561/1561317/produto/61075456/ac63721154.jpg'),
    Produto(categoria: 3, id: 2, name: 'Peito de Frango', price: 17.99, imagem: 'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/16025/medium/peito-de-frango-com-osso-resfriado-kg_18931.png'),
    Produto(categoria: 6, id: 3, name: 'Maçã', price: 6.99, imagem: 'https://superprix.vteximg.com.br/arquivos/ids/175207-600-600/Maca-Argentina--1-unidade-aprox.-200g-.png?v=636294203590200000'),
    Produto(categoria: 9, id: 4, name: 'Cenoura', price: 4.99, imagem: 'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/15131/medium/cenoura-kg_10840.jpg'),
    Produto(categoria: 9, id: 5, name: 'Parmesão Marca Djabo', price: 15.99, imagem: 'https://a-static.mlcdn.com.br/618x463/queijo-parmesao-scala-premium/tioaliemporioarabe/5f6e65094a27ef6dfc314927/f8b45fb0371c401666ef7851177d27cc.jpg'),
    Produto(categoria: 2, id: 6, name: 'Coca-cola 2l', price: 6.99, imagem: 'https://static.distribuidoracaue.com.br/media/catalog/product/cache/1/thumbnail/600x800/9df78eab33525d08d6e5fb8d27136e95/r/e/refrigerante-coca-cola-2-litros.jpg')
  ];
}

class Carrefour extends Supermercado{

  int id = 2;
  String name = "Carrefour - Av. Bento Gonçalves";
  String endereco = "Rua Albion, nº 99";
  String imagem = "https://logosmarcas.net/wp-content/uploads/2020/11/Carrefour-Logo.png";
  int notaFresco = 0;
  int notaMuitoBom = 0;
  int notaRuim = 0;
  int notaFeio = 0;
  List<String> avaliacao = [];

  List<Produto> produtos = [
  Produto(categoria: 3, id: 1, name: 'Filé Mignon', price: 47.99, imagem: 'https://cdn.awsli.com.br/800x800/1561/1561317/produto/61075456/ac63721154.jpg'),
  Produto(categoria: 3, id: 2, name: 'Peito de Frango', price: 26.99, imagem: 'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/16025/medium/peito-de-frango-com-osso-resfriado-kg_18931.png'),
  Produto(categoria: 6, id: 3, name: 'Maçã', price: 9.99, imagem: 'https://superprix.vteximg.com.br/arquivos/ids/175207-600-600/Maca-Argentina--1-unidade-aprox.-200g-.png?v=636294203590200000'),
  Produto(categoria: 9, id: 4, name: 'Cenoura', price: 8.99, imagem: 'https://io2.convertiez.com.br/m/superpaguemenos/shop/products/images/15131/medium/cenoura-kg_10840.jpg'),
  Produto(categoria: 9, id: 5, name: 'Parmesão Marca Djabo', price: 23.99, imagem: 'https://a-static.mlcdn.com.br/618x463/queijo-parmesao-scala-premium/tioaliemporioarabe/5f6e65094a27ef6dfc314927/f8b45fb0371c401666ef7851177d27cc.jpg'),
  Produto(categoria: 2, id: 6, name: 'Coca-cola 2l', price: 7.99, imagem: 'https://static.distribuidoracaue.com.br/media/catalog/product/cache/1/thumbnail/600x800/9df78eab33525d08d6e5fb8d27136e95/r/e/refrigerante-coca-cola-2-litros.jpg')
  ];
}