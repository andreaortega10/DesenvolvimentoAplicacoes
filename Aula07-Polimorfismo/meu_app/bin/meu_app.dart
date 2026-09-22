import '../lib/estagiario.dart';
import '../lib/gerente.dart';
import '../lib/funcionario.dart';
import '../lib/vendedor.dart';

void main() {
  Funcionario gerente = Gerente("Andrea", 15000, "Vendas");
  Funcionario estagiario = Estagiario("Pedro", 200, "Design");
  Funcionario vendedor = Vendedor("Milena", 6767, 67);

  print(gerente.exibirInformacoes());
  print(vendedor.exibirInformacoes());
  print(estagiario.exibirInformacoes());
}
