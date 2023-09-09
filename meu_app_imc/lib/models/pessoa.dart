class Pessoa {
  String nome;
  double _peso; // Peso é uma informação privada (_peso)
  double _altura; // Altura é uma informação privada (_altura)

  Pessoa(this.nome, this._peso, this._altura);

  double calcularIMC() {
    return _peso / (_altura * _altura);
  }

  String formatarIMC() {
    return calcularIMC().toStringAsFixed(2); // Limita a 2 casas decimais
  }

  String classificarIMC() {
    double imc = calcularIMC();
    if (imc < 16) {
      return 'Magreza grave';
    } else if (imc < 17) {
      return 'Magreza moderada';
    } else if (imc < 18.5) {
      return 'Magreza leve';
    } else if (imc < 25) {
      return 'Saudável';
    } else if (imc < 30) {
      return 'Sobrepeso';
    } else if (imc < 35) {
      return 'Obesidade GRAU I';
    } else if (imc < 40) {
      return 'Obesidade GRAU II | Severa';
    } else {
      return 'Obesidade GRAU III | Mórbida';
    }
  }
}
