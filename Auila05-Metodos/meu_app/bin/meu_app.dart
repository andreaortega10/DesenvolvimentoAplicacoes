void main() {
  Roupa camisas = Roupa("Camisa", 100, 10);

  print(camisas.exibirInfo());
  camisas.drecrementaRoupa(5);
  print(camisas.exibirInfo());
  camisas.incrementarRoupa(7);
  print(camisas.exibirInfo());
}

class Roupa {
  // Criação dos atributos da classe
  String tipo;
  double valor;
  int quantidade;

  // Construtor -> objeto inicializa com valores obrigatórios
  Roupa(this.tipo, this.valor, this.quantidade);

  // Métodos

  // Adicionar e Remover estoque
  void drecrementaRoupa(int quantidade) {
    if (quantidade > 0 && this.quantidade >= quantidade) {
      this.quantidade -= quantidade;
      print("Estoque atualizado.");
    } else {
      print("Quantidade indisponível.");
    }
  }

  void incrementarRoupa(int quantidade) {
    if (quantidade > 0 && this.quantidade >= quantidade) {
      this.quantidade += quantidade;
      print("Estoque atualizado.");
    } else {
      print("Quantidade indisponível.");
    }
  }

  // Calcular valor total do estoque
  double valorTotal() {
    double valorTotal = valor * quantidade;
    return valorTotal;
  }

  // Exibir Informações
  String exibirInfo() {
    return "------------------------------------------\n"
        "Tipo: $tipo\n"
        "Valor: R\$ $valor\n"
        "Quantidade: $quantidade\n"
        "Valor total do estoque: R\$ ${valorTotal()}\n"
        "------------------------------------------";
  }
}
