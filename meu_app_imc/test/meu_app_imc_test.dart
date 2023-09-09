import 'package:meu_app_imc/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('Calcula IMC corretamente', () {
      final pessoa = Pessoa("João", 70, 1.75);
      expect(pessoa.calcularIMC(), equals(22.86)); // IMC esperado
    });

    test('Classifica IMC corretamente', () {
      final pessoa1 = Pessoa("Magro", 50.0, 1.75);
      expect(pessoa1.classificarIMC(), equals('Magreza leve'));

      final pessoa2 = Pessoa("Saudável", 65.0, 1.75);
      expect(pessoa2.classificarIMC(), equals('Saudável'));

      final pessoa3 = Pessoa("Obeso", 100.0, 1.75);
      expect(pessoa3.classificarIMC(), equals('Obesidade GRAU II | Severa'));
    });
  });
}
