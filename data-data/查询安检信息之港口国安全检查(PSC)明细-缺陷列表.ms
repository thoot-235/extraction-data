{
  "properties" : { },
  "id" : "60f58ac3b6c2417bbf3bf105562ea07d",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询安检信息之港口国安全检查(PSC)明细-缺陷列表",
  "createTime" : null,
  "updateTime" : 1693552389706,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/portStateDefectList",
  "method" : "GET",
  "parameters" : [ {
    "name" : "formAId",
    "value" : "75FDA9E517114334B1C162907EA12DC5",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"formBId\": \"1BAD995974464E1E8500848DC5175C33\",\n            \"formBDefCode\": \"16106\",\n            \"formBDefConventions\": \"\",\n            \"formBDefConventionCode\": \"\",\n            \"formBDefIndex\": \"10\",\n            \"formBDefRoCode\": \"\",\n            \"formBDefRemarks\": \"RECORD OF SHIP SECURITY DRILL - NOT RECORDED\",\n            \"formBDefRoName\": \"\",\n            \"formBActionOther\": \"Rectify deficiency from now on\",\n            \"formAInspId\": \"334471\",\n            \"formBDefCreateTime\": \"2008-01-25 00:00:00\",\n            \"formBIsClose\": \"0\",\n            \"totalCount\": \"1\"\n        }],\n        \"total\": 1\n    }\n}",
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
            "name" : "formBId",
            "value" : "1BAD995974464E1E8500848DC5175C33",
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
            "name" : "formBDefCode",
            "value" : "16106",
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
            "name" : "formBDefConventions",
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
            "name" : "formBDefConventionCode",
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
            "name" : "formBDefIndex",
            "value" : "10",
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
            "name" : "formBDefRoCode",
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
            "name" : "formBDefRemarks",
            "value" : "RECORD OF SHIP SECURITY DRILL - NOT RECORDED",
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
            "name" : "formBDefRoName",
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
            "name" : "formBActionOther",
            "value" : "Rectify deficiency from now on",
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
            "name" : "formAInspId",
            "value" : "334471",
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
            "name" : "formBDefCreateTime",
            "value" : "2008-01-25 00:00:00",
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
            "name" : "formBIsClose",
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
            "name" : "totalCount",
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
          } ]
        } ]
      }, {
        "name" : "total",
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
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

var sql = """select  FORM_B_ID, FORM_B_DEF_CODE, FORM_B_DEF_CONVENTIONS, FORM_B_DEF_CONVENTION_CODE, FORM_B_DEF_INDEX,
           FORM_B_DEF_RO_CODE, FORM_B_DEF_REMARKS, FORM_B_DEF_RO_NAME, FORM_B_ACTION_OTHER, FORM_A_INSP_ID, FORM_B_DEF_CREATE_TIME, FORM_B_IS_CLOSE,count(*) OVER() total_count
           from PSC_INSP_FORM_B where FORM_B_ID in(select FORM_AB_RELATION_FORM_B_ID
            from PSC_FORM_AB_RELATION where FORM_AB_RELATION_FORM_A_ID = #{formAId}) and delete_flag='0' """;
var list=db.biz_data.camel().select(sql);
var totalCount=0;   
for(item in list){
    totalCount = item.get("totalCount");
}    

if (list==null){
        list=[];  
}
var back={
        "list":list,
        "total":Integer.parseInt(totalCount::string) 
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back 
});