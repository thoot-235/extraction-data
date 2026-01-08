{
  "properties" : { },
  "id" : "b3d4dd3e54a443ebb513b43e00f2b055",
  "script" : null,
  "groupId" : "32fd6df1028049b98e9c7064eb84bfa1",
  "name" : "船公司规模",
  "createTime" : null,
  "updateTime" : 1706603765528,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipCompanyScale",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"companyType\": \"省际\",\n        \"num\": 2602\n    }, {\n        \"companyType\": \"省内\",\n        \"num\": 1168\n    }]\n}",
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
          "name" : "companyType",
          "value" : "省际",
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
          "name" : "num",
          "value" : "2602",
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


var sql = """
  
select target_name company_type,target_val num
                from dm_data.sts_basic_info
                where sts_code = '115'
                and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '115')  
 
"""

var sqlOutInner = """
  
select nvl(sum(province_out_num),0) as out_num, nvl(sum(province_inner_num),0) as inner_num from  ODS_HS_SHARE.sts_company_temp
 
"""



var shipNums =  db.ods_data.camel().selectOne(sqlOutInner);
var res=[];
res.add({"companyType": "省际","num":shipNums.get("outNum")::int});
res.add({"companyType": "省内","num":shipNums.get("innerNum")::int})


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
      
});