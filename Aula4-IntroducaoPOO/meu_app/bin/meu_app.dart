void main() {
  
  Filme filme1 = Filme(
    titulo: "Capitão América: O Primeiro Vingador",
    genero: "Ação",
    classificacao: 12,
    duracao: 125
  );

  filme1.infoFilme();
}

// Criação das classes
class Filme {
  // Definição dos atributos
  String titulo;
  String genero;
  int classificacao;
  int duracao;

  // Construtor
  Filme({
    required this.titulo, 
    required this.genero, 
    required this.classificacao, 
    required this.duracao
  });

  // Criar métodos
  void infoFilme() {
    print(
      "\n Título do filme: $titulo \n Gênero: $genero \n Classificação: $classificacao anos \n Duração: $duracao minutos",
    );
  }
}
