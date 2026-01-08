{
  "properties" : { },
  "id" : "3d729cc5f118412891db51cd52e5cb55",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "违法信息",
  "createTime" : null,
  "updateTime" : 1732002352277,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getDeducList",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n\"idCardNo\":\"75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": []\n}",
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
      "name" : "result",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
      "type" : null,
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
import log;
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
var  sql="""
select SERIAL_NO,--流水号
       IDCARD_TYPE,--身份证类型
       ID_CARD_NO,
       NAME,
       substr(SERVBOOK_CODE,1,4)|| RPAD('*',LENGTH(SERVBOOK_CODE)-4,'*') AS SERVBOOK_CODE,--服务簿号码,可能为身份证号所以做脱敏处理
       COMP_ID             COMPANY_NO,--单位代码
       COMP_NAME           COMPANY_NAME,--单位名称
       DEDUCSCORE_VALUE,--记分分值
       case when to_char(DEDUCSCORE_DATE,'yyyy-mm-dd')='1900-01-01' then '--' else to_char(DEDUCSCORE_DATE,'yyyy-mm-dd') end  as DEDUCSCORE_DATE,--记分日期
       DEDUCSCORE_REASON,--记分原因
       DEDUCSCORE_ORG_CODE,--记分机关
       DEDUCSCORE_ORG_NAME,--记分机关名称
       LAWENFO_CERT_NO,--执法证号
       LAWENFO_NAME,--执法人员姓名
       PUNISH_CONCLUSION,--处罚结论
       OFFI_DUTY,--任职职务
       OFFI_SHIP_NAME,---任职船名
       DATA_SOURCES,--数据来源
       CASE_NO             CASE_NUM,--案号
       CASE_REASON,--案由
       ILLEG_CODE          ILLEGAL_CODE,--违法行为代码
       ILLEG_NAME          ILLEGAL_NAME,--违法行为名称
       LAWENFO_NO          LAWER_NO,--执法信息流水号
       CERT_TYPE,--证书种类
       CERT_NO,--证书号码
       CONFIRM_ORG_ID      CFM_ORG_ID,--确认人机构代码
       CONFIRM_ID          CFM_ID,--确认人代码
       CONFIRM_NAME        CFM_NAME,--确认人姓名
       case when to_char(CONFIRM_TIME,'yyyy-mm-dd')='1900-01-01' then '--' else to_char(CONFIRM_TIME,'yyyy-mm-dd') end         CFM_TIME,--确认时间
       CONFIRM_RESULT,--确认结果
       CONFIRM_SUGG,--确认意见
       CREATER_ORG_ID,
       VALID_FLAG,
       REMARK
  from CREW_ILLEGAL_SCORE
 where 1 = 1
 and delete_flag='0'
  -- and VALID_FLAG = '1'
   ?{idCardNo,and  ID_CARD_NO = #{idCardNo}}
 order by deducscore_date desc

"""
var ret=db.base_data.camel().select(sql);
for (item in  ret) {
    item.put("dataSources",TagUtils.getTagNameByCode("dataSourcesTag",item.get("dataSources")));
    item.put("validFlag",TagUtils.getTagNameByCode("validTag",item.get("validFlag")));
   item.put("deducscoreOrgName",TagUtils.getTagNameByCode("issuOrgTag",item.get("deducscoreOrgCode")));
         item.put("idCardNo", ZzSecurityHelper.encryptAES( item.get("idCardNo")));


    }
    	return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: ret
	});