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
      print(produtos);
      print("\n");
    } else {
      produtos.add(text);
    }
  }
}
