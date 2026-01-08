{
  "properties" : { },
  "id" : "e01e42fae03644068e39e707cf18272c",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "适任考试详情",
  "createTime" : null,
  "updateTime" : 1723786791825,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getExamDetail",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n\"idCardNo\":\"75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"org\": \"091300\",\n        \"examPeriods\": \"HPKB-05030018120011\",\n        \"isInitTest\": \"初考\",\n        \"subjType\": \"理论\",\n        \"examSubj\": \"PXKS0000005\",\n        \"score\": \"及格\",\n        \"passMark\": \"通过\",\n        \"passDate\": \"2018-12-10\",\n        \"orgCn\": \"清远海事局\",\n        \"examSubjCn\": \"客船培训理论\"\n    }]\n}",
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
          "name" : "org",
          "value" : "091300",
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
          "name" : "examPeriods",
          "value" : "HPKB-05030018120011",
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
          "name" : "isInitTest",
          "value" : "初考",
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
          "name" : "subjType",
          "value" : "理论",
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
          "name" : "examSubj",
          "value" : "PXKS0000005",
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
          "name" : "score",
          "value" : "及格",
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
          "name" : "passMark",
          "value" : "通过",
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
          "name" : "passDate",
          "value" : "2018-12-10",
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
          "name" : "orgCn",
          "value" : "清远海事局",
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
          "name" : "examSubjCn",
          "value" : "客船培训理论",
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
//idCardNo=(idCardNo==null?"":idCardNo).replace("<em>","").replace("</em>","");
//admitickNo=(admitickNo==null?"":admitickNo).replace("<em>","").replace("</em>","");
import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;




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
var type=body.type;
if(type==null || type==''){
    return  response.json({
        "code": 0,
        "message": "参数[type]为必填项",
        "data": {},      
        "executeTime": 2
    });
}

var admitickNo=body.admitickNo;
if(admitickNo==null || admitickNo==''){
    return  response.json({
        "code": 0,
        "message": "参数[admitickNo]为必填项",
        "data": {},      
        "executeTime": 2
    });
}
var sql1="""
select distinct org,exam_periods,is_init_test,pass_mark, subj_type,exam_subj,score,exam_date,pass_date from (select a.ORG_ID        org,
        a.EXAM_PERIODS  exam_periods,
        b.IS_MAKEUPEXAM is_init_test,
        a.pass_mark   pass_mark,
        a.SUBJ_TYPE     subj_type,--科目类别 L 理论
        a.EXAM_SUBJ     exam_subj,--考试科目
        a.EXAM_SCORE    score,
       case when  to_char(a.EXAM_TIME,'yyyy-MM-dd')='1900-01-01' then '--' else to_char(a.EXAM_TIME,'yyyy-MM-dd') end  exam_date,
        case when to_char(a.SCOREVERI_DATE,'yyyy-MM-dd')='1900-01-01' then '--' else to_char(a.SCOREVERI_DATE,'yyyy-MM-dd') end   pass_date
        from bds_biz_data.CREW_CC_EXAM a, bds_biz_data.CREW_CC_EXAM_TESTEE b
        where a.ADMITICK_NO = b.ADMITICK_NO
         and a.delete_flag='0'
        and b.delete_flag='0'
        ?{admitickNo,and  b.ADMITICK_NO = #{admitickNo}}
        ?{idCardNo,and  b.id_card_no = #{idCardNo}}
        order by SCOREVERI_DATE desc)t
"""

var  sql2="""
select distinct org,exam_periods,is_init_test,subj_type, exam_subj, score,PASS_MARK,pass_date from (select a.ORG_ID        org,
        b.EXAM_PERIODS  exam_periods,
        a.IS_MAKEUPEXAM is_init_test,
        b.SUBJ_TYPE     subj_type,
        b.EXAM_SUBJ     exam_subj,
        b.EXAM_SCORE    score,
         b.PASS_MARK   PASS_MARK,
       case when to_char(b.COLLATE_DATE,'yyyy-MM-dd')='1900-01-01' then '--' else to_char(b.COLLATE_DATE,'yyyy-MM-dd')  end  pass_date
        from  bds_biz_data.CREW_TRAIN_TESTEE_LIST a, bds_biz_data.CREW_EXAM_SCORE b
        where a.ADMITICK_NO = b.ADMITICK_NO
         and a.delete_flag='0'
        and b.delete_flag='0'
          ?{admitickNo,and  a.ADMITICK_NO = #{admitickNo}}
        ?{idCardNo,and  b.id_card_no = #{idCardNo}}
        order by COLLATE_DATE desc)t
"""
var ret=[];
if(type==1){
  ret=db.biz_data.camel().select(sql1);
  for (item in ret){
       item.put("orgCn",TagUtils.getTagNameByCode("issuOrgTag",item.get("org")));
       item.put("isInitTest",TagUtils.getTagNameByCode("compIsInitExamTag",item.get("isInitTest")));
       item.put("subjType",TagUtils.getTagNameByCode("compSubjTypeTag",item.get("subjType")));        
     item.put("examSubjCn",TagUtils.getTagNameByCode("compExamSubjTag",item.get("examSubj")));        
        item.put("passMark",TagUtils.getTagNameByCode("isPassTag",item.get("passMark")));     
  }
}
if(type==2){
   ret=db.biz_data.camel().select(sql2);
    for (item in ret){
       item.put("orgCn",TagUtils.getTagNameByCode("issuOrgTag",item.get("org")));
      item.put("isInitTest",TagUtils.getTagNameByCode("compIsInitExamTag",item.get("isInitTest")));
      item.put("subjType",TagUtils.getTagNameByCode("trainSubjTypeTag",item.get("subjType")));     
      item.put("examSubjCn",TagUtils.getTagNameByCode("examSubjTag",item.get("examSubj")));              
        item.put("passMark",TagUtils.getTagNameByCode("isPassTag",item.get("passMark")));     
  }
}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: ret
	});