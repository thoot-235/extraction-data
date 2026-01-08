{
  "properties" : { },
  "id" : "copy1691135049774d44275",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "查询问题反馈详情",
  "createTime" : null,
  "updateTime" : 1694505854726,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getFreebackDetail",
  "method" : "GET",
  "parameters" : [ {
    "name" : "applyId",
    "value" : "6000038046",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"res\": [{\n            \"columnCn\": \"证书打印日期\",\n            \"columnEn\": \"CERT_PRINT_DATE\",\n            \"datas\": \"\",\n            \"feedbackData\": \"3434\"\n        }, {\n            \"columnCn\": \"证书号码\",\n            \"columnEn\": \"CERT_NO\",\n            \"datas\": \"\",\n            \"feedbackData\": \"33434\"\n        }],\n        \"status\": \"已反馈\",\n        \"remark\": \"\",\n        \"date\": \"\",\n        \"file\": [{\n            \"applyId\": \"6000038046\",\n            \"annexId\": \"8BF8DD92EE504181BC1A881C25B3BEE4.png\",\n            \"annexName\": \"测试样例图片.png\",\n            \"annexType\": \"\"\n        }]\n    }\n}",
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
        "name" : "res",
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
            "name" : "columnCn",
            "value" : "证书打印日期",
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
            "name" : "columnEn",
            "value" : "CERT_PRINT_DATE",
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
            "name" : "datas",
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
            "name" : "feedbackData",
            "value" : "3434",
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
      }, {
        "name" : "status",
        "value" : "已反馈",
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
        "name" : "remark",
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
        "name" : "date",
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
        "name" : "file",
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
            "name" : "applyId",
            "value" : "6000038046",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "annexId",
            "value" : "8BF8DD92EE504181BC1A881C25B3BEE4.png",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "annexName",
            "value" : "测试样例图片.png",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "annexType",
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
        } ]
      } ]
    } ]
  }
}
================================

import 'com.success.data.tag.TagUtils' as TagUtils;
import response;
import log;

 

 var  sql="""select 
                a.COLUMN_CN,
                a.COLUMN_EN,
                a.DATAS,
                a.feedback_data
  from  SC_PROBLEM_COLUMNS a left join SC_PROBLEM_APPLY_FORM b on a.APPLY_ID=b.id
    where  1=1 
   ?{applyId,and a.APPLY_ID  = #{applyId}}
 order by a.CREATE_DATE desc
"""
var res=db.base_data.camel().select(sql);


 var  sqlyj="""select  (case PROBLEM_HAND_STATUS when '1' then '已反馈' when '2'  then '已处理' else '' end)STATUS,PROBLEM_HAND_REMARK remark,   problem_hand_date  hand_date
  from  SC_PROBLEM_APPLY_FORM  
    where  1=1 
   ?{applyId,and  id  = #{applyId}}
"""
var resyj=db.base_data.camel().selectOne(sqlyj);


 var  sqlfj="""select  APPLY_ID,ANNEX_ID,ANNEX_NAME,(case ANNEX_TYPE when '1' then '营业执照' when '2' then '船舶营运证' when '3' then '船员身份证正面'  when '4' then '船员身份证反面' when '5' then '其他'
        else '' end)ANNEX_TYPE
  from  SC_PROBLEM_ANNEXS  
    where  1=1 
   ?{applyId,and  apply_Id  = #{applyId}}
"""
var resfj=db.base_data.camel().select(sqlfj);

var  result={};
result.put("res",res);
result.put("status",resyj.get("status"));
result.put("remark",resyj.get("remark"));
result.put("date",resyj.get("handDate"));
result.put("file",resfj);

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: result
	});