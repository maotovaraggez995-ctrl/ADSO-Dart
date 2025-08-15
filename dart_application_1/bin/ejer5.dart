import 'dart:io';

void main() {
  print(" Calculadora de Descuentos por Volumen ");

  stdout.write("Monto de la compra: ");
  double monto = double.parse(stdin.readLineSync()!);

  double descuento;
  if (monto <= 50) {
    descuento = 0;
  } else if (monto <= 100) {
    descuento = 0.05;
  } else if (monto <= 200) {
    descuento = 0.10;
  } else {
    descuento = 0.15;
  }

  double ahorro = monto * descuento;
  double total = monto - ahorro;
  double totalConIVA = total * 1.19;

  print("Descuento aplicado: ${(descuento * 100).toStringAsFixed(0)}%");
  print("Ahorro: \$${ahorro.toStringAsFixed(2)}");
  print("Total con IVA: \$${totalConIVA.toStringAsFixed(2)}");
}