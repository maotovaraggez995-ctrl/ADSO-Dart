class PersonaActividad {
  //Atributos variables
  String nombre;
  String apellido;
  int edad;
  double altura;

  //constructor: inicializa las variables
  PersonaActividad(this.nombre,this.apellido, this.edad, this.altura);//valor para las variables externo

  //Metodos u operaciones
  //Funcion para saludar
  void presentarse(){//Funcion que no recibe valores y retorna valores
    print('saludos a todos!!, mi nombre es: $nombre');
  }
}//Fin clase personaActividad

void main(List<String> args){
  PersonaActividad persona = PersonaActividad('Mauricio', 'Tovar',23, 1.80); //asignacion de atributos
  //instanciar o crear el objeto
  persona.presentarse();
  print('mi altura es: ${persona.altura.toStringAsFixed(2)} <-');
 persona.presentarse();
 print('mi edad es:${persona.edad}');
 print('mi apellido es: ${persona.apellido}');

 void salarioPersona(){
  if (salario>150000){
    double salarioTotal = salario+salario*.23-salario*.08;

    print('salario total: $salarioTotal');
  }

}