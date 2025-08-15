import 'dart:io';

void main() {
  print(" Calculadora de Tiempo de Viaje Urbano ");

  stdout.write("Distancia (km): ");
  double distancia = double.parse(stdin.readLineSync()!);

  stdout.write("Medio de transporte (1-Bicicleta, 2-Carro, 3-Transporte Público): ");
  int transporte = int.parse(stdin.readLineSync()!);

  stdout.write("Hora del día (1-Pico, 2-No pico): ");
  int hora = int.parse(stdin.readLineSync()!);

  double velocidad;
  switch (transporte) {
    case 1: velocidad = 15; break; // km/h bicicleta
    case 2: velocidad = (hora == 1) ? 20 : 40; break;
    default: velocidad = (hora == 1) ? 15 : 25;
  }

  double tiempo = distancia / velocidad * 60; // en minutos

  print("Tiempo estimado: ${tiempo.toStringAsFixed(1)} minutos");
}