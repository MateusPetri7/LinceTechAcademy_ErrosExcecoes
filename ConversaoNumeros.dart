void main(args) {
  converterStringParaInt(args[0]);
}

void converterStringParaInt(String value) {
  try {
    int numero = int.parse(value);
    print("Número digitado: $numero");
  } catch (e) {
    print("Entrada invalida. Digite apenas números inteiros.");
  }
}
