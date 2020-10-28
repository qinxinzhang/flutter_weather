import 'package:flutter_weather_app/models/weather_entity.dart';

weatherEntityFromJson(WeatherEntity data, Map<String, dynamic> json) {
	if (json['consolidated_weather'] != null) {
		data.consolidatedWeather = new List<WeatherConsolidatedWeather>();
		(json['consolidated_weather'] as List).forEach((v) {
			data.consolidatedWeather.add(new WeatherConsolidatedWeather().fromJson(v));
		});
	}
	if (json['time'] != null) {
		data.time = json['time']?.toString();
	}
	if (json['sun_rise'] != null) {
		data.sunRise = json['sun_rise']?.toString();
	}
	if (json['sun_set'] != null) {
		data.sunSet = json['sun_set']?.toString();
	}
	if (json['timezone_name'] != null) {
		data.timezoneName = json['timezone_name']?.toString();
	}
	if (json['parent'] != null) {
		data.parent = new WeatherParent().fromJson(json['parent']);
	}
	if (json['sources'] != null) {
		data.sources = new List<WeatherSource>();
		(json['sources'] as List).forEach((v) {
			data.sources.add(new WeatherSource().fromJson(v));
		});
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['location_type'] != null) {
		data.locationType = json['location_type']?.toString();
	}
	if (json['woeid'] != null) {
		data.woeid = json['woeid']?.toInt();
	}
	if (json['latt_long'] != null) {
		data.lattLong = json['latt_long']?.toString();
	}
	if (json['timezone'] != null) {
		data.timezone = json['timezone']?.toString();
	}
	return data;
}

Map<String, dynamic> weatherEntityToJson(WeatherEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.consolidatedWeather != null) {
		data['consolidated_weather'] =  entity.consolidatedWeather.map((v) => v.toJson()).toList();
	}
	data['time'] = entity.time;
	data['sun_rise'] = entity.sunRise;
	data['sun_set'] = entity.sunSet;
	data['timezone_name'] = entity.timezoneName;
	if (entity.parent != null) {
		data['parent'] = entity.parent.toJson();
	}
	if (entity.sources != null) {
		data['sources'] =  entity.sources.map((v) => v.toJson()).toList();
	}
	data['title'] = entity.title;
	data['location_type'] = entity.locationType;
	data['woeid'] = entity.woeid;
	data['latt_long'] = entity.lattLong;
	data['timezone'] = entity.timezone;
	return data;
}

weatherConsolidatedWeatherFromJson(WeatherConsolidatedWeather data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['weather_state_name'] != null) {
		data.weatherStateName = json['weather_state_name']?.toString();
	}
	if (json['weather_state_abbr'] != null) {
		data.weatherStateAbbr = json['weather_state_abbr']?.toString();
	}
	if (json['wind_direction_compass'] != null) {
		data.windDirectionCompass = json['wind_direction_compass']?.toString();
	}
	if (json['created'] != null) {
		data.created = json['created']?.toString();
	}
	if (json['applicable_date'] != null) {
		data.applicableDate = json['applicable_date']?.toString();
	}
	if (json['min_temp'] != null) {
		data.minTemp = json['min_temp']?.toDouble();
	}
	if (json['max_temp'] != null) {
		data.maxTemp = json['max_temp']?.toDouble();
	}
	if (json['the_temp'] != null) {
		data.theTemp = json['the_temp']?.toDouble();
	}
	if (json['wind_speed'] != null) {
		data.windSpeed = json['wind_speed']?.toDouble();
	}
	if (json['wind_direction'] != null) {
		data.windDirection = json['wind_direction']?.toDouble();
	}
	if (json['air_pressure'] != null) {
		data.airPressure = json['air_pressure']?.toDouble();
	}
	if (json['humidity'] != null) {
		data.humidity = json['humidity']?.toInt();
	}
	if (json['visibility'] != null) {
		data.visibility = json['visibility']?.toDouble();
	}
	if (json['predictability'] != null) {
		data.predictability = json['predictability']?.toInt();
	}
	return data;
}

Map<String, dynamic> weatherConsolidatedWeatherToJson(WeatherConsolidatedWeather entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['weather_state_name'] = entity.weatherStateName;
	data['weather_state_abbr'] = entity.weatherStateAbbr;
	data['wind_direction_compass'] = entity.windDirectionCompass;
	data['created'] = entity.created;
	data['applicable_date'] = entity.applicableDate;
	data['min_temp'] = entity.minTemp;
	data['max_temp'] = entity.maxTemp;
	data['the_temp'] = entity.theTemp;
	data['wind_speed'] = entity.windSpeed;
	data['wind_direction'] = entity.windDirection;
	data['air_pressure'] = entity.airPressure;
	data['humidity'] = entity.humidity;
	data['visibility'] = entity.visibility;
	data['predictability'] = entity.predictability;
	return data;
}

weatherParentFromJson(WeatherParent data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['location_type'] != null) {
		data.locationType = json['location_type']?.toString();
	}
	if (json['woeid'] != null) {
		data.woeid = json['woeid']?.toInt();
	}
	if (json['latt_long'] != null) {
		data.lattLong = json['latt_long']?.toString();
	}
	return data;
}

Map<String, dynamic> weatherParentToJson(WeatherParent entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['location_type'] = entity.locationType;
	data['woeid'] = entity.woeid;
	data['latt_long'] = entity.lattLong;
	return data;
}

weatherSourceFromJson(WeatherSource data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['slug'] != null) {
		data.slug = json['slug']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['crawl_rate'] != null) {
		data.crawlRate = json['crawl_rate']?.toInt();
	}
	return data;
}

Map<String, dynamic> weatherSourceToJson(WeatherSource entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['slug'] = entity.slug;
	data['url'] = entity.url;
	data['crawl_rate'] = entity.crawlRate;
	return data;
}