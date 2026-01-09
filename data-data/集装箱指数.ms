{
  "properties" : { },
  "id" : "daf30dfc38bf4f37b2b4dccfa9db6f41",
  "script" : null,
  "groupId" : "f5998905462549148b80f5b1041a25ae",
  "name" : "集装箱指数",
  "createTime" : null,
  "updateTime" : 1742435830150,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getContainersIndex",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"indexProp\": \"2023-10\",\n        \"zhIndexValue\": 1011.1,\n        \"syIndexValue\": 1045.5,\n        \"zyIndexValue\": 941.7,\n        \"xyIndexValue\": 1062.4\n    }, {\n        \"indexProp\": \"2023-11\",\n        \"zhIndexValue\": 1014.8,\n        \"syIndexValue\": 1048.6,\n        \"zyIndexValue\": 948.6,\n        \"xyIndexValue\": 1064.4\n    }, {\n        \"indexProp\": \"2023-12\",\n        \"zhIndexValue\": 1016.3,\n        \"syIndexValue\": 1050.5,\n        \"zyIndexValue\": 950.0,\n        \"xyIndexValue\": 1064.5\n    }, {\n        \"indexProp\": \"2024-01\",\n        \"zhIndexValue\": 1012.8,\n        \"syIndexValue\": 1042.1,\n        \"zyIndexValue\": 946.1,\n        \"xyIndexValue\": 1066.6\n    }, {\n        \"indexProp\": \"2024-02\",\n        \"zhIndexValue\": 1012.9,\n        \"syIndexValue\": 1043.4,\n        \"zyIndexValue\": 946.3,\n        \"xyIndexValue\": 1065.2\n    }, {\n        \"indexProp\": \"2024-03\",\n        \"zhIndexValue\": 1014.8,\n        \"syIndexValue\": 1045.9,\n        \"zyIndexValue\": 946.7,\n        \"xyIndexValue\": 1067.7\n    }, {\n        \"indexProp\": \"2024-04\",\n        \"zhIndexValue\": 1015.4,\n        \"syIndexValue\": 1047.7,\n        \"zyIndexValue\": 947.9,\n        \"xyIndexValue\": 1066.3\n    }, {\n        \"indexProp\": \"2024-05\",\n        \"zhIndexValue\": 1014.9,\n        \"syIndexValue\": 1044.8,\n        \"zyIndexValue\": 946.7,\n        \"xyIndexValue\": 1069.0\n    }, {\n        \"indexProp\": \"2024-06\",\n        \"zhIndexValue\": 1009.7,\n        \"syIndexValue\": 1041.3,\n        \"zyIndexValue\": 944.4,\n        \"xyIndexValue\": 1059.1\n    }, {\n        \"indexProp\": \"2024-07\",\n        \"zhIndexValue\": 1008.0,\n        \"syIndexValue\": 1039.6,\n        \"zyIndexValue\": 949.5,\n        \"xyIndexValue\": 1051.7\n    }, {\n        \"indexProp\": \"2024-08\",\n        \"zhIndexValue\": 995.1,\n        \"syIndexValue\": 1033.5,\n        \"zyIndexValue\": 918.5,\n        \"xyIndexValue\": 1046.3\n    }, {\n        \"indexProp\": \"2024-09\",\n        \"zhIndexValue\": 994.0,\n        \"syIndexValue\": 1033.0,\n        \"zyIndexValue\": 915.8,\n        \"xyIndexValue\": 1045.9\n    }]\n}",
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
          "name" : "indexProp",
          "value" : "2023-10",
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
          "name" : "zhIndexValue",
          "value" : "1011.1",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
          "type" : "",
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "syIndexValue",
          "value" : "1045.5",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
          "type" : "",
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "zyIndexValue",
          "value" : "941.7",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
          "type" : "",
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "xyIndexValue",
          "value" : "1062.4",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
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
import response;

//最新12期数据
var Sql = """
select a.* from (
    select substr(time,0,7) index_prop,
        zh_index_value,
        sy_index_value,
        zy_index_value,
        xy_index_value
    from STS_DATA_APPLIED_INDEX
    where type = '2' and zh_index_value != 0 --and time >= '2020-05'
    order by time desc) a
where rownum <=12 order by a.index_prop
""";
var list = db.dm_data.camel().select(Sql);
for(item in list){
    item.put("zhIndexValue", item.get("zhIndexValue")::double);
    item.put("syIndexValue", item.get("syIndexValue")::double);
    item.put("zyIndexValue", item.get("zyIndexValue")::double);
    item.put("xyIndexValue", item.get("xyIndexValue")::double);
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: list
});