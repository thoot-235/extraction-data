{
  "properties" : { },
  "id" : "6302ec950fd14e8ca8581ac4fdeadb0f",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "船企信用",
  "createTime" : null,
  "updateTime" : 1724296631058,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCompanyCreditDataDetail",
  "method" : "GET",
  "parameters" : [ {
    "name" : "uscc",
    "value" : "91341800711708670T",
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
    "name" : "companyName",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"id\": \"BLK-17B96EBA-0A6B-477A-9BD8-A31DF93F55DB\",\n            \"dataSource\": \"2\",\n            \"createTime\": \"2021-12-20\",\n            \"qcreiid\": \"30-UV7NKKNJ-MJIH-1U3H-SFMV-K949EH6BN3U3\",\n            \"createName\": \"\",\n            \"userName\": \"\",\n            \"hearBureauId\": \"60-0DIOK1AG-HC93-MLUO-XLU7-WI94587RP5QQ\",\n            \"hearBureauName\": \"南京海事局\",\n            \"linkmanName\": \"冯志祥\",\n            \"linkmanCardId\": \"340204196506273017\",\n            \"linkmanPhone\": \"18196719799\",\n            \"credijsBodyType\": \"3\",\n            \"publicTime\": \"\",\n            \"affirmTime\": \"\",\n            \"credijsBodyId\": \"\",\n            \"status\": \"\",\n            \"boinsId\": \"00-O40LV2KX-5C4N-R6FL-8HTY-UBTEIYGG7VVZ\",\n            \"extend1\": \"\",\n            \"extend2\": \"\",\n            \"extend3\": \"\",\n            \"posjsStatus\": \"1\",\n            \"affirmReason\": \"\",\n            \"affirmReasonDesc\": \"\",\n            \"dishonesjsDate\": \"\",\n            \"indate\": \"\",\n            \"expiryDate\": \"\",\n            \"escDate\": \"\",\n            \"escReason\": \"\",\n            \"caseNo\": \"苏海事罚字2021060240001817-1-1\",\n            \"creditBodyType\": \"黑名单\",\n            \"_linkmanPhone\": \"181****9799\"\n        }],\n        \"total\": 1\n    }\n}",
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
      "dataType" : "String",
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
            "name" : "id",
            "value" : "BLK-17B96EBA-0A6B-477A-9BD8-A31DF93F55DB",
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
            "name" : "dataSource",
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
          }, {
            "name" : "createTime",
            "value" : "2021-12-20",
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
            "name" : "qcreiid",
            "value" : "30-UV7NKKNJ-MJIH-1U3H-SFMV-K949EH6BN3U3",
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
            "name" : "createName",
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
            "name" : "userName",
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
            "name" : "hearBureauId",
            "value" : "60-0DIOK1AG-HC93-MLUO-XLU7-WI94587RP5QQ",
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
            "name" : "hearBureauName",
            "value" : "南京海事局",
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
            "name" : "linkmanName",
            "value" : "冯志祥",
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
            "name" : "linkmanCardId",
            "value" : "340204196506273017",
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
            "name" : "linkmanPhone",
            "value" : "18196719799",
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
            "name" : "credijsBodyType",
            "value" : "3",
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
            "name" : "publicTime",
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
            "name" : "affirmTime",
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
            "name" : "credijsBodyId",
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
            "name" : "status",
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
            "name" : "boinsId",
            "value" : "00-O40LV2KX-5C4N-R6FL-8HTY-UBTEIYGG7VVZ",
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
            "name" : "extend1",
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
            "name" : "extend2",
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
            "name" : "extend3",
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
            "name" : "posjsStatus",
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
            "name" : "affirmReason",
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
            "name" : "affirmReasonDesc",
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
            "name" : "dishonesjsDate",
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
            "name" : "indate",
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
            "name" : "expiryDate",
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
            "name" : "escDate",
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
            "name" : "escReason",
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
            "name" : "caseNo",
            "value" : "苏海事罚字2021060240001817-1-1",
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
            "name" : "creditBodyType",
            "value" : "黑名单",
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
            "name" : "_linkmanPhone",
            "value" : "181****9799",
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
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import 'java.util.stream.Collectors' as Collectors;
import 'com.alibaba.fastjson.JSON' as JSON;
import 'com.alibaba.fastjson.JSONObject' as JSONObject;

import response;


uscc=(uscc==null?"":uscc).replace("<em>","").replace("</em>","");
companyName=(companyName==null?"":companyName).replace("<em>","").replace("</em>","");
if(uscc==""&&companyName==""){
      return response.json({
    resultCode: 200,
    resultMsg: "参数不可全为空!",
    data: back 
});
}
var sql="""select * from 
             bds_biz_data.JS_CREDIJS_BODY_LEGAL_PERSON 
            <trim prefix="WHERE" prefixOverrides="AND |OR ">
                  <if test="uscc != null and uscc!=''">
                             trim(ADMIN_COUNTERPARJS_CODE) = #{uscc}
                   </if>
                  
                   <if test="companyName != null and companyName!=''">
                            or trim(COMPANY_NAME) = #{companyName}
                   </if>
            </trim>
      
"""

            
var redSql = """SELECT distinct ID,DATA_SOURCE,to_char(cast(CREATE_TIME as date),'yyyy-mm-dd') CREATE_TIME,QCREIID,CREATE_NAME,USER_NAME,HEAR_BUREAU_ID,HEAR_BUREAU_NAME,LINKMAN_NAME,LINKMAN_CARD_ID,LINKMAN_PHONE,CREDIJS_BODY_TYPE,to_char(cast(PUBLIC_TIME as date),'yyyy-mm-dd') PUBLIC_TIME,to_char(cast(AFFIRM_TIME as date),'yyyy-mm-dd') AFFIRM_TIME,CREDIJS_BODY_ID,STATUS,BOINS_ID,EXTEND1,EXTEND2,EXTEND3,POSJS_STATUS,AFFIRM_REASON,AFFIRM_REASON_DESC,EID,INDATE,to_char(cast(EXPIRY_DATE as date),'yyyy-mm-dd') EXPIRY_DATE,ESC_DATE,ESC_REASON,CASE_NO 
            FROM JS_CREDIJS_RED_LIST where  CREDIJS_BODY_TYPE = '3' --and STATUS = '4' 
            """;
var blackSql = """SELECT distinct ID,DATA_SOURCE,to_char(cast(CREATE_TIME as date),'yyyy-mm-dd') CREATE_TIME,QCREIID,CREATE_NAME,USER_NAME,HEAR_BUREAU_ID,HEAR_BUREAU_NAME,LINKMAN_NAME,LINKMAN_CARD_ID,LINKMAN_PHONE,CREDIJS_BODY_TYPE,to_char(cast(PUBLIC_TIME as date),'yyyy-mm-dd') PUBLIC_TIME,to_char(cast(AFFIRM_TIME as date),'yyyy-mm-dd') AFFIRM_TIME,CREDIJS_BODY_ID,STATUS,BOINS_ID,EXTEND1,EXTEND2,EXTEND3,POSJS_STATUS,AFFIRM_REASON,AFFIRM_REASON_DESC,
to_char(cast(DISHONESJS_DATE as date),'yyyy-mm-dd') DISHONESJS_DATE,INDATE,to_char(cast(EXPIRY_DATE as date),'yyyy-mm-dd') EXPIRY_DATE,ESC_DATE,ESC_REASON,CASE_NO 
            FROM JS_CREDIJS_BLACK_LIST where  CREDIJS_BODY_TYPE = '3' --and STATUS = '4' 
            """;
var yellowSql = """ SELECT distinct ID,DATA_SOURCE,to_char(cast(CREATE_TIME as date),'yyyy-mm-dd') CREATE_TIME,QCREIID,CREATE_NAME,USER_NAME,HEAR_BUREAU_ID,HEAR_BUREAU_NAME,LINKMAN_NAME,LINKMAN_CARD_ID,LINKMAN_PHONE,CREDIJS_BODY_TYPE,IS_RECTIFICATION,to_char(cast(AFFIRM_TIME as date),'yyyy-mm-dd') AFFIRM_TIME,CREDIJS_BODY_ID,STATUS,BOINS_ID,EXTEND1,EXTEND2,EXTEND3,AFFIRM_REASON,AFFIRM_REASON_DESC,EID,INDATE,to_char(cast(EXPIRY_DATE as date),'yyyy-mm-dd') EXPIRY_DATE,
to_char(cast(DISHONESJS_DATE as date),'yyyy-mm-dd') DISHONESJS_DATE,IS_BLACK,IS_EXPIRY,ESC_DATE,ESC_REASON,CASE_NO 
            FROM JS_CREDIJS_YELLOW_LIST  where CREDIJS_BODY_TYPE = '3' 
            """

var list=db.biz_data.camel().select(sql);



var resultList = [];
var totalCount = 0;
for(item in list){
      var infoId = item.get("infoId");
      var nextSql = """ ?{infoId,and id = #{infoId}}""";
      redSql = redSql + nextSql;
      var redList=db.biz_data.camel().select(redSql);
      for(item1 in redList){
            item1.put("creditBodyType","红名单");
             item1.put("_linkmanPhone",DesensitizationUtil.isFixed(item1.get("linkmanPhone")==null?"":item1.get("linkmanPhone").asString()));
       
      }
      blackSql = blackSql + nextSql;
      var blackList=db.biz_data.camel().select(blackSql);
      for(item1 in blackList){
            item1.put("creditBodyType","黑名单");
           item1.put("_linkmanPhone",DesensitizationUtil.isFixed(item1.get("linkmanPhone")==null?"":item1.get("linkmanPhone").asString()));
       
      }
      yellowSql = yellowSql + nextSql;
      var yellowList=db.biz_data.camel().select(yellowSql);
      for(item1 in yellowList){
            item1.put("creditBodyType","黄名单");
           item1.put("_linkmanPhone",DesensitizationUtil.isFixed(item1.get("linkmanPhone")==null?"":item1.get("linkmanPhone").asString()));
       
      }
      resultList.addAll(redList);
      resultList.addAll(blackList);
      resultList.addAll(yellowList);  
}

if(resultList.size()>1){
     resultList= resultList.stream().sorted(Comparator.comparing(e1->JSONObject.parseObject(JSON.toJSONString(e1)).get("createTime").toString())).collect(Collectors.toList())

}
var back={
        "list":resultList,
        "total":resultList.size()
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back 
});