import 'dart:io';


void main() {
  // ? - Indica que a variável aceita valores null 
  // ! - verifica se o valor é null

  print("Digite seu nome: ");
  String? nome = stdin.readLineSync();

  print("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  print("Digite sua altura: ");
  double altura = double.parse(stdin.readLineSync()!);

  print("Seu nome é $nome!");
  print("Sua idade é $idade");
  print("Sua altura é $altura");

  print('FIM');
}
