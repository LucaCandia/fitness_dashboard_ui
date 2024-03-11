class HealthModel {
  //Modelo para recibir los datos de salud de health details.
  final String icon;
  final String value;
  final String title;

  //lo marcamos como requerido en nuestro constructor. 
  const HealthModel({required this.icon,required this.title, required this.value});
}