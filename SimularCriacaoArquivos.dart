void main() {
  try {
    final nomeArquivo = "arquivo.txt";
    final arquivoTexto = ArquivoTexto(nomeArquivo);
    arquivoTexto.abrir();
  } catch (e) {
    print(e);
    rethrow;
  } finally {
    print("Fim do programa");
  }
}

abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  final String nome;

  ArquivoTexto(this.nome);

  @override
  void abrir() {
    try {
      print("Abrindo o arquivo $nome");
      throw Exception("Erro ao abrir o arquivo $nome");
    } catch (e) {
      print("Erro ao abrir o arquivo $nome");
    }
  }
}
