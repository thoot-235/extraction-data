{
  "properties" : { },
  "id" : "fe1de5171cb1467cb61025ab43e37ce5",
  "script" : null,
  "groupId" : "39ce103c23184972a79a5498216c3525",
  "name" : "航运设施设备数量查询",
  "createTime" : null,
  "updateTime" : 1700017762142,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/deviceNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"label\": \"航标数量\",\n        \"value\": 9828\n    }, {\n        \"label\": \"气象站数量\",\n        \"value\": 33\n    }, {\n        \"label\": \"水位站数量\",\n        \"value\": 302\n    }, {\n        \"label\": \"AIS基站数量\",\n        \"value\": 108\n    }, {\n        \"label\": \"北斗地基增强基站数量\",\n        \"value\": 58\n    }, {\n        \"label\": \"航道里程\",\n        \"value\": 2808\n    }, {\n        \"label\": \"水道数\",\n        \"value\": 304\n    }]\n}",
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
    "type" : "",
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
      "type" : "",
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
      "type" : "",
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
      "dataType" : "Object",
      "type" : "",
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
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ {
          "name" : "label",
          "value" : "航标数量",
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
          "name" : "value",
          "value" : "9828",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : "",
          "defaultValue" : "",
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

var deviceNumsSql = """
  SELECT col_name, col_value
  FROM (SELECT navigation,
               weather_stations,
               station,
               ais_station,
               beidou_station,
               mileage,
               channel
          FROM dm_static_info
         where valid_flag = '1') UNPIVOT(col_value FOR col_name IN(navigation AS
                                                                   '航标数量',
                                                                   weather_stations AS
                                                                   '气象站数量',
                                                                   station AS
                                                                   '水位站数量',
                                                                   ais_station AS
                                                                   'AIS基站数量',
                                                                   beidou_station AS
                                                                   '北斗地基增强基站数量',
                                                                   mileage AS
                                                                   '航道里程',
                                                                   channel AS
                                                                   '水道数'))
"""

var deviceNums = db.dm_data.camel().select(deviceNumsSql);
for(item in deviceNums){
  item.put("colValue",item.get("colValue")::int);
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: deviceNums
});