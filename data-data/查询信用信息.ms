{
  "properties" : { },
  "id" : "929291f9a7ca432e99e3034c4348f2e5",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询信用信息",
  "createTime" : null,
  "updateTime" : 1755748698297,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/listNameLists",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipRegNo",
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
    "name" : "shipFirstregNo",
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
    "value" : "CN20223646741",
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
    "dataType" : "String",
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
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import response;
shipId=(shipId==null?"":shipId).replace("<em>","").replace("</em>","");
shipRegNo=(shipRegNo==null?"":shipRegNo).replace("<em>","").replace("</em>","");
shipFirstregNo=(shipFirstregNo==null?"":shipFirstregNo).replace("<em>","").replace("</em>","");
shipNameCn=(shipNameCn==null?"":shipNameCn).replace("<em>","").replace("</em>","");
if(shipId==""&&shipRegNo==""&&shipFirstregNo==""&&shipNameCn==""){
      return response.json({
    resultCode: 200,
    resultMsg: "参数不可全为空!",
    data: back 
});
}

//W_ADMIN_COUNTERPARJS_CODE_TYPEO过长，删除最后一个E--OW_ADMIN_COUNTERPARJS_CODE_TYP 正式环境要加E
//OP_ADMIN_COUNTERPARJS_CODE_TYPE过长，删除最后一个E--OP_ADMIN_COUNTERPARJS_CODE_TYP 正式环境要加E
var sql="""select distinct ID,INFO_ID,SHIP_CHINESE_NAME,SHIP_ENGLISH_NAME,CAPTAIN_NAME,SHIP_REGISTRATION_NO,OW_CARD_TYPe,OW_CARD_NO,SHIP_PORJS_REGISTRY,SHIP_OWNER,
            SHIP_OPERATOR,OW_ADMIN_COUNTERPARJS_TYPE,STATUS,CAPTAIN_CARD_TYPE,CAPTAIN_CARD_NO,
            OW_ADMIN_COUNTERPARJS_CODE_TYPE,OW_ADMIN_COUNTERPARJS_CODE,
            OW_LEGAL_PERSON,OW_LEGAL_PERSON_TYPE,OW_LEGAL_IDCARD_NO,OP_ADMIN_COUNTERPARJS_TYPE,OP_ADMIN_COUNTERPARJS_CODE_TYPE,OP_ADMIN_COUNTERPARJS_CODE,
            OP_LEGAL_PERSON,OP_LEGAL_PERSON_TYPE,OP_LEGAL_IDCARD_NO,OP_CARD_TYPE,OP_CARD_NO,replace(to_char(DISHONESTY,'yyyy-MM-dd hh:mi:ss'),'1900-01-01','--') DISHONESTY,
            BOINS_TYPE_ID,REFORM_REASON_DESC
            from JS_CREDIJS_BODY_SHIP 
            <trim prefix="WHERE" prefixOverrides="AND |OR ">
                  <if test="shipRegNo != null and shipRegNo!=''">
                             trim(SHIP_REGISTRATION_NO) = #{shipRegNo}
                   </if>
                    <if test="shipFirstregNo != null and shipFirstregNo!=''">
                           or trim(SHIP_REGISTRATION_NO) = #{shipFirstregNo}
                   </if>
                   <if test="shipId != null and shipId!=''">
                         or trim(SHIP_REGISTRATION_NO) = #{shipId}
                   </if>
                   <if test="shipNameCn != null and shipNameCn!=''">
                         or trim(ship_chinese_name) = #{shipNameCn}
                   </if>
            </trim>
      
"""

            
var redSql = """SELECT distinct ID,DATA_SOURCE,to_char(cast(CREATE_TIME as date),'yyyy-mm-dd') CREATE_TIME,QCREIID,CREATE_NAME,USER_NAME,HEAR_BUREAU_ID,HEAR_BUREAU_NAME,LINKMAN_NAME,LINKMAN_CARD_ID,LINKMAN_PHONE,CREDIJS_BODY_TYPE,to_char(cast(PUBLIC_TIME as date),'yyyy-mm-dd') PUBLIC_TIME,to_char(cast(AFFIRM_TIME as date),'yyyy-mm-dd') AFFIRM_TIME,CREDIJS_BODY_ID,STATUS,BOINS_ID,EXTEND1,EXTEND2,EXTEND3,POSJS_STATUS,AFFIRM_REASON,AFFIRM_REASON_DESC,EID,INDATE,to_char(cast(EXPIRY_DATE as date),'yyyy-mm-dd') EXPIRY_DATE,ESC_DATE,ESC_REASON,CASE_NO 
            FROM JS_CREDIJS_RED_LIST where  CREDIJS_BODY_TYPE = '1' --and STATUS = '4' 
            """;
var blackSql = """SELECT distinct ID,DATA_SOURCE,to_char(cast(CREATE_TIME as date),'yyyy-mm-dd') CREATE_TIME,QCREIID,CREATE_NAME,USER_NAME,HEAR_BUREAU_ID,HEAR_BUREAU_NAME,LINKMAN_NAME,LINKMAN_CARD_ID,LINKMAN_PHONE,CREDIJS_BODY_TYPE,to_char(cast(PUBLIC_TIME as date),'yyyy-mm-dd') PUBLIC_TIME,to_char(cast(AFFIRM_TIME as date),'yyyy-mm-dd') AFFIRM_TIME,CREDIJS_BODY_ID,STATUS,BOINS_ID,EXTEND1,EXTEND2,EXTEND3,POSJS_STATUS,AFFIRM_REASON,AFFIRM_REASON_DESC,to_char(cast(DISHONESJS_DATE as date),'yyyy-mm-dd') DISHONESJS_DATE,INDATE,to_char(cast(EXPIRY_DATE as date),'yyyy-mm-dd') EXPIRY_DATE,ESC_DATE,ESC_REASON,CASE_NO 
            FROM JS_CREDIJS_BLACK_LIST where  CREDIJS_BODY_TYPE = '1' --and STATUS = '4' 
            """;
var yellowSql = """ SELECT distinct ID,DATA_SOURCE,to_char(cast(CREATE_TIME as date),'yyyy-mm-dd') CREATE_TIME,QCREIID,CREATE_NAME,USER_NAME,HEAR_BUREAU_ID,HEAR_BUREAU_NAME,LINKMAN_NAME,LINKMAN_CARD_ID,LINKMAN_PHONE,CREDIJS_BODY_TYPE,IS_RECTIFICATION,to_char(cast(AFFIRM_TIME as date),'yyyy-mm-dd') AFFIRM_TIME,CREDIJS_BODY_ID,STATUS,BOINS_ID,EXTEND1,EXTEND2,EXTEND3,AFFIRM_REASON,AFFIRM_REASON_DESC,EID,INDATE,to_char(cast(EXPIRY_DATE as date),'yyyy-mm-dd') EXPIRY_DATE,to_char(cast(DISHONESJS_DATE as date),'yyyy-mm-dd') DISHONESJS_DATE,IS_BLACK,IS_EXPIRY,ESC_DATE,ESC_REASON,CASE_NO 
            FROM JS_CREDIJS_YELLOW_LIST  where CREDIJS_BODY_TYPE = '1' 
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

var back={
        "list":resultList,
        "total":resultList.size()
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back 
});