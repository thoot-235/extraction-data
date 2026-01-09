{
  "properties" : { },
  "id" : "46ad6043738e46b8ae7ccbbc5a41374a",
  "script" : null,
  "groupId" : "f8cb5b13739f455397cc22a7ae910702",
  "name" : "应急资源_社会应急船艇",
  "createTime" : null,
  "updateTime" : 1755661859359,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSocialEmergencyBoats",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
    "value" : "1",
    "description" : "",
    "required" : false,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "1",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "5",
    "description" : "",
    "required" : false,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "100",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 525,\n        \"list\": [{\n            \"shipName\": \"宜宾救助1号\",\n            \"id\": 1,\n            \"shipType\": \"拖轮\",\n            \"shipLength\": \"45.75\",\n            \"affiliatedUnit\": \"宜宾市航务事务中心\",\n            \"maritimeDistrict\": \"宜宾\",\n            \"contactPerson\": \"张新旺\",\n            \"contactNumber\": \"18783139050\",\n            \"berthLocation\": \"宜宾市航务事务中心\",\n            \"mmsi\": \"413833741\"\n        }, {\n            \"shipName\": \"宜宾救助3号\",\n            \"id\": 2,\n            \"shipType\": \"拖轮\",\n            \"shipLength\": \"35.8\",\n            \"affiliatedUnit\": \"宜宾市航务事务中心\",\n            \"maritimeDistrict\": \"宜宾\",\n            \"contactPerson\": \"张新旺\",\n            \"contactNumber\": \"18783139050\",\n            \"berthLocation\": \"宜宾市航务事务中心\",\n            \"mmsi\": \"413876706\"\n        }, {\n            \"shipName\": \"宏港吊装188\",\n            \"id\": 3,\n            \"shipType\": \"过驳浮吊\",\n            \"shipLength\": \"\",\n            \"affiliatedUnit\": \"\",\n            \"maritimeDistrict\": \"宜宾\",\n            \"contactPerson\": \"李杰\",\n            \"contactNumber\": \"15183910648\",\n            \"berthLocation\": \"\",\n            \"mmsi\": \"\"\n        }, {\n            \"shipName\": \"三江港吊02\",\n            \"id\": 4,\n            \"shipType\": \"过驳浮吊\",\n            \"shipLength\": \"\",\n            \"affiliatedUnit\": \"\",\n            \"maritimeDistrict\": \"宜宾\",\n            \"contactPerson\": \"廖彬\",\n            \"contactNumber\": \"13350603699\",\n            \"berthLocation\": \"\",\n            \"mmsi\": \"\"\n        }, {\n            \"shipName\": \"长江公安3013\",\n            \"id\": 5,\n            \"shipType\": \"消防\",\n            \"shipLength\": \"30.78\",\n            \"affiliatedUnit\": \"长航公安泸州分局\",\n            \"maritimeDistrict\": \"泸州\",\n            \"contactPerson\": \"李博\",\n            \"contactNumber\": \"15681561150\",\n            \"berthLocation\": \"江阳区滨江路国窖大桥下游300米\",\n            \"mmsi\": \"\"\n        }]\n    }\n}",
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
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "total",
        "value" : "525",
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
        "name" : "list",
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
            "name" : "shipName",
            "value" : "宜宾救助1号",
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
            "name" : "id",
            "value" : "1",
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
            "name" : "shipType",
            "value" : "拖轮",
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
            "name" : "shipLength",
            "value" : "45.75",
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
            "name" : "affiliatedUnit",
            "value" : "宜宾市航务事务中心",
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
            "name" : "maritimeDistrict",
            "value" : "宜宾",
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
            "name" : "contactPerson",
            "value" : "张新旺",
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
            "name" : "contactNumber",
            "value" : "18783139050",
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
            "name" : "berthLocation",
            "value" : "宜宾市航务事务中心",
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
            "name" : "mmsi",
            "value" : "413833741",
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
    } ]
  }
}
================================
import response;

var sql = """
select 
distinct ship_name,
ID,
ship_type,
ship_length,
affiliated_unit,
replace(maritime_district,'海事局','') maritime_district,
contact_person,
contact_number,
berth_location,
mmsi
from	eoc.ods_yj_social_emergency_boats 
where ship_name is not null and doc_type='拖船消防船'
order by ID
"""

var list = db.lx_doris.camel().page(sql,size,(page-1)*size);
import response;
return response.json({
          resultCode: 200,
          resultMsg: "查询成功",
          data: list
  });