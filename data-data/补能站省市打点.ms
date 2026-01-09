{
  "properties" : { },
  "id" : "d5b66b4389044a3d87170ac1b2d7f49e",
  "script" : null,
  "groupId" : "8cfab9687d1a495288b389b5545384b5",
  "name" : "补能站省市打点",
  "createTime" : null,
  "updateTime" : 1734943908395,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/fillingStationByprov",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"provName\": \"云南\",\n        \"nums\": 0\n    }, {\n        \"provName\": \"贵州\",\n        \"nums\": 0\n    }, {\n        \"provName\": \"四川\",\n        \"nums\": 2\n    }, {\n        \"provName\": \"重庆\",\n        \"nums\": 10\n    }, {\n        \"provName\": \"湖南\",\n        \"nums\": 3\n    }, {\n        \"provName\": \"湖北\",\n        \"nums\": 32\n    }, {\n        \"provName\": \"江西\",\n        \"nums\": 2\n    }, {\n        \"provName\": \"浙江\",\n        \"nums\": 0\n    }, {\n        \"provName\": \"安徽\",\n        \"nums\": 10\n    }, {\n        \"provName\": \"江苏\",\n        \"nums\": 17\n    }, {\n        \"provName\": \"上海\",\n        \"nums\": 2\n    }, {\n        \"provName\": \"陕西\",\n        \"nums\": 0\n    }, {\n        \"provName\": \"河南\",\n        \"nums\": 0\n    }, {\n        \"provName\": \"山东\",\n        \"nums\": 0\n    }]\n}",
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
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
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
          "name" : "provName",
          "value" : "云南",
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
          "name" : "nums",
          "value" : "0",
          "description" : "",
          "required" : false,
          "dataType" : "Integer",
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
import response;
var sql = """
    select a.item_name_cn_short as prov_name, nvl(b.nums, 0) nums
        from dict_data.DICT_RIVER_PROVINCE a
        left join (select pro_name, count(1) as nums
                    from FILLING_STATION_INFO t
                    group by pro_name) b
            on a.item_name_cn_short = b.pro_name
        order by a.orders
"""
var list = db.ods_data.camel().select(sql);
for(item in list){
    item.put("nums",item.get("nums")::int)
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list 
}); 