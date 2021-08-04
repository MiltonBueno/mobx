import 'package:mobx/mobx.dart';
import 'package:mobx_aula/item_controller.dart';
part 'principal_controller.g.dart';

class PrincipalController = PrincipalControllerBase with _$PrincipalController;

//A utilização do mixin Store ↓ é para geração dos códigos automáticos
abstract class PrincipalControllerBase with Store{

  @observable
  String novoItem = "";

  @action
  void setNovoItem(String valor) => novoItem = valor;

  ObservableList<ItemController> listaItens = ObservableList<ItemController>();


  @action
  void adicionarItem(){
    listaItens.add(ItemController(novoItem));
    print(listaItens.toString());
  }

}