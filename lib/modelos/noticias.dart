class Noticias {
  var id;
  var nombreResponsable;
  var email;
  var categoria;
  var titulo;
  var descripccion;
  var descripccion2;

  Noticias(
    {
      this.id, 
      this.nombreResponsable,
      this.email,
      this.categoria,
      this.titulo,
      this.descripccion,
      this.descripccion2
    }
      );
  factory Noticias.fromJson(Map<String, dynamic> json) {
    return Noticias(
        id: json['_id'] as String,
        nombreResponsable: json['nombre_responsable'] as String,
        email: json['email']as String,
        categoria: json['categoria']as String,
        titulo: json['Titulo']as String,
        descripccion: json['descripccion']as String,
        descripccion2: json['descripccion_dos']as String);
  }
}