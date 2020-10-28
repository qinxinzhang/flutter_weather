import 'package:flutter_weather_app/generated/json/base/json_convert_content.dart';
import 'package:flutter_weather_app/generated/json/base/json_field.dart';

class WeatherEntity with JsonConvert<WeatherEntity> {
	@JSONField(name: "consolidated_weather")
	List<WeatherConsolidatedWeather> consolidatedWeather;
	String time;
	@JSONField(name: "sun_rise")
	String sunRise;
	@JSONField(name: "sun_set")
	String sunSet;
	@JSONField(name: "timezone_name")
	String timezoneName;
	WeatherParent parent;
	List<WeatherSource> sources;
	String title;
	@JSONField(name: "location_type")
	String locationType;
	int woeid;
	@JSONField(name: "latt_long")
	String lattLong;
	String timezone;
}

class WeatherConsolidatedWeather with JsonConvert<WeatherConsolidatedWeather> {
	int id;
	@JSONField(name: "weather_state_name")
	String weatherStateName;
	@JSONField(name: "weather_state_abbr")
	String weatherStateAbbr;
	@JSONField(name: "wind_direction_compass")
	String windDirectionCompass;
	String created;
	@JSONField(name: "applicable_date")
	String applicableDate;
	@JSONField(name: "min_temp")
	double minTemp;
	@JSONField(name: "max_temp")
	double maxTemp;
	@JSONField(name: "the_temp")
	double theTemp;
	@JSONField(name: "wind_speed")
	double windSpeed;
	@JSONField(name: "wind_direction")
	double windDirection;
	@JSONField(name: "air_pressure")
	double airPressure;
	int humidity;
	double visibility;
	int predictability;
}

class WeatherParent with JsonConvert<WeatherParent> {
	String title;
	@JSONField(name: "location_type")
	String locationType;
	int woeid;
	@JSONField(name: "latt_long")
	String lattLong;
}

class WeatherSource with JsonConvert<WeatherSource> {
	String title;
	String slug;
	String url;
	@JSONField(name: "crawl_rate")
	int crawlRate;
}
