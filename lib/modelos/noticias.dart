class Noticias {
  var id;
  var titulo;
  var dependencia;
  var fecha;
  var parrafo1;
  var parrafo2;
  var parrafo3;

  Noticias(
      {this.id,
      this.titulo,
      this.dependencia,
      this.fecha,
      this.parrafo1,
      this.parrafo2,
      this.parrafo3});
  factory Noticias.fromJson(Map<String, dynamic> json) {
    return Noticias(
        id: json['_id'] as String,
        titulo: json['titulo'] as String,
        dependencia: json['dependencia'] as String,
        fecha: json['fecha'] as String,
        parrafo1: json['parrafo1'] as String,
        parrafo2: json['parrafo2'] as String,
        parrafo3: json['parrafo3'] as String);
  }
}
