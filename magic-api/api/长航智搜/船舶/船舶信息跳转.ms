{
  "properties" : { },
  "id" : "6ae6d719da5f4c058532858bf2fc6e92",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "船舶信息跳转",
  "createTime" : null,
  "updateTime" : 1703731885377,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipInfoForTurn",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"shipImo\":\"\",\r\n    \"shipNameCn\":\"\",\r\n    \"shipNo\":\"\",\r\n    \"shipRegNo\":\"\",\r\n    \"shipId\":\"CN20099436517\",\r\n    \"mmsi\":\"\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"shipRegNo\": \"350321000122\",\n        \"shipImo\": \"\",\n        \"shipId\": \"CN20099436517\",\n        \"shipNo\": \"A350315000046\",\n        \"statusFlag\": \"1\",\n        \"shipInspectNo\": \"2009X3300524\"\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "shipImo",
      "value" : "",
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
      "name" : "shipNameCn",
      "value" : "",
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
      "name" : "shipNo",
      "value" : "",
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
      "name" : "shipRegNo",
      "value" : "",
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
      "name" : "shipId",
      "value" : "CN20099436517",
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
      "name" : "mmsi",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
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
        "name" : "shipRegNo",
        "value" : "350321000122",
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
        "name" : "shipImo",
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
      }, {
        "name" : "shipId",
        "value" : "CN20099436517",
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
        "name" : "shipNo",
        "value" : "A350315000046",
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
        "name" : "statusFlag",
        "value" : "1",
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
        "name" : "shipInspectNo",
        "value" : "2009X3300524",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import response;


var shipImo = body.shipImo;
var shipId=body.shipId;
var shipRegNo=body.shipRegNo;
var shipNameCn=body.shipNameCn;
var shipImo=body.shipImo;


if ((shipId == null || shipId == '') && (shipRegNo == null || shipRegNo == '') && (shipNo == null || shipNo == '')&& (shipNameCn == null || shipNameCn == '')&& (shipImo == null || shipImo == '')) {
     return response.json({
        resultCode: 400,
        resultMsg: "参数【shipId】、【shipNo】、【shipRegNo】、【shipNameCn】、【shipImo】、【mmsi】不可同时为空",
    });
}
var sql="""
SELECT
    SHIP_NO,
	SHIP_REG_NO,
	ship_imo,
	ship_id,
	STATUS_FLAG,
	ship_inspect_no,
  SHIP_FIRSTREG_NO,
  MMSI,
  SHIP_NAME_CN,
  SHIP_NAME_EN as ship_name
FROM
	ods_hs_share.sc_ship_basic_data 
WHERE 1=1
?{body.shipId,and ship_id = #{body.shipId} }
?{body.shipRegNo,and SHIP_REG_NO = #{body.shipRegNo} }
?{body.shipNo,and SHIP_NO = #{body.shipNo} }
?{body.shipImo,and ship_imo = #{body.shipImo} }
?{body.shipNameCn,and ship_Name_Cn = #{body.shipNameCn} }
?{body.mmsi,and ship_Name_Cn = #{body.mmsi} }
"""
var data=db.ods_data.camel().selectOne(sql);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
});
