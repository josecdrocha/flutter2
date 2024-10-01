import 'conta_bancaria.dart';

void main() {
  var conta1 = ContaBancaria<double>(1000.0);
  conta1.depositar(200.0);

  conta1.sacar(500.0);
}
