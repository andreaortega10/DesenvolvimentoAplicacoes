void main() {
  // tipagem estática
  int idade = 19;
  double altura = 1.70;
  String nome = "Joao";
  bool ativo = true;

  print("Nome: $nome");
  print("Altura: $altura");
  print("Idade: $idade");
  print("Ativo: $ativo");

  // tipagem dinâmica
  // var x dynamic
  // o var não aceita a mudança no tipo
  var sobrenome = 'Silva';
  var peso = 70.20;

  // o dynamic aceita mudança no tipoo
  dynamic terceiroNome = 'Souza';
  terceiroNome = 25;
  
}
