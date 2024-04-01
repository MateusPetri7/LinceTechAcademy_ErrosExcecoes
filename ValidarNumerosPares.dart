void main(args) {
  try {
    final numero = int.parse(args[0]);
    validarSeNumeroEhPar(numero);
    print("Entrada correta, você inseriu um número par.");
  } on Exception catch (e) {
    print(e);
  }
}

void validarSeNumeroEhPar(int numero) {
  if (numero.isOdd) {
    throw Exception("Entrada inválida. Insira apenas números pares.");
  }
}
