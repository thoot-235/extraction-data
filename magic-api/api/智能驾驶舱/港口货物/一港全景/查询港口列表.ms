{
  "properties" : { },
  "id" : "ff1f444de6b04dc4bb710738fa8f11e7",
  "script" : null,
  "groupId" : "06840557c3324b57a151875e9c1c91e7",
  "name" : "查询港口列表",
  "createTime" : null,
  "updateTime" : 1755762379866,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getImpPort",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "2",
    "description" : "1:重点港口 2：亿吨大港",
    "required" : true,
    "dataType" : "Integer",
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
  "responseBody" : "{\n    \"code\": 200,\n    \"success\": \"查询成功\",\n    \"data\": [{\n        \"portCnName\": \"水富\"\n    }, {\n        \"portCnName\": \"宜宾\"\n    }, {\n        \"portCnName\": \"泸州\"\n    }, {\n        \"portCnName\": \"重庆\"\n    }, {\n        \"portCnName\": \"宜昌\"\n    }, {\n        \"portCnName\": \"荆州\"\n    }, {\n        \"portCnName\": \"岳阳\"\n    }, {\n        \"portCnName\": \"咸宁\"\n    }, {\n        \"portCnName\": \"武汉\"\n    }, {\n        \"portCnName\": \"黄冈\"\n    }, {\n        \"portCnName\": \"鄂州\"\n    }, {\n        \"portCnName\": \"黄石\"\n    }, {\n        \"portCnName\": \"九江\"\n    }, {\n        \"portCnName\": \"安庆\"\n    }, {\n        \"portCnName\": \"池州\"\n    }, {\n        \"portCnName\": \"铜陵\"\n    }, {\n        \"portCnName\": \"芜湖\"\n    }, {\n        \"portCnName\": \"马鞍山\"\n    }, {\n        \"portCnName\": \"南京\"\n    }, {\n        \"portCnName\": \"镇江\"\n    }, {\n        \"portCnName\": \"扬州\"\n    }, {\n        \"portCnName\": \"泰州\"\n    }, {\n        \"portCnName\": \"常州\"\n    }, {\n        \"portCnName\": \"江阴\"\n    }, {\n        \"portCnName\": \"苏州\"\n    }, {\n        \"portCnName\": \"南通\"\n    }, {\n        \"portCnName\": \"上海\"\n    }]\n}",
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
      "name" : "code",
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
      "name" : "success",
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
          "name" : "portCnName",
          "value" : "水富",
          "description" : "",
          "required" : false,
          "dataType" : "String",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import java.lang.Math;
import response;

//获取重点港口列表
var impPortSql = """
  SELECT port_cn_name FROM dict_data.d_cb_port_imp order by orders desc
"""
//获取亿吨港口列表
var billionPortSql = """
  SELECT port_cn_name FROM dict_data.d_cb_port_billion order by orders desc
"""
if(code == 1){
    var impPort = db.dm_data.camel().select(impPortSql);
    return response.json({
        code: 200,
        success: "查询成功",
        data: impPort 
    });
}
if(code == 2){
    var billionPort = db.dm_data.camel().select(billionPortSql);
    return response.json({
        code: 200,
        success: "查询成功",
        data: billionPort 
    });
}

return response.json({
    code: 200,
    success: "查询成功",
    data: null 
});
