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
      imprimir(produtos);
    } else if (text == "remover") {
      remover(produtos);
    } else {
      produtos.add(text);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

imprimir(produtos) {
  for (var i = 0; i < produtos.length; i++) {
    print("ITEM $i - ${produtos[i]}");
  }
}

remover(produtos) {
  print("==== QUAL ITEM DESEJA REMOFVER? ====");
  imprimir(produtos);
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
  print("==== ITEM REMOVIDO ====");
}
