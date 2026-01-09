{
  "properties" : { },
  "id" : "5949f2b405e64234952a1d0a0a00ff96",
  "script" : null,
  "groupId" : "26b088cc467c4fc0a3f16fed3416308b",
  "name" : "当前在线船舶种类分布",
  "createTime" : null,
  "updateTime" : 1705386224472,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/onlineShipType",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"category\": \"其他\",\n        \"shipNum\": 1439\n    }, {\n        \"category\": \"危化品\",\n        \"shipNum\": 1688\n    }, {\n        \"category\": \"集装箱\",\n        \"shipNum\": 1596\n    }, {\n        \"category\": \"干散货\",\n        \"shipNum\": 16487\n    }, {\n        \"category\": \"客船类\",\n        \"shipNum\": 388\n    }, {\n        \"category\": \"滚装运输船\",\n        \"shipNum\": 109\n    }]\n}",
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
          "name" : "category",
          "value" : "其他",
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
          "name" : "shipNum",
          "value" : "1439",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;


var sql = """
  select c.category, count(1) ship_num
    from bds_base_data.COCKPIT_ONLINE_SHIPMMSI_DAY a
    left join bds_base_data.sc_ship_basic_data b
      on a.mmsi = b.mmsi
    left join dict_data.ch_code c
      on b.ship_type_code = c.code
  where c.code_type = '03'
  group by c.category
"""

var shipNum = db.base_data.camel().select(sql);
for(item in shipNum){
  item.put("shipNum",item.get("shipNum")::int);
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNum
});