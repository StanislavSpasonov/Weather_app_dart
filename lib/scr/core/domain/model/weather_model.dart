import 'package:weather_home/scr/core/domain/model/base_model.dart';

enum WeatherField {
  temperature('temperature'),
  indexIcon('indexIcon');

  final String value;
  const WeatherField(this.value);
}

class WeatherModel extends BaseModel {
  final String celsiusTemperature;
  final int indexIcon;
  WeatherModel(
    super.json,
  )   : celsiusTemperature = json[WeatherField.temperature],
        indexIcon = json[WeatherField.indexIcon];
}
