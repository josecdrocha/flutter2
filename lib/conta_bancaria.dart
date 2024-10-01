class ContaBancaria<T extends num> {
  T saldo;

  ContaBancaria(this.saldo);

  void depositar(T valor) {
    saldo = (saldo + valor) as T;
  }

  void sacar(T valor) {
    if (valor <= saldo) {
      saldo = (saldo - valor) as T;
    } else {
      throw Exception("Saldo insuficiente");
    }
  }

  T obterSaldo() {
    return saldo;
  }
}
