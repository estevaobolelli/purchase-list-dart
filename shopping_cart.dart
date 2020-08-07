import 'dart:io';

main() {
  List<String> produtos = [];
  bool condicao = true;

  while (condicao) {
    print("==== ADICIONE UM ITEM ====");
    String text = stdin.readLineSync();
    if (text == "sair") {
      print("==== TERMINOU A EXECUTAR ====");
      condicao = false;
    } else if (text == "imprimir") {
      for (var i = 0; i < produtos.length; i++) {
        print("ITEM $i - ${produtos[i]}");
      }
    } else if (text == "remover") {
      print("==== QUAL ITEM DESEJA REMOFVER? ====");
      for (var i = 0; i < produtos.length; i++) {
        print("ITEM $i - ${produtos[i]}");
      }
      int item = int.parse(stdin.readLineSync());
      produtos.removeAt(item);
      print("==== ITEM REMOVIDO ====");
    } else {
      produtos.add(text);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}
