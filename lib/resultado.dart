import 'dart:math';

class Resultado {
  final double valor;
  final String descricao;
  final Categoria categoria;

  const Resultado(this.categoria, this.descricao, this.valor);
}

enum Categoria {
  magreza,
  normal,
  sobrepeso,
  obesidade,
  obesidadeGrave,
}

class CalculadoraIMC {
  Resultado getResultado(int peso, int altura) {
    double imc = calculaImc(peso, altura);
    Categoria categoria = getCategoria(imc);
    return Resultado(getCategoria(imc), getDescricao(categoria), imc);
  }

  double calculaImc(int peso, int altura) {
    double imc;
    imc = peso / pow(altura / 100, 2);
    return imc;
  }

  Categoria getCategoria(imc) {
    if (imc < 19) {
      return Categoria.magreza;
    } else if (imc >= 19.0 || imc <= 25.0) {
      return Categoria.normal;
    } else if (imc >= 25.0 || imc <= 30.0) {
      return Categoria.sobrepeso;
    } else if (imc >= 30.0 || imc <= 40.0) {
      return Categoria.obesidade;
    } else {
      return Categoria.obesidadeGrave;
    }
  }

  String getDescricao(Categoria categoria) {
    switch (categoria) {
      case Categoria.magreza:
        return "Você precisa se alimentar melhor, fique esperto";
      case Categoria.normal:
        return "Tudo ok por aqui. Continue assim";
      case Categoria.sobrepeso:
        return "OPA. Fique atento e procure um nutricionista o quanto antes";
      case Categoria.obesidadeGrave:
        return "ALERTA. Procure um nutricionista o mais rápido possível";
      default:
        return " ";
    }
  }
}
