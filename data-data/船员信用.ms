{
  "properties" : { },
  "id" : "b0311a0d659e4b3095896025f4680dd3",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "船员信用",
  "createTime" : null,
  "updateTime" : 1723786679220,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCrewCreditDataDetail",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n\"idCardNo\":\"75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"id\": \"CRP-562EBB2C-6B2C-4C46-A4DB-85248F7764D7\",\n            \"dataSource\": \"1\",\n            \"createTime\": \"2020-08-12\",\n            \"qcreiid\": \"30-WKT7C4FZ-YFDM-TUQZ-EIBF-8UHUVQ9GZVYF\",\n            \"createName\": \"赵晓俊\",\n            \"userName\": \"zhaoxj@jsmsa\",\n            \"hearBureauId\": \"60-QN234D1S-78OG-QKVD-AOQJ-QDFW8HTX9JEM\",\n            \"hearBureauName\": \"江苏海事局局机关\",\n            \"linkmanName\": \"谷亚琴\",\n            \"linkmanCardId\": \"\",\n            \"linkmanPhone\": \"\\t13951037160\",\n            \"credijsBodyType\": \"1\",\n            \"publicTime\": \"2020-08-24\",\n            \"affirmTime\": \"2020-09-07\",\n            \"credijsBodyId\": \"\",\n            \"status\": \"5\",\n            \"boinsId\": \"00-1ZXFPFNP-DFD8-5ZEW-E1HG-1H521KIBSAVH\",\n            \"extend1\": \"\",\n            \"extend2\": \"\",\n            \"extend3\": \"\",\n            \"posjsStatus\": \"1\",\n            \"affirmReason\": \"获评上年度交通运输部海事局“安全诚信公司”“安全诚信船舶”或“安全诚信船长”\",\n            \"affirmReasonDesc\": \"获评2019年度安全诚信船长。\",\n            \"eid\": \"30-GRGIES0S-LZLL-JP1E-QO7Q-ZKF3PVVEJYXK\",\n            \"indate\": \"12\",\n            \"expiryDate\": \"2021-09-07\",\n            \"escDate\": \"\",\n            \"escReason\": \"\",\n            \"caseNo\": \"\",\n            \"creditBodyType\": \"红名单\",\n            \"_linkmanPhone\": \"\\t1********60\"\n        }],\n        \"total\": 1\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
      "name" : "idCardNo",
      "value" : "75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=",
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
            "name" : "id",
            "value" : "CRP-562EBB2C-6B2C-4C46-A4DB-85248F7764D7",
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
            "name" : "createTime",
            "value" : "2020-08-12",
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
            "value" : "30-WKT7C4FZ-YFDM-TUQZ-EIBF-8UHUVQ9GZVYF",
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
            "value" : "赵晓俊",
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
            "value" : "zhaoxj@jsmsa",
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
            "value" : "60-QN234D1S-78OG-QKVD-AOQJ-QDFW8HTX9JEM",
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
            "value" : "江苏海事局局机关",
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
            "value" : "谷亚琴",
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
            "name" : "linkmanPhone",
            "value" : "\\t13951037160",
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
            "name" : "publicTime",
            "value" : "2020-08-24",
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
            "value" : "2020-09-07",
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
            "value" : "5",
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
            "value" : "00-1ZXFPFNP-DFD8-5ZEW-E1HG-1H521KIBSAVH",
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
            "value" : "获评上年度交通运输部海事局“安全诚信公司”“安全诚信船舶”或“安全诚信船长”",
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
            "value" : "获评2019年度安全诚信船长。",
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
            "name" : "eid",
            "value" : "30-GRGIES0S-LZLL-JP1E-QO7Q-ZKF3PVVEJYXK",
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
            "value" : "12",
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
            "value" : "2021-09-07",
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
            "name" : "creditBodyType",
            "value" : "红名单",
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
            "value" : "\\t1********60",
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
import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;
//idCardNo = (idCardNo == null ? "" : idCardNo).replace("<em>", "").replace("</em>", "");

var idCardNo=(body.idCardNo==null?"":body.idCardNo).replace("<em>","").replace("</em>","");
idCardNo=ZzSecurityHelper.decryptAES(body.idCardNo);
idCardNo = idCardNo.replace("<em>","").replace("</em>","");
if(idCardNo==null || idCardNo==''){
    return  response.json({
        "code": 0,
        "message": "参数[idCardNo]为必填项",
        "data": {},      
        "executeTime": 2
    });
}

//W_ADMIN_COUNTERPARJS_CODE_TYPEO过长，删除最后一个E--OW_ADMIN_COUNTERPARJS_CODE_TYP 正式环境要加E
//OP_ADMIN_COUNTERPARJS_CODE_TYPE过长，删除最后一个E--OP_ADMIN_COUNTERPARJS_CODE_TYP 正式环境要加E
var sql="""select * from 
             bds_biz_data.js_credijs_body_natural_person 
            <trim prefix="WHERE" prefixOverrides="AND |OR ">
                  <if test="idCardNo != null and idCardNo!=''">
                             trim(card_no) = #{idCardNo}
                   </if>
                  
            </trim>
      
"""

            
var redSql = """SELECT distinct ID,DATA_SOURCE,to_char(cast(CREATE_TIME as date),'yyyy-mm-dd') CREATE_TIME,QCREIID,CREATE_NAME,USER_NAME,HEAR_BUREAU_ID,HEAR_BUREAU_NAME,LINKMAN_NAME,LINKMAN_CARD_ID,LINKMAN_PHONE,CREDIJS_BODY_TYPE,to_char(cast(PUBLIC_TIME as date),'yyyy-mm-dd') PUBLIC_TIME,to_char(cast(AFFIRM_TIME as date),'yyyy-mm-dd') AFFIRM_TIME,CREDIJS_BODY_ID,STATUS,BOINS_ID,EXTEND1,EXTEND2,EXTEND3,POSJS_STATUS,AFFIRM_REASON,AFFIRM_REASON_DESC,EID,INDATE,to_char(cast(EXPIRY_DATE as date),'yyyy-mm-dd') EXPIRY_DATE,ESC_DATE,ESC_REASON,CASE_NO 
            FROM JS_CREDIJS_RED_LIST where  1=1--CREDIJS_BODY_TYPE = '1' --and STATUS = '4' 
            """;
var blackSql = """SELECT distinct ID,DATA_SOURCE,to_char(cast(CREATE_TIME as date),'yyyy-mm-dd') CREATE_TIME,QCREIID,CREATE_NAME,USER_NAME,HEAR_BUREAU_ID,HEAR_BUREAU_NAME,LINKMAN_NAME,LINKMAN_CARD_ID,LINKMAN_PHONE,CREDIJS_BODY_TYPE,to_char(cast(PUBLIC_TIME as date),'yyyy-mm-dd') PUBLIC_TIME,to_char(cast(AFFIRM_TIME as date),'yyyy-mm-dd') AFFIRM_TIME,CREDIJS_BODY_ID,STATUS,BOINS_ID,EXTEND1,EXTEND2,EXTEND3,POSJS_STATUS,AFFIRM_REASON,AFFIRM_REASON_DESC,to_char(cast(DISHONESJS_DATE as date),'yyyy-mm-dd') DISHONESJS_DATE,INDATE,to_char(cast(EXPIRY_DATE as date),'yyyy-mm-dd') EXPIRY_DATE,ESC_DATE,ESC_REASON,CASE_NO 
            FROM JS_CREDIJS_BLACK_LIST where  1=1--CREDIJS_BODY_TYPE = '1' --and STATUS = '4' 
            """;
var yellowSql = """ SELECT distinct ID,DATA_SOURCE,to_char(cast(CREATE_TIME as date),'yyyy-mm-dd') CREATE_TIME,QCREIID,CREATE_NAME,USER_NAME,HEAR_BUREAU_ID,HEAR_BUREAU_NAME,LINKMAN_NAME,LINKMAN_CARD_ID,LINKMAN_PHONE,CREDIJS_BODY_TYPE,IS_RECTIFICATION,to_char(cast(AFFIRM_TIME as date),'yyyy-mm-dd') AFFIRM_TIME,CREDIJS_BODY_ID,STATUS,BOINS_ID,EXTEND1,EXTEND2,EXTEND3,AFFIRM_REASON,AFFIRM_REASON_DESC,EID,INDATE,to_char(cast(EXPIRY_DATE as date),'yyyy-mm-dd') EXPIRY_DATE,to_char(cast(DISHONESJS_DATE as date),'yyyy-mm-dd') DISHONESJS_DATE,IS_BLACK,IS_EXPIRY,ESC_DATE,ESC_REASON,CASE_NO 
            FROM JS_CREDIJS_YELLOW_LIST  where  1=1--CREDIJS_BODY_TYPE = '1' 
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
     resultList= resultList.stream().sorted(Comparator.comparing(e1->JSONObject.parseObject(JSON.toJSONString(e1)).get("createTime"))).collect(Collectors.toList())

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