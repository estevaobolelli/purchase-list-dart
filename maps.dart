import 'dart:io';

Map<String, dynamic> cadastro = {};
main() {
  bool condicao = true;

  print("\x1B[2J\x1B[0;0H");

  while (condicao) {
    print("=== Digite um comando ===");
    String comando = stdin.readLineSync();
    if (comando == "sair") {
      print("=== Programa finalizado.");
      condicao = false;
    } else if (comando == "cadastro") {
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastro);
    } else {
      print("comando invalido");
    }
  }
}

cadastrar() {
  print("=== Digite o nome");
  cadastro["nome"] = stdin.readLineSync();

  print("=== Digite a idade");
  cadastro["idade"] = stdin.readLineSync();

  print("=== Digite a cidade");
  cadastro["cidade"] = stdin.readLineSync();

  print("=== Digite o Estado");
  cadastro["estado"] = stdin.readLineSync();
}
