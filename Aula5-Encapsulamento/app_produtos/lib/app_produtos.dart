class Produto {
  String _nome = "";
  double _valor = 0;
  int _quantidade = 0;

  //Construitor
  Produto(String nome, double valor, int quantidade) {
    this.nome = nome;
    this.valor = valor;
    this.quantidade = quantidade;
  }

  //Getters

  String get nome => _nome;

  double get valor => _valor;

  int get quantidade => _quantidade;

  //Setters
  set nome(String novoNome) {
    if (novoNome.isEmpty) {
      throw ArgumentError("Valor inválido");
    } else {
      _nome = novoNome;
    }
  }

  set valor(double novoValor) {
    if (novoValor < 0) {
      throw ArgumentError("Valor inválido");
    } else {
      _valor = novoValor;
    }
  }

  set quantidade(int novaQuantidade) {
    if (novaQuantidade < 0) {
      throw ArgumentError("Valor inválido");
    } else {
      _quantidade = novaQuantidade;
    }
  }
}
