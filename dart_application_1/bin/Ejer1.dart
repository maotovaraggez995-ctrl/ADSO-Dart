import 'dart:io';

void main() {
  print(" Calculadora de Propinas ");

  stdout.write("Valor del pedido: ");
  double valorPedido = double.parse(stdin.readLineSync()!);

  stdout.write("Tipo de servicio (1-Comida, 2-Farmacia, 3-Supermercado): ");
  int tipoServicio = int.parse(stdin.readLineSync()!);

  stdout.write("Calidad del servicio (1-Excelente, 2-Bueno, 3-Regular): ");
  int calidad = int.parse(stdin.readLineSync()!);

  double porcentajePropina;
  switch (calidad) {
    case 1:
      porcentajePropina = 0.20;
      break;
    case 2:
      porcentajePropina = 0.15;
      break;
    default:
      porcentajePropina = 0.10;
  }

  double propina = valorPedido * porcentajePropina;
  double total = valorPedido + propina;

  print("\nPropina sugerida: \$${propina.toStringAsFixed(2)}");
  print("Total a pagar: \$${total.toStringAsFixed(2)}");

  if (calidad == 1) {
    print("¡Excelente elección de servicio! 🚀");
  } else if (calidad == 2) {
    print("Gracias por tu preferencia 👍");
  } else {
    print("Esperamos que la próxima vez sea mejor 😊");
  }
}