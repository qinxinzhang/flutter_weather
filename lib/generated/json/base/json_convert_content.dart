// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter_weather_app/models/weather_entity.dart';
import 'package:flutter_weather_app/generated/json/weather_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {			case WeatherEntity:
			return weatherEntityFromJson(data as WeatherEntity, json) as T;			case WeatherConsolidatedWeather:
			return weatherConsolidatedWeatherFromJson(data as WeatherConsolidatedWeather, json) as T;			case WeatherParent:
			return weatherParentFromJson(data as WeatherParent, json) as T;			case WeatherSource:
			return weatherSourceFromJson(data as WeatherSource, json) as T;    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
		switch (type) {			case WeatherEntity:
			return weatherEntityToJson(data as WeatherEntity);			case WeatherConsolidatedWeather:
			return weatherConsolidatedWeatherToJson(data as WeatherConsolidatedWeather);			case WeatherParent:
			return weatherParentToJson(data as WeatherParent);			case WeatherSource:
			return weatherSourceToJson(data as WeatherSource);    }
    return data as T;
  }
  //Go back to a single instance by type
  static _fromJsonSingle(String type, json) {
    switch (type) {			case 'WeatherEntity':
			return WeatherEntity().fromJson(json);			case 'WeatherConsolidatedWeather':
			return WeatherConsolidatedWeather().fromJson(json);			case 'WeatherParent':
			return WeatherParent().fromJson(json);			case 'WeatherSource':
			return WeatherSource().fromJson(json);    }
    return null;
  }

  //empty list is returned by type
  static _getListFromType(String type) {
    switch (type) {			case 'WeatherEntity':
			return List<WeatherEntity>();			case 'WeatherConsolidatedWeather':
			return List<WeatherConsolidatedWeather>();			case 'WeatherParent':
			return List<WeatherParent>();			case 'WeatherSource':
			return List<WeatherSource>();    }
    return null;
  }

  static M fromJsonAsT<M>(json) {
    String type = M.toString();
    if (json is List && type.contains("List<")) {
      String itemType = type.substring(5, type.length - 1);
      List tempList = _getListFromType(itemType);
      json.forEach((itemJson) {
        tempList
            .add(_fromJsonSingle(type.substring(5, type.length - 1), itemJson));
      });
      return tempList as M;
    } else {
      return _fromJsonSingle(M.toString(), json) as M;
    }
  }
}