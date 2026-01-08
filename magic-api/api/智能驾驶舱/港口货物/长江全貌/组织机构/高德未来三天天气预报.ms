{
  "properties" : { },
  "id" : "a9bc36e7166f4f90845e423aba058261",
  "script" : null,
  "groupId" : "e4f5142bedb24c9bbc2981102d51e07a",
  "name" : "高德未来三天天气预报",
  "createTime" : null,
  "updateTime" : 1753942614493,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/gdForecastWeatherInfo",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portPinyin",
    "value" : "WUHAN",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "dateForecast",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"inCityName\": \"水富\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"多云~多云\",\n        \"temperature\": \"38℃/25℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"多云\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"SHUIFU\",\n        \"orderNo\": 1\n    }, {\n        \"inCityName\": \"水富\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"39℃/25℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"SHUIFU\",\n        \"orderNo\": 1\n    }, {\n        \"inCityName\": \"水富\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"多云~多云\",\n        \"temperature\": \"37℃/27℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"多云\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"SHUIFU\",\n        \"orderNo\": 1\n    }, {\n        \"inCityName\": \"宜宾\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"39℃/25℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"YIBIN\",\n        \"orderNo\": 2\n    }, {\n        \"inCityName\": \"宜宾\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"39℃/25℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"YIBIN\",\n        \"orderNo\": 2\n    }, {\n        \"inCityName\": \"宜宾\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~多云\",\n        \"temperature\": \"39℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"YIBIN\",\n        \"orderNo\": 2\n    }, {\n        \"inCityName\": \"泸州\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"39℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"LUZHOU\",\n        \"orderNo\": 3\n    }, {\n        \"inCityName\": \"泸州\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"39℃/28℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"LUZHOU\",\n        \"orderNo\": 3\n    }, {\n        \"inCityName\": \"泸州\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~多云\",\n        \"temperature\": \"39℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"LUZHOU\",\n        \"orderNo\": 3\n    }, {\n        \"inCityName\": \"重庆\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"41℃/31℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"CHONGQING\",\n        \"orderNo\": 4\n    }, {\n        \"inCityName\": \"重庆\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"41℃/31℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"CHONGQING\",\n        \"orderNo\": 4\n    }, {\n        \"inCityName\": \"重庆\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"43℃/31℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"CHONGQING\",\n        \"orderNo\": 4\n    }, {\n        \"inCityName\": \"涪陵\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"39℃/25℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"FULING\",\n        \"orderNo\": 5\n    }, {\n        \"inCityName\": \"涪陵\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"41℃/25℃\",\n        \"windPower\": \"东风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"FULING\",\n        \"orderNo\": 5\n    }, {\n        \"inCityName\": \"涪陵\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"42℃/26℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"FULING\",\n        \"orderNo\": 5\n    }, {\n        \"inCityName\": \"万州\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"40℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"WANZHOU\",\n        \"orderNo\": 6\n    }, {\n        \"inCityName\": \"万州\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"40℃/27℃\",\n        \"windPower\": \"西南风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"WANZHOU\",\n        \"orderNo\": 6\n    }, {\n        \"inCityName\": \"万州\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"42℃/27℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"WANZHOU\",\n        \"orderNo\": 6\n    }, {\n        \"inCityName\": \"奉节\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"42℃/25℃\",\n        \"windPower\": \"东风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"FENGJIE\",\n        \"orderNo\": 7\n    }, {\n        \"inCityName\": \"奉节\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"42℃/27℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"FENGJIE\",\n        \"orderNo\": 7\n    }, {\n        \"inCityName\": \"奉节\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"43℃/27℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"FENGJIE\",\n        \"orderNo\": 7\n    }, {\n        \"inCityName\": \"茅坪\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"38℃/24℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"MAOPING\",\n        \"orderNo\": 8\n    }, {\n        \"inCityName\": \"茅坪\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"37℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"MAOPING\",\n        \"orderNo\": 8\n    }, {\n        \"inCityName\": \"茅坪\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"37℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"MAOPING\",\n        \"orderNo\": 8\n    }, {\n        \"inCityName\": \"宜昌\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"38℃/25℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"YICHANG\",\n        \"orderNo\": 9\n    }, {\n        \"inCityName\": \"宜昌\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"36℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"YICHANG\",\n        \"orderNo\": 9\n    }, {\n        \"inCityName\": \"宜昌\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"36℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"YICHANG\",\n        \"orderNo\": 9\n    }, {\n        \"inCityName\": \"荆州\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"38℃/28℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"JINGZHOU\",\n        \"orderNo\": 10\n    }, {\n        \"inCityName\": \"荆州\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"37℃/28℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"JINGZHOU\",\n        \"orderNo\": 10\n    }, {\n        \"inCityName\": \"荆州\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"36℃/28℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"JINGZHOU\",\n        \"orderNo\": 10\n    }, {\n        \"inCityName\": \"岳阳\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"多云~晴\",\n        \"temperature\": \"35℃/30℃\",\n        \"windPower\": \"西北风1-3级\",\n        \"dayWeather\": \"多云\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"YUEYANG\",\n        \"orderNo\": 11\n    }, {\n        \"inCityName\": \"岳阳\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"36℃/29℃\",\n        \"windPower\": \"西北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"YUEYANG\",\n        \"orderNo\": 11\n    }, {\n        \"inCityName\": \"岳阳\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"36℃/30℃\",\n        \"windPower\": \"西南风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"YUEYANG\",\n        \"orderNo\": 11\n    }, {\n        \"inCityName\": \"咸宁\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"晴~多云\",\n        \"temperature\": \"37℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"XIANNING\",\n        \"orderNo\": 12\n    }, {\n        \"inCityName\": \"咸宁\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"小雨~晴\",\n        \"temperature\": \"37℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"XIANNING\",\n        \"orderNo\": 12\n    }, {\n        \"inCityName\": \"咸宁\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"38℃/27℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"XIANNING\",\n        \"orderNo\": 12\n    }, {\n        \"inCityName\": \"武汉\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"晴~多云\",\n        \"temperature\": \"37℃/27℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"WUHAN\",\n        \"orderNo\": 13\n    }, {\n        \"inCityName\": \"武汉\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"37℃/29℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"WUHAN\",\n        \"orderNo\": 13\n    }, {\n        \"inCityName\": \"武汉\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"37℃/29℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"WUHAN\",\n        \"orderNo\": 13\n    }, {\n        \"inCityName\": \"鄂州\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"多云~多云\",\n        \"temperature\": \"36℃/27℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"多云\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"EZHOU\",\n        \"orderNo\": 14\n    }, {\n        \"inCityName\": \"鄂州\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"小雨~晴\",\n        \"temperature\": \"37℃/28℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"EZHOU\",\n        \"orderNo\": 14\n    }, {\n        \"inCityName\": \"鄂州\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"38℃/28℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"EZHOU\",\n        \"orderNo\": 14\n    }, {\n        \"inCityName\": \"黄冈\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"小雨~多云\",\n        \"temperature\": \"33℃/27℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"HUANGGANG\",\n        \"orderNo\": 15\n    }, {\n        \"inCityName\": \"黄冈\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"36℃/28℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"HUANGGANG\",\n        \"orderNo\": 15\n    }, {\n        \"inCityName\": \"黄冈\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"37℃/28℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"HUANGGANG\",\n        \"orderNo\": 15\n    }, {\n        \"inCityName\": \"黄石\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"小雨~多云\",\n        \"temperature\": \"34℃/27℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"HUANGSHI\",\n        \"orderNo\": 16\n    }, {\n        \"inCityName\": \"黄石\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"小雨~晴\",\n        \"temperature\": \"37℃/27℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"HUANGSHI\",\n        \"orderNo\": 16\n    }, {\n        \"inCityName\": \"黄石\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"38℃/28℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"HUANGSHI\",\n        \"orderNo\": 16\n    }, {\n        \"inCityName\": \"九江\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"多云~多云\",\n        \"temperature\": \"36℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"多云\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"JIUJIANG\",\n        \"orderNo\": 17\n    }, {\n        \"inCityName\": \"九江\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"晴~多云\",\n        \"temperature\": \"37℃/27℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"JIUJIANG\",\n        \"orderNo\": 17\n    }, {\n        \"inCityName\": \"九江\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"晴~晴\",\n        \"temperature\": \"37℃/27℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"晴\",\n        \"nightWeather\": \"晴\",\n        \"portPinyin\": \"JIUJIANG\",\n        \"orderNo\": 17\n    }, {\n        \"inCityName\": \"安庆\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"中雨~小雨\",\n        \"temperature\": \"28℃/24℃\",\n        \"windPower\": \"西南风1-3级\",\n        \"dayWeather\": \"中雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"ANQING\",\n        \"orderNo\": 18\n    }, {\n        \"inCityName\": \"安庆\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"小雨~多云\",\n        \"temperature\": \"32℃/26℃\",\n        \"windPower\": \"西南风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"ANQING\",\n        \"orderNo\": 18\n    }, {\n        \"inCityName\": \"安庆\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"多云~小雨\",\n        \"temperature\": \"33℃/27℃\",\n        \"windPower\": \"东风1-3级\",\n        \"dayWeather\": \"多云\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"ANQING\",\n        \"orderNo\": 18\n    }, {\n        \"inCityName\": \"池州\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"中雨~中雨\",\n        \"temperature\": \"29℃/24℃\",\n        \"windPower\": \"西南风4级\",\n        \"dayWeather\": \"中雨\",\n        \"nightWeather\": \"中雨\",\n        \"portPinyin\": \"CHIZHOU\",\n        \"orderNo\": 19\n    }, {\n        \"inCityName\": \"池州\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"小雨~小雨\",\n        \"temperature\": \"32℃/25℃\",\n        \"windPower\": \"西南风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"CHIZHOU\",\n        \"orderNo\": 19\n    }, {\n        \"inCityName\": \"池州\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"多云~小雨\",\n        \"temperature\": \"34℃/26℃\",\n        \"windPower\": \"西北风1-3级\",\n        \"dayWeather\": \"多云\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"CHIZHOU\",\n        \"orderNo\": 19\n    }, {\n        \"inCityName\": \"铜陵\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"雷阵雨~阴\",\n        \"temperature\": \"26℃/25℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"雷阵雨\",\n        \"nightWeather\": \"阴\",\n        \"portPinyin\": \"TONGLING\",\n        \"orderNo\": 20\n    }, {\n        \"inCityName\": \"铜陵\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"阵雨~雷阵雨\",\n        \"temperature\": \"32℃/25℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"阵雨\",\n        \"nightWeather\": \"雷阵雨\",\n        \"portPinyin\": \"TONGLING\",\n        \"orderNo\": 20\n    }, {\n        \"inCityName\": \"铜陵\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"阵雨~阵雨\",\n        \"temperature\": \"32℃/25℃\",\n        \"windPower\": \"西北风1-3级\",\n        \"dayWeather\": \"阵雨\",\n        \"nightWeather\": \"阵雨\",\n        \"portPinyin\": \"TONGLING\",\n        \"orderNo\": 20\n    }, {\n        \"inCityName\": \"芜湖\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"中雨~中雨\",\n        \"temperature\": \"29℃/24℃\",\n        \"windPower\": \"东南风4级\",\n        \"dayWeather\": \"中雨\",\n        \"nightWeather\": \"中雨\",\n        \"portPinyin\": \"WUHU\",\n        \"orderNo\": 21\n    }, {\n        \"inCityName\": \"芜湖\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"小雨~小雨\",\n        \"temperature\": \"32℃/26℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"WUHU\",\n        \"orderNo\": 21\n    }, {\n        \"inCityName\": \"芜湖\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"小雨~小雨\",\n        \"temperature\": \"32℃/26℃\",\n        \"windPower\": \"北风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"WUHU\",\n        \"orderNo\": 21\n    }, {\n        \"inCityName\": \"马鞍山\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"中雨~中雨\",\n        \"temperature\": \"28℃/24℃\",\n        \"windPower\": \"东南风4级\",\n        \"dayWeather\": \"中雨\",\n        \"nightWeather\": \"中雨\",\n        \"portPinyin\": \"MAANSHAN\",\n        \"orderNo\": 22\n    }, {\n        \"inCityName\": \"马鞍山\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"小雨~小雨\",\n        \"temperature\": \"31℃/25℃\",\n        \"windPower\": \"东风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"MAANSHAN\",\n        \"orderNo\": 22\n    }, {\n        \"inCityName\": \"马鞍山\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"小雨~小雨\",\n        \"temperature\": \"29℃/26℃\",\n        \"windPower\": \"东风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"MAANSHAN\",\n        \"orderNo\": 22\n    }, {\n        \"inCityName\": \"南京\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"大雨~中雨\",\n        \"temperature\": \"26℃/25℃\",\n        \"windPower\": \"东南风4级\",\n        \"dayWeather\": \"大雨\",\n        \"nightWeather\": \"中雨\",\n        \"portPinyin\": \"NANJING\",\n        \"orderNo\": 23\n    }, {\n        \"inCityName\": \"南京\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"大雨~暴雨\",\n        \"temperature\": \"30℃/25℃\",\n        \"windPower\": \"东南风4级\",\n        \"dayWeather\": \"大雨\",\n        \"nightWeather\": \"暴雨\",\n        \"portPinyin\": \"NANJING\",\n        \"orderNo\": 23\n    }, {\n        \"inCityName\": \"南京\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"中雨~中雨\",\n        \"temperature\": \"29℃/26℃\",\n        \"windPower\": \"西南风4级\",\n        \"dayWeather\": \"中雨\",\n        \"nightWeather\": \"中雨\",\n        \"portPinyin\": \"NANJING\",\n        \"orderNo\": 23\n    }, {\n        \"inCityName\": \"镇江\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"大雨~大雨\",\n        \"temperature\": \"30℃/26℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"大雨\",\n        \"nightWeather\": \"大雨\",\n        \"portPinyin\": \"ZHENJIANG\",\n        \"orderNo\": 24\n    }, {\n        \"inCityName\": \"镇江\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"大雨~大雨\",\n        \"temperature\": \"29℃/26℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"大雨\",\n        \"nightWeather\": \"大雨\",\n        \"portPinyin\": \"ZHENJIANG\",\n        \"orderNo\": 24\n    }, {\n        \"inCityName\": \"镇江\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"中雨~中雨\",\n        \"temperature\": \"27℃/25℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"中雨\",\n        \"nightWeather\": \"中雨\",\n        \"portPinyin\": \"ZHENJIANG\",\n        \"orderNo\": 24\n    }, {\n        \"inCityName\": \"扬州\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"暴雨~大雨\",\n        \"temperature\": \"28℃/25℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"暴雨\",\n        \"nightWeather\": \"大雨\",\n        \"portPinyin\": \"YANGZHOU\",\n        \"orderNo\": 25\n    }, {\n        \"inCityName\": \"扬州\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"大雨~暴雨\",\n        \"temperature\": \"30℃/25℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"大雨\",\n        \"nightWeather\": \"暴雨\",\n        \"portPinyin\": \"YANGZHOU\",\n        \"orderNo\": 25\n    }, {\n        \"inCityName\": \"扬州\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"暴雨~小雨\",\n        \"temperature\": \"28℃/25℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"暴雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"YANGZHOU\",\n        \"orderNo\": 25\n    }, {\n        \"inCityName\": \"泰州\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"多云~阴\",\n        \"temperature\": \"31℃/27℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"多云\",\n        \"nightWeather\": \"阴\",\n        \"portPinyin\": \"TAIZHOU\",\n        \"orderNo\": 26\n    }, {\n        \"inCityName\": \"泰州\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"暴雨~暴雨\",\n        \"temperature\": \"29℃/26℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"暴雨\",\n        \"nightWeather\": \"暴雨\",\n        \"portPinyin\": \"TAIZHOU\",\n        \"orderNo\": 26\n    }, {\n        \"inCityName\": \"泰州\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"暴雨~中雨\",\n        \"temperature\": \"28℃/26℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"暴雨\",\n        \"nightWeather\": \"中雨\",\n        \"portPinyin\": \"TAIZHOU\",\n        \"orderNo\": 26\n    }, {\n        \"inCityName\": \"常州\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"小雨~小雨\",\n        \"temperature\": \"32℃/27℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"CHANGZHOU\",\n        \"orderNo\": 27\n    }, {\n        \"inCityName\": \"常州\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"大雨~中雨\",\n        \"temperature\": \"32℃/27℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"大雨\",\n        \"nightWeather\": \"中雨\",\n        \"portPinyin\": \"CHANGZHOU\",\n        \"orderNo\": 27\n    }, {\n        \"inCityName\": \"常州\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"中雨~小雨\",\n        \"temperature\": \"30℃/27℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"中雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"CHANGZHOU\",\n        \"orderNo\": 27\n    }, {\n        \"inCityName\": \"江阴\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"小雨~多云\",\n        \"temperature\": \"33℃/27℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"JIANGYIN\",\n        \"orderNo\": 28\n    }, {\n        \"inCityName\": \"江阴\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"暴雨~大雨\",\n        \"temperature\": \"32℃/27℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"暴雨\",\n        \"nightWeather\": \"大雨\",\n        \"portPinyin\": \"JIANGYIN\",\n        \"orderNo\": 28\n    }, {\n        \"inCityName\": \"江阴\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"大雨~小雨\",\n        \"temperature\": \"28℃/27℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"大雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"JIANGYIN\",\n        \"orderNo\": 28\n    }, {\n        \"inCityName\": \"南通\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"多云~阴\",\n        \"temperature\": \"32℃/27℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"多云\",\n        \"nightWeather\": \"阴\",\n        \"portPinyin\": \"NANTONG\",\n        \"orderNo\": 29\n    }, {\n        \"inCityName\": \"南通\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"大雨~小雨\",\n        \"temperature\": \"33℃/27℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"大雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"NANTONG\",\n        \"orderNo\": 29\n    }, {\n        \"inCityName\": \"南通\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"中雨~小雨\",\n        \"temperature\": \"30℃/27℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"中雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"NANTONG\",\n        \"orderNo\": 29\n    }, {\n        \"inCityName\": \"苏州\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"多云~多云\",\n        \"temperature\": \"33℃/28℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"多云\",\n        \"nightWeather\": \"多云\",\n        \"portPinyin\": \"SUZHOU\",\n        \"orderNo\": 30\n    }, {\n        \"inCityName\": \"苏州\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"大雨~小雨\",\n        \"temperature\": \"33℃/28℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"大雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"SUZHOU\",\n        \"orderNo\": 30\n    }, {\n        \"inCityName\": \"苏州\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"中雨~小雨\",\n        \"temperature\": \"32℃/27℃\",\n        \"windPower\": \"南风1-3级\",\n        \"dayWeather\": \"中雨\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"SUZHOU\",\n        \"orderNo\": 30\n    }, {\n        \"inCityName\": \"上海\",\n        \"dateForecast\": \"2025-08-01 00:00:00\",\n        \"weekDay\": \"周五\",\n        \"weather\": \"阴~小雨\",\n        \"temperature\": \"32℃/27℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"阴\",\n        \"nightWeather\": \"小雨\",\n        \"portPinyin\": \"SHANGHAI\",\n        \"orderNo\": 31\n    }, {\n        \"inCityName\": \"上海\",\n        \"dateForecast\": \"2025-08-02 00:00:00\",\n        \"weekDay\": \"周六\",\n        \"weather\": \"中雨~阴\",\n        \"temperature\": \"32℃/28℃\",\n        \"windPower\": \"东南风1-3级\",\n        \"dayWeather\": \"中雨\",\n        \"nightWeather\": \"阴\",\n        \"portPinyin\": \"SHANGHAI\",\n        \"orderNo\": 31\n    }, {\n        \"inCityName\": \"上海\",\n        \"dateForecast\": \"2025-08-03 00:00:00\",\n        \"weekDay\": \"周日\",\n        \"weather\": \"小雨~阴\",\n        \"temperature\": \"31℃/28℃\",\n        \"windPower\": \"西南风1-3级\",\n        \"dayWeather\": \"小雨\",\n        \"nightWeather\": \"阴\",\n        \"portPinyin\": \"SHANGHAI\",\n        \"orderNo\": 31\n    }]\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "",
    "value" : { },
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  },
  "responseBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "Object",
    "type" : null,
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "resultCode",
      "value" : "200",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "resultMsg",
      "value" : "查询成功",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "result",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ {
          "name" : "inCityName",
          "value" : "水富",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "dateForecast",
          "value" : "2025-08-01 00:00:00",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "weekDay",
          "value" : "周五",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "weather",
          "value" : "多云~多云",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "temperature",
          "value" : "38℃/25℃",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "windPower",
          "value" : "北风1-3级",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "dayWeather",
          "value" : "多云",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "nightWeather",
          "value" : "多云",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "portPinyin",
          "value" : "SHUIFU",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "orderNo",
          "value" : "1",
          "description" : "",
          "required" : false,
          "dataType" : "Integer",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        } ]
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

