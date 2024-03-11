
import 'package:fitness_dashboard_ui/models/health_model.dart';

/**los datos que se muestran en el card debajo de la barra
 * de busqueda. Les damos los datos a los parametros anteriormente creado en health model.
 */

class HealthDetails {
  final healtData = const [
    HealthModel(
        icon: 'assets/icons/burn.png', value: "305", title: "Calories burned"),
    HealthModel(
        icon: 'assets/icons/steps.png', value: "10,983", title: "Steps"),
    HealthModel(
        icon: 'assets/icons/distance.png', value: "7km", title: "Distance"),
    HealthModel(icon: 'assets/icons/sleep.png', value: "7h48m", title: "Sleep"),
  ];
}