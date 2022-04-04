class Client {
  var id;
  var name;
  var surname;
  var phone;
  var addres;
  var descriptionNegocio;
  var descripcionNegocio2;
  var correoElectronico;

  Client(
    {
      this.id, 
      this.name, 
      this.surname, 
      this.phone, 
      this.addres, 
      this.descriptionNegocio,
      this.descripcionNegocio2,
      this.correoElectronico
    }
      );

  factory Client.fromJson(Map<String, dynamic> json) {
    return Client(
        id: json['_id'],
        name: json['nombre'],
        surname: json['apellido'],
        phone: json['telefono'],
        addres: json ['Direccion'],
        descriptionNegocio: json['descripccion_negocio'],
        descripcionNegocio2: json['descripcion_dos'],
        correoElectronico: json['Correo']);
  }
}
