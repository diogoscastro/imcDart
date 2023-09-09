import 'dart:io';

import 'package:meu_app_imc/models/pessoa.dart';

void main() {
  print("Bem vindo ao sistema de cálculo de IMC");

  String nome;
  double peso;
  double altura;

  nome = lerNomeComTexto("Digite o seu nome:");

  try {
    peso = lerDoubleComTexto("Digite o seu peso em kg:");
    altura = lerDoubleComTexto("Digite a sua altura em metros:");
  } catch (e) {
    print("Erro: $e");
    return;
  }

  Pessoa pessoa = Pessoa(nome, peso, altura);

  print("$nome o seu IMC é: ${pessoa.formatarIMC()}");
  print("Classificação: ${pessoa.classificarIMC()}");
}

String lerNomeComTexto(String texto) {
  while (true) {
    stdout.write('$texto ');
    final input = stdin.readLineSync();
    if (input != null && RegExp(r'^[A-Za-z\s]+$').hasMatch(input)) {
      return input;
    } else {
      print("Erro: Insira um nome válido contendo apenas letras e espaços.");
    }
  }
}

double lerDoubleComTexto(String texto) {
  while (true) {
    stdout.write('$texto ');
    try {
      final input = stdin.readLineSync();
      if (input == null) {
        throw FormatException("Entrada inválida.");
      }
      return double.parse(input);
    } catch (e) {
      print("Erro: Insira um número válido.");
    }
  }
}
