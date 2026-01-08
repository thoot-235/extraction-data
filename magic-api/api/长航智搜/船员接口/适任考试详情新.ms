{
  "properties" : { },
  "id" : "986a524837774ed6b0667b61e6481bcb",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "适任考试详情新",
  "createTime" : null,
  "updateTime" : 1723786797531,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getExamDetailNew",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n\"idCardNo\":\"75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"LZZ2\": [{\n            \"admitickNo\": \"PT1ZZ02180038033\",\n            \"examPeriods\": \"PCG201804328-ZZ02\",\n            \"examSubj\": \"LZZ2\",\n            \"isInitTest\": \"初考\",\n            \"score\": \"及格\",\n            \"passMark\": \"通过\",\n            \"passScore\": \"及格\",\n            \"collateDate\": \"2018-05-02 16:56:51\",\n            \"examSubjCn\": \"精通救生艇筏和救助艇培训再有效(理论)\"\n        }],\n        \"SZZ2\": [{\n            \"admitickNo\": \"PT1ZZ02180038033\",\n            \"examPeriods\": \"PCG201804328-ZZ02\",\n            \"examSubj\": \"SZZ2\",\n            \"isInitTest\": \"初考\",\n            \"score\": \"及格\",\n            \"passMark\": \"通过\",\n            \"passScore\": \"及格\",\n            \"collateDate\": \"2018-05-02 16:56:51\",\n            \"examSubjCn\": \"精通救生艇筏和救助艇培训再有效(实操)\"\n        }]\n    }\n}",
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
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "LZZ2",
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
            "name" : "admitickNo",
            "value" : "PT1ZZ02180038033",
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
            "value" : "PCG201804328-ZZ02",
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
            "value" : "LZZ2",
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
            "name" : "passScore",
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
            "name" : "collateDate",
            "value" : "2018-05-02 16:56:51",
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
            "value" : "精通救生艇筏和救助艇培训再有效(理论)",
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
        "name" : "SZZ2",
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
            "name" : "admitickNo",
            "value" : "PT1ZZ02180038033",
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
            "value" : "PCG201804328-ZZ02",
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
            "value" : "SZZ2",
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
            "name" : "passScore",
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
            "name" : "collateDate",
            "value" : "2018-05-02 16:56:51",
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
            "value" : "精通救生艇筏和救助艇培训再有效(实操)",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;
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
  select
         t.admitick_no,t.exam_periods,t.exam_subj,t.is_init_test,t.score, 
         case when s.pass_score is not null then '1' else '0' end pass_mark,
         pass_score,exam_time
        from (
          select b.admitick_no,b.exam_periods,a.exam_subj,b.is_makeupexam is_init_test,a.exam_score score,pass_mark,exam_time      
          from bds_biz_data.CREW_CC_EXAM a, bds_biz_data.CREW_CC_EXAM_TESTEE b
          where a.ADMITICK_NO = b.ADMITICK_NO
           and a.EXAM_PERIODS=b.EXAM_PERIODS
           ?{admitickNo,and  b.ADMITICK_NO = #{admitickNo}}
           ?{idCardNo,and  b.id_card_no = #{idCardNo}} 
           and a.is_scorecoll='1' 
           and a.delete_flag='0'
           and b.delete_flag='0'
        ) t left outer join 
        (
          select * from (
          select admitick_no,exam_subj,EXAM_SCORE pass_score,row_number() over (partition by exam_subj order by exam_time desc) as num  from bds_biz_data.CREW_CC_EXAM
          where is_scorecoll='1' and pass_mark='1' and delete_flag='0'
           ?{admitickNo,and ADMITICK_NO = #{admitickNo}}
           ?{idCardNo,and id_card_no = #{idCardNo}} 
          ) where num=1
        ) s on t.admitick_no=s.admitick_no and t.exam_subj=s.exam_subj
        order by t.exam_subj asc,t.is_init_test asc,t.exam_time asc
"""

var  sql2="""
        select
         t.admitick_no,t.exam_periods,t.exam_subj,t.is_init_test,t.score, 
         case when s.pass_score is not null then '1' else '0' end pass_mark,
         pass_score,collate_date
        from (
          select b.admitick_no,b.exam_periods,a.exam_subj,b.is_makeupexam is_init_test,a.exam_score score,pass_mark,collate_date      
          from bds_biz_data.crew_exam_score a, bds_biz_data.crew_train_testee_list b
          where a.ADMITICK_NO = b.ADMITICK_NO
           and a.EXAM_PERIODS=b.EXAM_PERIODS
           ?{admitickNo,and  b.ADMITICK_NO = #{admitickNo}}
           ?{idCardNo,and  b.id_card_no = #{idCardNo}} 
           and a.check_flag='1' 
           and a.delete_flag='0'
           and b.delete_flag='0'
        ) t left outer join 
        (
          select * from (
          select admitick_no,exam_subj,EXAM_SCORE pass_score,row_number() over (partition by exam_subj order by collate_date desc) as num  from bds_biz_data.crew_exam_score
          where check_flag='1' and pass_mark='1' and delete_flag='0'
           ?{admitickNo,and ADMITICK_NO = #{admitickNo}}
           ?{idCardNo,and id_card_no = #{idCardNo}} 
          ) where num=1
        ) s on t.admitick_no=s.admitick_no and t.exam_subj=s.exam_subj
        order by t.exam_subj asc,t.is_init_test asc,t.collate_date asc
"""
var list=[];
var  ret={};
var retMap={};
if(type==1){
  list=db.biz_data.camel().select(sql1);
 if(list!=null&&list.size()>0){
 for (item in list){
       item.put("isInitTest",TagUtils.getTagNameByCode("compIsInitExamTag",item.get("isInitTest")));
       item.put("examSubjCn",TagUtils.getTagNameByCode("compExamSubjTag",item.get("examSubj")));        
       item.put("passMark",TagUtils.getTagNameByCode("isPassTag",item.get("passMark")));     
  }

    for (item in list){
     if(ret.get(item.get("examSubj"))==null){
     var newlist=[];
       newlist.add(item);
      ret.put(item.get("examSubj"),newlist);
     }
     else{
        var newlist=ret.get(item.get("examSubj"));
       
       newlist.add(item);
      ret.put(item.get("examSubj"),newlist);
     }
   
    }
 }
 
}
if(type==2){
   list=db.biz_data.camel().select(sql2);
    for (item in list){
     
      item.put("isInitTest",TagUtils.getTagNameByCode("compIsInitExamTag",item.get("isInitTest")));
             item.put("examSubjCn",TagUtils.getTagNameByCode("examSubjTag",item.get("examSubj")));    
        item.put("passMark",TagUtils.getTagNameByCode("isPassTag",item.get("passMark")));     
  }

 for (item in list){
     if(ret.get(item.get("examSubj"))==null){
     var newlist=[];
       newlist.add(item);
      ret.put(item.get("examSubj"),newlist);
     }
     else{
        var newlist=ret.get(item.get("examSubj"));
       
       newlist.add(item);
      ret.put(item.get("examSubj"),newlist);
     }
   
    }

}


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: ret
	});