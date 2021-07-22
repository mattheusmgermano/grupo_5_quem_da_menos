import 'package:quem_da_menos/models/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

class Produto extends Model{

  UserModel user = UserModel();
  int categoria;
  int id;
  String name;
  double price;
  int frescos = 0;
  int muitoBom = 0;
  int bom = 0;
  int ruim = 0;
  int feio = 0;
  String imagem;

  Produto({required this.categoria, required this.id, required this.name, required this.price, required this.imagem});

  void apontarPreco(){
    if(user.userOn && price<=(this.price*1.5) && price>=(this.price * 0.5)){
      this.price = price;
    }

    void notaFrescos(){
      this.frescos++;
    }
    void notaMuitoBom(){
      this.muitoBom++;
    }
    void notaBom(){
      this.bom++;
    }
    void notaRuim(){
      this.ruim++;
    }
    void notaFeio(){
      this.feio++;
    }
  }

}