var forecastWeatherSql = """
    select * from
    (select cb.in_city_name,
       cb.date_forecast,
       CASE WHEN to_char(date_forecast,'D')='1' then '周日' 
       when to_char(date_forecast,'D')='2' then '周一' 
       when to_char(date_forecast,'D')='3' then '周二' 
       when to_char(date_forecast,'D')='4' then '周三' 
       when to_char(date_forecast,'D')='5' then '周四' 
       when to_char(date_forecast,'D')='6' then '周五' 
       when to_char(date_forecast,'D')='7' then '周六' 
       end as week_day,
       cb.day_weather||'~'||cb.night_weather weather,
       cb.day_temperature||'℃'||'/'||cb.night_temperature||'℃' temperature,
       cb.day_wind_direction||'风'||cb.day_wind_power||'级' wind_power,
 --      cb.day_wind_power,
         cb.day_weather,
        cb.night_weather,
 --      cb.night_temperature,
 --      cb.night_wind_direction,
 --      cb.night_wind_power,
       b.port_pinyin,
       b.order_no
  from (select *
                   from (select t.*,
                                row_number() over(partition by t.in_city_name, to_char(t.date_forecast,'yyyy-mm-dd')
                                 order by t.date_forecast desc) as rn
                           from dim_gd_forecast_weather_info t
                          where date_forecast >= sysdate)
                  where rn = 1) cb
  left join dict_data.D_PORTLIST_COCKPIT b
    on cb.in_city_name = b.port_name
 where b.status = '1'
 order by to_number(b.order_no), cb.date_forecast) ss
 where 1=1
 ?{portPinyin,and ss.port_pinyin=#{portPinyin}}
 ?{dateForecast,and to_char(ss.date_forecast,'yyyy-mm-dd')=#{dateForecast}}
"""


var forecastWeather =  db.ods_data.camel().select(forecastWeatherSql);

for(item in forecastWeather){
//    item.put("dayTemperature",item.get("dayTemperature")::int);
//    item.put("nightTemperature",item.get("nightTemperature")::int);
    item.put("orderNo",item.get("orderNo")::int);
}


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: forecastWeather
});