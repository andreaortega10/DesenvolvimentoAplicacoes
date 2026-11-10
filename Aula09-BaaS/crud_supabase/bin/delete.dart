import '../lib/conexao.dart';
import 'dart:io';

main() async {
  final supabase = conexao();

  try {
    //informe o id
    print("Digite o ID do produto a ser excluído: ");
    final id = int.parse(stdin.readLineSync()!);

    final produto = await supabase
      // informa a tabela
      .from("produtos")
      //método para exclusão
      .delete()
      // informar o id
      .eq("id", id)
      // retorna o produto excluído
      .select()
      .single();

      print("PRODUTO EXCLUÍDO COM SUCESSO!");
      print(produto);

  } catch (erro) {
    print("DEU RUIM $erro");
  } finally {
    await supabase.dispose();
  }
}
