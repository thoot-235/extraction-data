{
  "properties" : { },
  "id" : "05135f42252346c6b588bb443e43e7d5",
  "script" : null,
  "groupId" : "f8cb5b13739f455397cc22a7ae910702",
  "name" : "应急资源_应急队伍",
  "createTime" : null,
  "updateTime" : 1753347565253,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getEmergencyTeam",
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
    "value" : "10",
    "description" : "",
    "required" : false,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "10",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 22,\n        \"list\": [{\n            \"id\": 1,\n            \"unitName\": \"长江航运总医院\",\n            \"teamType\": \"事业单位\",\n            \"address\": \"武汉市江岸区惠济路5号（澳门路280号）\",\n            \"contactPerson\": \"车彪\",\n            \"contactNumber\": \"13797016121\",\n            \"emergencySpecialtyDirection\": \"水上医疗救助\",\n            \"personnelAndEquipment\": \"开放病床1068张，3.0T核磁共振、320排动态容积CT等\"\n        }, {\n            \"id\": 2,\n            \"unitName\": \"武汉长江航道救助打捞局\",\n            \"teamType\": \"事业单位\",\n            \"address\": \"湖北省武汉市江岸区沿江大道140号\",\n            \"contactPerson\": \"严海文（局长助理）\",\n            \"contactNumber\": \"13871463025\",\n            \"emergencySpecialtyDirection\": \"沉船打捞、潜水作业\",\n            \"personnelAndEquipment\": \"110人、船舶9艘\"\n        }, {\n            \"id\": 3,\n            \"unitName\": \"长江万州应急救助基地\",\n            \"teamType\": \"事业单位\",\n            \"address\": \"重庆市万州区王牌路508号\",\n            \"contactPerson\": \"刘天云\",\n            \"contactNumber\": \"15802779721\",\n            \"emergencySpecialtyDirection\": \"沉船沉物打捞\",\n            \"personnelAndEquipment\": \"专业人员20人\"\n        }, {\n            \"id\": 4,\n            \"unitName\": \"长江武汉水上应急救助基地\",\n            \"teamType\": \"事业单位\",\n            \"address\": \"湖北省武汉市江汉区沿江大道江滩17号\",\n            \"contactPerson\": \"邬和平\",\n            \"contactNumber\": \"15971432229\",\n            \"emergencySpecialtyDirection\": \"沉船沉物打捞\",\n            \"personnelAndEquipment\": \"专业人员21人\"\n        }, {\n            \"id\": 5,\n            \"unitName\": \"长江南京水上应急救助基地（长江南京水上应急救助基地）\",\n            \"teamType\": \"事业单位\",\n            \"address\": \"江苏省南京市鼓楼区中山北路611号\",\n            \"contactPerson\": \"王志全\",\n            \"contactNumber\": \"18651883660\",\n            \"emergencySpecialtyDirection\": \"沉船沉物打捞\",\n            \"personnelAndEquipment\": \"专业人员70人\"\n        }, {\n            \"id\": 6,\n            \"unitName\": \"宜宾市综合应急救援队\",\n            \"teamType\": \"社会团体\",\n            \"address\": \"宜宾市翠屏区古塔路和苑小区南侧\",\n            \"contactPerson\": \"陈华\",\n            \"contactNumber\": \"18990960235\",\n            \"emergencySpecialtyDirection\": \"人员搜救、溺水打捞\",\n            \"personnelAndEquipment\": \"橡皮艇3艘、小型冲锋舟2艘\"\n        }, {\n            \"id\": 7,\n            \"unitName\": \"宜宾蓝豹救援队\",\n            \"teamType\": \"社会团体\",\n            \"address\": \"宜宾市翠屏区正义街16号\",\n            \"contactPerson\": \"韦仕中\",\n            \"contactNumber\": \"13909096533\",\n            \"emergencySpecialtyDirection\": \"快速救援、沉船定位\",\n            \"personnelAndEquipment\": \"橡皮艇5艘、小型冲锋舟1艘\"\n        }, {\n            \"id\": 8,\n            \"unitName\": \"宜宾齐援救援队\",\n            \"teamType\": \"社会团体\",\n            \"address\": \"宜宾市翠屏区清华街65号\",\n            \"contactPerson\": \"胡建\",\n            \"contactNumber\": \"13990905598\",\n            \"emergencySpecialtyDirection\": \"人员搜救\",\n            \"personnelAndEquipment\": \"小型冲锋舟2艘\"\n        }, {\n            \"id\": 9,\n            \"unitName\": \"泸州合江飞豹应急救援队\",\n            \"teamType\": \"社会团体\",\n            \"address\": \"泸州市合江县长江路123号\",\n            \"contactPerson\": \"廖国游\",\n            \"contactNumber\": \"13340741726\",\n            \"emergencySpecialtyDirection\": \"人员搜救\",\n            \"personnelAndEquipment\": \"小型冲锋舟1艘\"\n        }, {\n            \"id\": 10,\n            \"unitName\": \"重庆蓝天水上救援\",\n            \"teamType\": \"社会团体\",\n            \"address\": \"重庆市南岸区弹子石新街\",\n            \"contactPerson\": \"高杨\",\n            \"contactNumber\": \"13500300165\",\n            \"emergencySpecialtyDirection\": \"人员搜救\",\n            \"personnelAndEquipment\": \"小型冲锋舟2艘\"\n        }]\n    }\n}",
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
        "name" : "total",
        "value" : "22",
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
        "name" : "list",
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
            "name" : "id",
            "value" : "1",
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
            "name" : "unitName",
            "value" : "长江航运总医院",
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
            "name" : "teamType",
            "value" : "事业单位",
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
            "name" : "address",
            "value" : "武汉市江岸区惠济路5号（澳门路280号）",
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
            "name" : "contactPerson",
            "value" : "车彪",
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
            "name" : "contactNumber",
            "value" : "13797016121",
            "description" : "",
            "required" : false,
            "dataType" : "Long",
            "type" : null,
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "emergencySpecialtyDirection",
            "value" : "水上医疗救助",
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
            "name" : "personnelAndEquipment",
            "value" : "开放病床1068张，3.0T核磁共振、320排动态容积CT等",
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
    } ]
  }
}
================================
import response;

var sql = """
select
id,
unit_name,
team_type,
case when address='/' then '--' 
else address end as address,
case when contact_person='/' then '--' 
else contact_person end as contact_person,
contact_number,
emergency_specialty_direction,
personnel_and_equipment
from ods_yj_emergency_team_info
order by id
"""

var list = db.ods_data.camel().page(sql,size,(page-1)*size);
import response;
return response.json({
          resultCode: 200,
          resultMsg: "查询成功",
          data: list
  });