{
  "properties" : { },
  "id" : "1975a231c6a747b983f4a71b1d085cf0",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "获取合格证详情",
  "createTime" : null,
  "updateTime" : 1723786773992,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCertificateInfo",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n\"idCardNo\":\"75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": []\n}",
  "description" : "",
  "requestBodyDefinition" : {
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
      "children" : [ ]
    } ]
  }
}
================================
import response;
import 'com.success.data.tag.TagUtils' as TagUtils;

 import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;




var serialNo=(body.serialNo==null?"":body.serialNo).replace("<em>","").replace("</em>","");
serialNo=ZzSecurityHelper.decryptAES(serialNo);
serialNo = serialNo.replace("<em>","").replace("</em>","");

//certPrintNo=(certPrintNo==null?"":certPrintNo).replace("<em>","").replace("</em>","");

if(serialNo==null || serialNo==''){
    return  response.json({
        "code": 0,
        "message": "参数[serialNo]为必填项",
        "data": {},      
        "executeTime": 2
    });
}
var type=body.type;
if(type==null || type==''){
    return  response.json({
        "code": 0,
        "message": "参数[type]为必填项",
        "data": {},      
        "executeTime": 2
    });
}

var sql2="""
   select CERT_NO,TRAIN_ITEM_CODE,TRAIN_ITEM_NAME||'('||TRAIN_ITEM_CODE||')' TRAIN_ITEM_NAME,APPL_FORM,ISSU_ORG_CODE,case when to_char(ISSU_DATE,'yyyy-mm-dd')='1900-01-01' then '--' else to_char(ISSU_DATE,'yyyy-mm-dd') end  as ISSU_DATE,
        case when to_char(EXPIRY_DATE,'yyyy-mm-dd')='1900-01-01' then '--' else to_char(EXPIRY_DATE,'yyyy-mm-dd') end  as EXPIRY_DATE,case when CERT_STATUS='1' then '有效' else '无效' end CERT_STATUS,APPL_EVALU from bds_base_data.CREW_SEA_CERT_TRAIN_ITEM
        where id_card_no in (select id_card_no from bds_base_data.crew_cert_sea_train_quli q  
            where q.serial_no=#{serialNo} and q.delete_flag='0') and delete_flag='0'
        order by cert_status desc,cert_type asc,TRAIN_ITEM_CODE asc
"""
var ret=[];
if("nh"==type){
    ret=db.base_data.camel().select(sql1);
}
if("hc"==type){
    ret=db.base_data.camel().select(sql2);
}

for(item in ret){
  item.put("issuOrgCn",TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
  item.put("applForm",TagUtils.getTagNameByCode("applFormTag", item.get("applForm")));
  item.put("certStatus",TagUtils.getTagNameByCode("certStatusTag", item.get("certStatus")));   
  if ("1900-01-01".equals(item.get("expiryDate"))){
    item.put("expiryDate","");
  }      
  if("N".equals(item.get("applForm"))){
      item.put("applForm","")
  }
}

	return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: ret
	});