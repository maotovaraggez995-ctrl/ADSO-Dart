import 'dart:io';

void main() {
  print(" Generador de QR para WiFi ");

  stdout.write("Nombre de la red (SSID): ");
  String ssid = stdin.readLineSync()!;

  stdout.write("Contraseña: ");
  String password = stdin.readLineSync()!;

  stdout.write("Tipo de seguridad (WPA/WEP/nada): ");
  String seguridad = stdin.readLineSync()!;

  String qrData = "WIFI:T:$seguridad;S:$ssid;P:$password;;";

  print("\nDatos para generar QR:");
  print(qrData);
  print("Usa esta cadena en un generador de QR online.");
}