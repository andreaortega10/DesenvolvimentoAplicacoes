import '../lib/conexao.dart';
import 'dart:io';

main() async {
  final supabase = conexao();

  try {
    print("Digite o ID do produto que deseja alterar: ");
    final id = int.parse(stdin.readLineSync()!);

    // solicita o nome
    print("Digite o novo nome do produto que deseja alterar: ");
    final nome = stdin.readLineSync();

    // solicita o preço
    print("Digite o novo preco do produto que deseja alterar: ");
    final preco = double.parse(stdin.readLineSync()!);

    // solicita a quantidade
    print("Digite a nova quantidade do produto que deseja alterar: ");
    final quantidade = int.parse(stdin.readLineSync()!);

    final produto = await supabase
        // informar a tabela
        .from("produtos")
        // método para atualizar
        .update({"nome": nome, "preco": preco, "quantidade": quantidade})
        // identificador
        .eq("id", id)
        // retornar os valores atualizados
        .select()
        .single();

        print(produto);
        print("ATUALIZAÇÃO FEITA COM SUCESSO!");

  } catch (erro) {
    print(erro);
  } finally {
    await supabase.dispose();
  }
}
