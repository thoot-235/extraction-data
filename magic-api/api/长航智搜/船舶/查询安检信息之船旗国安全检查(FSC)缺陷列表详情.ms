{
  "properties" : { },
  "id" : "94b3ae9882904f3e8adac1c53f421f5c",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询安检信息之船旗国安全检查(FSC)缺陷列表详情",
  "createTime" : null,
  "updateTime" : 1693552389791,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/ShipflagStateDetail111",
  "method" : "GET",
  "parameters" : [ {
    "name" : "domesticSecurityNumber",
    "value" : "4",
    "description" : "",
    "required" : true,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [],\n        \"total\": 0\n    }\n}",
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
        "children" : [ ]
      }, {
        "name" : "total",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

var sql="""select count(*) OVER() total_count,  DOMESTIC_SECURITY_NUMBER, SEQ_NO, DEFECT_CODE, DEFECT_DESCRIPTION, PROCESSING_CODE, HANDLING_COMMENTS, DEFECT_MARK,CORRECT_MARK, IS_INSPECT_ORG_RELATED, REMARK, INITIAL_INSPECT_NO, ENFORCE_FOUNDATION,count(*) OVER() total_count   
        from  bds_biz_data.SHP_STATE_CONTROL_DETAIL where DOMESTIC_SECURITY_NUMBER = #{domesticSecurityNumber} and delete_flag='0'""";

var list=db.base_data.camel().select(sql);
var totalCount=0;
for(item in list){
        totalCount = item.get("totalCount");
} 
if(list==null){
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