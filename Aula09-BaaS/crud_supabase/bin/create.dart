// registrar informações do banco de dados

import '../lib/conexao.dart';

main() async {
  // CONEXAO

  final supabase = conexao();

  try {
    final produto = await supabase
        // seleciona a tabela
        .from("produtos")
        // inserir ddos na tabela
        .insert({'nome': 'Computador', 'preco': 150.00, 'quantidade': 10})
        // retorna o registro
        .select()
        // registro único
        .single();

    print(produto);
  } catch (erro) {
    print("Ocorreu o seguinte erro $erro");
  } finally {
    // encerra a conexão
    await supabase.dispose();
  }
}
