import 'dart:math';

void main() {
  final random = Random();

  try {
    final retangulo =
        Retangulo(random.nextDouble() * 100, random.nextDouble() * 100);

    double area = retangulo.calcularArea();
    print("Area do retângulo: ${area.toStringAsFixed(2)}");
  } catch (e) {
    print(e);
  }
}

abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  final double base;
  final double altura;

  Retangulo(this.base, this.altura) {
    if (base <= 0 || altura <= 0) {
      throw Exception(
        'Dimensões inválidas, informe apenas valores positivos maiores que zero',
      );
    }
  }

  @override
  double calcularArea() {
    return base * altura;
  }
}
