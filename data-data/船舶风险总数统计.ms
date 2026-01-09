{
  "properties" : { },
  "id" : "52936d3297ad4c24ae05f06f32c70a42",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "船舶风险总数统计",
  "createTime" : null,
  "updateTime" : 1693552390596,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getRiskEventTotal",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipNameEn",
    "value" : "兴普007",
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1672913046504,\n    \"executeTime\": 11\n}",
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
      "name" : "code",
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1672913046504",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "11",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;

var cbSql;
shipNameEn=(shipNameEn==null?"":shipNameEn).replace("<em>","").replace("</em>","");

cbSql = """

                
           select count(ID) over() total_count, RISK_NAME,RISK_TYPE_NAME,RISK_DESC ,
RISK_EVENT,
 ( case when RISK_LEVEL =1 then '较小'
 when RISK_LEVEL =2 then '一般'
   when RISK_LEVEL =3 then '较大'
     when RISK_LEVEL =4 then '重大' else '' end )
    RISK_LEVEL,PRE_CTRL_MEASURES,RESPON_PERSON ,
IMP_CHARGE_PERSON ,EMG_TREAT_MEASURE,SHIP_NAME_CN
  from  bds_biz_data.RISK_SHIP_STRATEGY where  DELETE_FLAG=0 
   ?{shipNameEn,and instr(SHIP_NAME_CN,#{shipNameEn}||'；')>0 }
     

         
""";

import response
var list=db.biz_data.camel().select(cbSql);
        var totalCount=0;
        for(item in list){
             
            

            totalCount = item.get("totalCount");
        }     
      
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: Integer.parseInt(totalCount::string) 
            
      });
 




