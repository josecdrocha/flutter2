import 'package:test/test.dart'; // Importando a biblioteca de teste
import 'package:banco_app/conta_bancaria.dart'; // Importando a classe ContaBancaria

void main() {
  group('Teste da Conta Bancária', () {
    test('Depósito em conta double', () {
      var conta = ContaBancaria<double>(1000.0);
      conta.depositar(200.0);
      expect(conta.obterSaldo(), equals(1200.0));
    });

    test('Saque em conta double', () {
      var conta = ContaBancaria<double>(1000.0);
      conta.sacar(500.0);
      expect(conta.obterSaldo(), equals(500.0));
    });

    test('Erro ao sacar mais que o saldo disponível', () {
      var conta = ContaBancaria<double>(1000.0);
      expect(() => conta.sacar(1500.0), throwsException);
    });

    test('Depósito e saque com tipo int', () {
      var conta = ContaBancaria<int>(1000);
      conta.depositar(200);
      conta.sacar(500);
      expect(conta.obterSaldo(), equals(700));
    });
  });
}
