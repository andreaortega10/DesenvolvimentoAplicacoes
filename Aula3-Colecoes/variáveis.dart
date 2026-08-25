void main() {
  // List - armazena valores duplicados
  List<String> listaNomes = ["Andrea", "Kaori", "Carol"];
  print("Lista de Nomes:");
  print(listaNomes);
  print("Primeiro nome: ${listaNomes[0]}");
  print("Segundo nome: ${listaNomes[1]}");
  print("Terceiro nome: ${listaNomes[2]}");
  print ("\n");
 
  
  // Set - ignora silenciosamente os valores duplicados
  Set<String> cores = {"Azul", "Amarelo", "Azul"};
  print("Lista de Cores:");
  print (cores);
  print ("\n");
 
  // Map - arm,azena uma coleção de valores, utilizando uma estrutura de chave e valor
  Map<String, int> idades = {
    "Andrea": 20,
    "Kaori": 19
  };
 
  print("Lista de Idades:");
  print(idades);
  print ("\n");
 
   Map<String, String> nomes = {
    "Nome1": "Andrea",
    "Nome2": "Kaori"
   };
  print("Lista de Lista:");
  print(nomes);

}