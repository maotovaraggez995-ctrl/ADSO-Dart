import 'dart:io';

void main() {
  print(" Verificador de Contraseñas Seguras ");

  stdout.write("Ingrese una contraseña: ");
  String password = stdin.readLineSync()!;

  int score = 0;

  if (password.length >= 8) score++;
  if (RegExp(r'[A-Z]').hasMatch(password)) score++;
  if (RegExp(r'[a-z]').hasMatch(password)) score++;
  if (RegExp(r'[0-9]').hasMatch(password)) score++;
  if (RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(password)) score++;

  String nivel;
  if (score <= 2) {
    nivel = "Débil";
  } else if (score == 3) {
    nivel = "Media";
  } else if (score == 4) {
    nivel = "Fuerte";
  } else {
    nivel = "Muy Fuerte";
  }

  print("Nivel de seguridad: $nivel");

  if (nivel != "Muy Fuerte") {
    print("Sugerencia: Usa mayúsculas, minúsculas, números y símbolos.");
  }
}