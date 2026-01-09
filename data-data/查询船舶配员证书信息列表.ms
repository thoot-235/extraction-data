{
  "properties" : { },
  "id" : "9b768c49c9734c8d943958f7697bd834",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询船舶配员证书信息列表",
  "createTime" : null,
  "updateTime" : 1693552389900,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/queryShipManningCertList",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipRegNo",
    "value" : "350315000046",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "statusFlag",
    "value" : "0",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"serialNo\": \"CBDJ10091300010501\",\n        \"shipNameCn\": \"海巡10529\",\n        \"shipId\": \"CN20116941661\",\n        \"shipTypeCode\": \"公务船\",\n        \"shipGrosston\": \"7\",\n        \"shipEnginePower\": \"82\",\n        \"certPrintNo\": \"15*******62\",\n        \"issuOrgCode\": \"100900\",\n        \"expdateStart\": \"2016-05-06 00:00:00\",\n        \"expdateEnd\": \"2021-05-05 00:00:00\",\n        \"statusFlag\": \"0\",\n        \"shipType\": \"2\"\n    }]\n}",
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
          "name" : "serialNo",
          "value" : "CBDJ10091300010501",
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
          "name" : "shipNameCn",
          "value" : "海巡10529",
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
          "value" : "CN20116941661",
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
          "name" : "shipTypeCode",
          "value" : "公务船",
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
          "name" : "shipGrosston",
          "value" : "7",
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
          "name" : "shipEnginePower",
          "value" : "82",
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
          "name" : "certPrintNo",
          "value" : "15*******62",
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
          "name" : "issuOrgCode",
          "value" : "100900",
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
          "name" : "expdateStart",
          "value" : "2016-05-06 00:00:00",
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
          "name" : "expdateEnd",
          "value" : "2021-05-05 00:00:00",
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
          "value" : "0",
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
          "name" : "shipType",
          "value" : "2",
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
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;

import response;
shipRegNo=(shipRegNo==null?"":shipRegNo).replace("<em>","").replace("</em>","");

var cbSql = """
     select t.SERIAL_NO,t.SHIP_NAME_CN,t.SHIP_ID,t.SHIP_TYPE_CODE,t.SHIP_GROSSTON,t.SHIP_ENGINE_POWER,t.CERT_PRINT_NO,t.ISSU_ORG_CODE,
                      t.EXPDATE_START,t.EXPDATE_END,t.STATUS_FLAG,t.ship_type from SHP_MANNING_CERT t
        where  t.ship_reg_no=#{shipRegNo} and delete_flag='0'
              ?{status_flag,  and  trim(STATUS_FLAG)=#{status_flag}}
        order by t.EXPDATE_START desc
                     """
var data = db.base_data.camel().select(cbSql);
for (item in data) {
    item.put("shipTypeCode",
        TagUtils.getTagNameByCode("shipClassTag", item.get("shipTypeCode")));
    //      数据脱敏
    item.put("certPrintNo", DesensitizationUtil.certNo(item.get("certPrintNo")::string))
}
if (data == null) {
    data = [];
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: data
});