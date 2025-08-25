class Usuario {
  String nombre;
  String email;
  List<Curso> cursosInscritos = [];

  Usuario(this.nombre, this.email);

  void inscribirseEnCurso(Curso curso) {
    cursosInscritos.add(curso);
    curso.inscritos.add(this);
  }
}

class Curso {
  String titulo;
  List<Leccion> lecciones;
  List<Usuario> inscritos = [];

  Curso(this.titulo, this.lecciones);
}

class Leccion {
  String titulo;
  bool completada = false;

  Leccion(this.titulo);

  void marcarCompletada() => completada = true;
}

class Progreso {
  Usuario usuario;
  Curso curso;

  Progreso(this.usuario, this.curso);

  double calcularProgreso() {
    int completadas = curso.lecciones.where((l) => l.completada).length;
    return (completadas / curso.lecciones.length) * 100;
  }
}

void main() {
  var leccion1 = Leccion("Introducción a Dart");
  var leccion2 = Leccion("Clases y Objetos");
  var curso = Curso("Curso de Dart", [leccion1, leccion2]);

  var usuario = Usuario("Mauro", "mauro@email.com");
  usuario.inscribirseEnCurso(curso);

  leccion1.marcarCompletada();
  var progreso = Progreso(usuario, curso);

  print("Progreso de ${usuario.nombre}: ${progreso.calcularProgreso()}%");
}
