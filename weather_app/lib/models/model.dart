class Forecast {
  /// date
  /// day
  /// currentTemp
  /// highTemp
  /// lowTemp
  /// map of time / forecast
  ///
}

/*
{
  "coord": {
    "lon": -122.67,
    "lat": 45.52
  },
  "weather": [
    {
      "id": 801,
      "main": "Clouds",
      "description": "few clouds",
      "icon": "02d"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 283.32,
    "pressure": 1030,
    "humidity": 68,
    "temp_min": 283.15,
    "temp_max": 283.75
  },
  "visibility": 16093,
  "wind": {
    "speed": 1.5,
    "deg": 330
  },
  "clouds": {
    "all": 20
  },
  "dt": 1541634780,
  "sys": {
    "type": 1,
    "id": 2274,
    "message": 0.004,
    "country": "US",
    "sunrise": 1541689215,
    "sunset": 1541724481
  },
  "id": 5746545,
  "name": "Portland",
  "cod": 200
}
 */

/*
// 20181107165721
// http://api.openweathermap.org/data/2.5/forecast?q=Portland&APPID=f434e53981ac538056281117f3b69356

{
  "cod": "200",
  "message": 0.0057,
  "cnt": 39,
  "list": [
    {
      "dt": 1541646000,
      "main": {
        "temp": 276.93,
        "temp_min": 276.242,
        "temp_max": 276.93,
        "pressure": 1007.08,
        "sea_level": 1043.07,
        "grnd_level": 1007.08,
        "humidity": 93,
        "temp_kf": 0.69
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.15,
        "deg": 339.002
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-08 03:00:00"
    },
    {
      "dt": 1541656800,
      "main": {
        "temp": 274.34,
        "temp_min": 273.88,
        "temp_max": 274.34,
        "pressure": 1007.81,
        "sea_level": 1044.08,
        "grnd_level": 1007.81,
        "humidity": 88,
        "temp_kf": 0.46
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 0.96,
        "deg": 34.5018
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-08 06:00:00"
    },
    {
      "dt": 1541667600,
      "main": {
        "temp": 272.87,
        "temp_min": 272.638,
        "temp_max": 272.87,
        "pressure": 1008.62,
        "sea_level": 1045.12,
        "grnd_level": 1008.62,
        "humidity": 85,
        "temp_kf": 0.23
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.11,
        "deg": 37.5001
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-08 09:00:00"
    },
    {
      "dt": 1541678400,
      "main": {
        "temp": 271.677,
        "temp_min": 271.677,
        "temp_max": 271.677,
        "pressure": 1008.87,
        "sea_level": 1045.62,
        "grnd_level": 1008.87,
        "humidity": 82,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.15,
        "deg": 38.001
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-08 12:00:00"
    },
    {
      "dt": 1541689200,
      "main": {
        "temp": 270.776,
        "temp_min": 270.776,
        "temp_max": 270.776,
        "pressure": 1009.35,
        "sea_level": 1046.26,
        "grnd_level": 1009.35,
        "humidity": 82,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.12,
        "deg": 40.0042
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-08 15:00:00"
    },
    {
      "dt": 1541700000,
      "main": {
        "temp": 279.211,
        "temp_min": 279.211,
        "temp_max": 279.211,
        "pressure": 1009.98,
        "sea_level": 1046.41,
        "grnd_level": 1009.98,
        "humidity": 87,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.31,
        "deg": 59.5047
      },
      "rain": {

      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2018-11-08 18:00:00"
    },
    {
      "dt": 1541710800,
      "main": {
        "temp": 283.84,
        "temp_min": 283.84,
        "temp_max": 283.84,
        "pressure": 1009.1,
        "sea_level": 1044.98,
        "grnd_level": 1009.1,
        "humidity": 87,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.36,
        "deg": 50.0021
      },
      "rain": {

      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2018-11-08 21:00:00"
    },
    {
      "dt": 1541721600,
      "main": {
        "temp": 282.513,
        "temp_min": 282.513,
        "temp_max": 282.513,
        "pressure": 1008.15,
        "sea_level": 1043.96,
        "grnd_level": 1008.15,
        "humidity": 87,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.27,
        "deg": 42.502
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-09 00:00:00"
    },
    {
      "dt": 1541732400,
      "main": {
        "temp": 275.936,
        "temp_min": 275.936,
        "temp_max": 275.936,
        "pressure": 1007.74,
        "sea_level": 1043.99,
        "grnd_level": 1007.74,
        "humidity": 86,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.37,
        "deg": 45.0021
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-09 03:00:00"
    },
    {
      "dt": 1541743200,
      "main": {
        "temp": 272.927,
        "temp_min": 272.927,
        "temp_max": 272.927,
        "pressure": 1006.95,
        "sea_level": 1043.42,
        "grnd_level": 1006.95,
        "humidity": 83,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.29,
        "deg": 50.0029
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-09 06:00:00"
    },
    {
      "dt": 1541754000,
      "main": {
        "temp": 271.581,
        "temp_min": 271.581,
        "temp_max": 271.581,
        "pressure": 1005.77,
        "sea_level": 1042.35,
        "grnd_level": 1005.77,
        "humidity": 77,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 8
      },
      "wind": {
        "speed": 1.36,
        "deg": 61.0012
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-09 09:00:00"
    },
    {
      "dt": 1541764800,
      "main": {
        "temp": 270.838,
        "temp_min": 270.838,
        "temp_max": 270.838,
        "pressure": 1004.86,
        "sea_level": 1041.37,
        "grnd_level": 1004.86,
        "humidity": 78,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.11,
        "deg": 60.5067
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-09 12:00:00"
    },
    {
      "dt": 1541775600,
      "main": {
        "temp": 269.838,
        "temp_min": 269.838,
        "temp_max": 269.838,
        "pressure": 1004.21,
        "sea_level": 1040.82,
        "grnd_level": 1004.21,
        "humidity": 77,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 12
      },
      "wind": {
        "speed": 1.22,
        "deg": 74.0038
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-09 15:00:00"
    },
    {
      "dt": 1541786400,
      "main": {
        "temp": 278.084,
        "temp_min": 278.084,
        "temp_max": 278.084,
        "pressure": 1004.12,
        "sea_level": 1040.29,
        "grnd_level": 1004.12,
        "humidity": 78,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.34,
        "deg": 93.5048
      },
      "rain": {

      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2018-11-09 18:00:00"
    },
    {
      "dt": 1541797200,
      "main": {
        "temp": 281.799,
        "temp_min": 281.799,
        "temp_max": 281.799,
        "pressure": 1003.17,
        "sea_level": 1038.82,
        "grnd_level": 1003.17,
        "humidity": 80,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 32
      },
      "wind": {
        "speed": 1.3,
        "deg": 250.502
      },
      "rain": {

      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2018-11-09 21:00:00"
    },
    {
      "dt": 1541808000,
      "main": {
        "temp": 280.695,
        "temp_min": 280.695,
        "temp_max": 280.695,
        "pressure": 1002.92,
        "sea_level": 1038.55,
        "grnd_level": 1002.92,
        "humidity": 86,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 68
      },
      "wind": {
        "speed": 0.91,
        "deg": 269.002
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-10 00:00:00"
    },
    {
      "dt": 1541818800,
      "main": {
        "temp": 276.982,
        "temp_min": 276.982,
        "temp_max": 276.982,
        "pressure": 1004.01,
        "sea_level": 1039.7,
        "grnd_level": 1004.01,
        "humidity": 94,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 88
      },
      "wind": {
        "speed": 0.36,
        "deg": 348.501
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-10 03:00:00"
    },
    {
      "dt": 1541829600,
      "main": {
        "temp": 276.86,
        "temp_min": 276.86,
        "temp_max": 276.86,
        "pressure": 1004.66,
        "sea_level": 1040.67,
        "grnd_level": 1004.66,
        "humidity": 91,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 80
      },
      "wind": {
        "speed": 0.81,
        "deg": 207.508
      },
      "rain": {
        "3h": 0.03
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-10 06:00:00"
    },
    {
      "dt": 1541840400,
      "main": {
        "temp": 276.342,
        "temp_min": 276.342,
        "temp_max": 276.342,
        "pressure": 1005.09,
        "sea_level": 1041.14,
        "grnd_level": 1005.09,
        "humidity": 94,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 88
      },
      "wind": {
        "speed": 0.98,
        "deg": 260.501
      },
      "rain": {
        "3h": 0.07
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-10 09:00:00"
    },
    {
      "dt": 1541851200,
      "main": {
        "temp": 276.47,
        "temp_min": 276.47,
        "temp_max": 276.47,
        "pressure": 1005.37,
        "sea_level": 1041.58,
        "grnd_level": 1005.37,
        "humidity": 93,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 88
      },
      "wind": {
        "speed": 0.49,
        "deg": 102.002
      },
      "rain": {
        "3h": 0.175
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-10 12:00:00"
    },
    {
      "dt": 1541862000,
      "main": {
        "temp": 276.606,
        "temp_min": 276.606,
        "temp_max": 276.606,
        "pressure": 1005.9,
        "sea_level": 1042.11,
        "grnd_level": 1005.9,
        "humidity": 96,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 92
      },
      "wind": {
        "speed": 0.9,
        "deg": 144.001
      },
      "rain": {
        "3h": 0.2125
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-10 15:00:00"
    },
    {
      "dt": 1541872800,
      "main": {
        "temp": 278.697,
        "temp_min": 278.697,
        "temp_max": 278.697,
        "pressure": 1006.7,
        "sea_level": 1042.78,
        "grnd_level": 1006.7,
        "humidity": 99,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 80
      },
      "wind": {
        "speed": 0.87,
        "deg": 245.501
      },
      "rain": {
        "3h": 0.1375
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2018-11-10 18:00:00"
    },
    {
      "dt": 1541883600,
      "main": {
        "temp": 279.764,
        "temp_min": 279.764,
        "temp_max": 279.764,
        "pressure": 1006.28,
        "sea_level": 1042.07,
        "grnd_level": 1006.28,
        "humidity": 95,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 36
      },
      "wind": {
        "speed": 1.41,
        "deg": 345.502
      },
      "rain": {
        "3h": 0.025
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2018-11-10 21:00:00"
    },
    {
      "dt": 1541894400,
      "main": {
        "temp": 279.316,
        "temp_min": 279.316,
        "temp_max": 279.316,
        "pressure": 1006.34,
        "sea_level": 1042.1,
        "grnd_level": 1006.34,
        "humidity": 92,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.06,
        "deg": 359.501
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-11 00:00:00"
    },
    {
      "dt": 1541905200,
      "main": {
        "temp": 274.047,
        "temp_min": 274.047,
        "temp_max": 274.047,
        "pressure": 1006.11,
        "sea_level": 1042.49,
        "grnd_level": 1006.11,
        "humidity": 91,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 0.96,
        "deg": 41.5008
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-11 03:00:00"
    },
    {
      "dt": 1541916000,
      "main": {
        "temp": 271.956,
        "temp_min": 271.956,
        "temp_max": 271.956,
        "pressure": 1006.37,
        "sea_level": 1043.03,
        "grnd_level": 1006.37,
        "humidity": 83,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.17,
        "deg": 37.5012
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-11 06:00:00"
    },
    {
      "dt": 1541926800,
      "main": {
        "temp": 271.091,
        "temp_min": 271.091,
        "temp_max": 271.091,
        "pressure": 1006.47,
        "sea_level": 1043.33,
        "grnd_level": 1006.47,
        "humidity": 83,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 8
      },
      "wind": {
        "speed": 1.42,
        "deg": 45.0042
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-11 09:00:00"
    },
    {
      "dt": 1541937600,
      "main": {
        "temp": 270.411,
        "temp_min": 270.411,
        "temp_max": 270.411,
        "pressure": 1006.1,
        "sea_level": 1042.98,
        "grnd_level": 1006.1,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 8
      },
      "wind": {
        "speed": 1.06,
        "deg": 49.5007
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-11 12:00:00"
    },
    {
      "dt": 1541948400,
      "main": {
        "temp": 270.156,
        "temp_min": 270.156,
        "temp_max": 270.156,
        "pressure": 1005.93,
        "sea_level": 1042.83,
        "grnd_level": 1005.93,
        "humidity": 76,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.32,
        "deg": 61.0012
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-11 15:00:00"
    },
    {
      "dt": 1541959200,
      "main": {
        "temp": 278.163,
        "temp_min": 278.163,
        "temp_max": 278.163,
        "pressure": 1006.16,
        "sea_level": 1042.64,
        "grnd_level": 1006.16,
        "humidity": 83,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.41,
        "deg": 65.0024
      },
      "rain": {

      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2018-11-11 18:00:00"
    },
    {
      "dt": 1541970000,
      "main": {
        "temp": 282.963,
        "temp_min": 282.963,
        "temp_max": 282.963,
        "pressure": 1005.67,
        "sea_level": 1041.77,
        "grnd_level": 1005.67,
        "humidity": 86,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 8
      },
      "wind": {
        "speed": 1.57,
        "deg": 66.5097
      },
      "rain": {

      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2018-11-11 21:00:00"
    },
    {
      "dt": 1541980800,
      "main": {
        "temp": 281.696,
        "temp_min": 281.696,
        "temp_max": 281.696,
        "pressure": 1004.79,
        "sea_level": 1040.91,
        "grnd_level": 1004.79,
        "humidity": 82,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 8
      },
      "wind": {
        "speed": 1.87,
        "deg": 69.0015
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-12 00:00:00"
    },
    {
      "dt": 1541991600,
      "main": {
        "temp": 277.558,
        "temp_min": 277.558,
        "temp_max": 277.558,
        "pressure": 1005.03,
        "sea_level": 1041.59,
        "grnd_level": 1005.03,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 32
      },
      "wind": {
        "speed": 2.34,
        "deg": 74.5034
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-12 03:00:00"
    },
    {
      "dt": 1542002400,
      "main": {
        "temp": 276.182,
        "temp_min": 276.182,
        "temp_max": 276.182,
        "pressure": 1005.59,
        "sea_level": 1042.38,
        "grnd_level": 1005.59,
        "humidity": 87,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 24
      },
      "wind": {
        "speed": 2.39,
        "deg": 78.5088
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-12 06:00:00"
    },
    {
      "dt": 1542013200,
      "main": {
        "temp": 275.581,
        "temp_min": 275.581,
        "temp_max": 275.581,
        "pressure": 1006.15,
        "sea_level": 1043.04,
        "grnd_level": 1006.15,
        "humidity": 88,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 44
      },
      "wind": {
        "speed": 2.07,
        "deg": 81.0002
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-12 09:00:00"
    },
    {
      "dt": 1542024000,
      "main": {
        "temp": 275.173,
        "temp_min": 275.173,
        "temp_max": 275.173,
        "pressure": 1006.32,
        "sea_level": 1043.33,
        "grnd_level": 1006.32,
        "humidity": 86,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 20
      },
      "wind": {
        "speed": 1.96,
        "deg": 81.0017
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-12 12:00:00"
    },
    {
      "dt": 1542034800,
      "main": {
        "temp": 274.484,
        "temp_min": 274.484,
        "temp_max": 274.484,
        "pressure": 1007.03,
        "sea_level": 1044.03,
        "grnd_level": 1007.03,
        "humidity": 91,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 44
      },
      "wind": {
        "speed": 1.91,
        "deg": 84.0005
      },
      "rain": {

      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2018-11-12 15:00:00"
    },
    {
      "dt": 1542045600,
      "main": {
        "temp": 278.68,
        "temp_min": 278.68,
        "temp_max": 278.68,
        "pressure": 1007.71,
        "sea_level": 1044.43,
        "grnd_level": 1007.71,
        "humidity": 87,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 56
      },
      "wind": {
        "speed": 1.49,
        "deg": 86.0038
      },
      "rain": {

      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2018-11-12 18:00:00"
    },
    {
      "dt": 1542056400,
      "main": {
        "temp": 281.721,
        "temp_min": 281.721,
        "temp_max": 281.721,
        "pressure": 1007.93,
        "sea_level": 1044.04,
        "grnd_level": 1007.93,
        "humidity": 84,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 88
      },
      "wind": {
        "speed": 1.61,
        "deg": 90.503
      },
      "rain": {

      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2018-11-12 21:00:00"
    }
  ],
  "city": {
    "id": 5746545,
    "name": "Portland",
    "coord": {
      "lat": 45.5202,
      "lon": -122.6742
    },
    "country": "US",
    "population": 583776
  }
}
 */