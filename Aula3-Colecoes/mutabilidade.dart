void main() {
  
  
  // Var - variável pode ser reatribuida
  var nomes = ["Andrea", "Kaori"];
  nomes = ["Andrea", "kaori"];
  print(nomes.runtimeType);
  
  var id = {1, 2};
  print(id.runtimeType);
  
  var idades = {"Andrea" : 20, "Kaori" : 19};
  print(idades.runtimeType);
  
  // Final - variável não pode ser reatribuida
  final nomes2 = ["Andrea", "Kaori"];
  // nomes2 = ["Carol"]: Não pode reatribuir valores
  
  // const = não permite adição de novos valores
  const comidas = ["Croissant de Frango"];
  //comidas.add("Croissant de 4 queijos");
  
  //Listas Dinâmicas
  List<dynamic> valores = ["Andrea", 20, true];
  print(valores);
  
}