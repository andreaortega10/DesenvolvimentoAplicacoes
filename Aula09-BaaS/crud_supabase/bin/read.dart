import '../lib/conexao.dart';

main() async {
  final supabase = conexao();

  try {
    final produtos = await supabase
        // definir a tabela que iremos consultar
        .from("produtos")
        // consultar os dados
        .select("id, nome, preco, quantidade")
        // ordenação ID
        .order('id');

    if (produtos.isEmpty) {
      print("Nenhum produto cadastrado!");
      return;
    }

    for (final produto in produtos) {

      print("ID: ${produto['id']}");
      print("NOME: ${produto['nome']}");
      print("PRECO: ${produto['preco']}");
      print("QUANTIDADE: ${produto['quantidade']}");
      final valorTotal = produto['preco'] * produto['quantidade'];
      print("VALOR TOTAL: R\$ ${valorTotal}");

      // converter
      //final preco =
    }
  } catch (erro) {
    print(erro);
  } finally {
    await supabase.dispose();
  }
}
