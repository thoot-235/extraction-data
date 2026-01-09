{
  "properties" : { },
  "id" : "7ee8cba177ce476bacc3334d3e0778ca",
  "script" : null,
  "groupId" : "8cfab9687d1a495288b389b5545384b5",
  "name" : "新能源船舶数量统计",
  "createTime" : null,
  "updateTime" : 1760604267903,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/shipNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"name\": \"新能源清洁能源船舶\",\n        \"values\": 331\n    }, {\n        \"name\": \"补能站\",\n        \"zj\": 1,\n        \"gh\": 58,\n        \"yy\": 22,\n        \"values\": 81\n    }]\n}",
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
      "name" : "data",
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
          "name" : "name",
          "value" : "新能源清洁能源船舶",
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
          "name" : "values",
          "value" : "331",
          "description" : "",
          "required" : false,
          "dataType" : "Integer",
          "type" : null,
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
import response;
//新能源船舶数量  ods_hs_share.dc_battery_ship（正式表）
/*
var shipNumsSql = """
    select count(*) from new_energy_ship_new where ship_status='已建' and delete_flag='0'
"""
*/
//数据源切换为长航子平台业务数据
var shipNumsSql = """
select count(1) from ods_hs_share.SHIP_INFO_MAINTAIN where is_deleted=0
"""
var shipNums = db.ods_data.selectInt(shipNumsSql);
//补能站数量
var getEnergySql = """
    SELECT *
        FROM (
            SELECT  station_status,'补能站' as "name"
            FROM ods_hs_share.FILLING_STATION_INFO
        ) 
        PIVOT (
            count(1) FOR station_status IN ('在建' AS zj, '规划' AS gh, '运营' AS yy)
        )
""";
var getEnergy = db.ods_data.camel().selectOne(getEnergySql);

var allEnerg="""select count(1) as nums from ods_hs_share.FILLING_STATION_INFO """;
var allEnergData=db.ods_data.camel().selectOne(allEnerg);
getEnergy.put("zj",Integer.parseInt(getEnergy.get("zj").toString()));
getEnergy.put("gh",Integer.parseInt(getEnergy.get("gh").toString()));
getEnergy.put("yy",Integer.parseInt(getEnergy.get("yy").toString()));
getEnergy.put("values",Integer.parseInt(allEnergData.get("nums").toString()));



var list = [];
list.add({"name":"新能源清洁能源船舶","values":shipNums});
//list.add({"name":"新能源清洁能源船舶总数","values":320});
list.add(getEnergy);//{"name":"补能站总数","values":getEnergy}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list 
}); 