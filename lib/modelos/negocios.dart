class Client {
  var id;
  var name;
  var categoria;
  var phone;
  var addres;
  var eslogan;
  var descriptionNegocio;
  var descriptionNegocio2;
  var correoElectronico;

  Client(
    {
      this.id, 
      this.name, 
      this.categoria, 
      this.phone, 
      this.addres,
      this.eslogan, 
      this.descriptionNegocio,
      this.descriptionNegocio2,
      this.correoElectronico
    }
      );
  factory Client.fromJson(Map<String, dynamic> json) {
    return Client(
        id: json['_id'],
        name: json['nombre_negocio'],
        categoria: json['categoria'],
        phone: json['Num_telefonico'],
        addres: json['Direccion'],
        eslogan: json['Eslogan'],
        descriptionNegocio: json['descripccion_negocio'],
        descriptionNegocio2: json['descripccion_dos'],
        correoElectronico: json['Correo']);
  }
}
