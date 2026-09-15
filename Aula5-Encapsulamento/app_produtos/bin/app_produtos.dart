import 'package:app_produtos/app_produtos.dart';

void main() {
  try {
    Produto camisa = Produto("Camisa", 100, 10);

    print(camisa.nome);
    print(camisa.quantidade);
    print(camisa.valor);

    // utilizando setters para alterar o valor
    camisa.nome = "tênis";
    camisa.quantidade = 101;
    camisa.valor = 300;

    print(camisa.nome);
    print(camisa.quantidade);
    print(camisa.valor);
  } catch (erro) {
    print(erro);
  }
}
