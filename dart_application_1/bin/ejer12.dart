class Usuario {
  String nombre;
  List<Libro> librosDisponibles = [];
  List<Intercambio> intercambios = [];

  Usuario(this.nombre);

  void agregarLibro(Libro libro) => librosDisponibles.add(libro);
}

class Libro {
  String titulo;
  String autor;

  Libro(this.titulo, this.autor);
}

class Intercambio {
  Usuario solicitante;
  Usuario dueño;
  Libro libro;
  String estado = "Pendiente";

  Intercambio(this.solicitante, this.dueño, this.libro);

  void aceptar() => estado = "Aceptado";
  void rechazar() => estado = "Rechazado";
}

void main() {
  var usuario1 = Usuario("Mauro");
  var usuario2 = Usuario("Ana");

  var libro1 = Libro("El Alquimista", "Paulo Coelho");
  usuario2.agregarLibro(libro1);

  var intercambio = Intercambio(usuario1, usuario2, libro1);
  usuario1.intercambios.add(intercambio);
  usuario2.intercambios.add(intercambio);

  intercambio.aceptar();
  print("Intercambio estado: ${intercambio.estado}");
}
