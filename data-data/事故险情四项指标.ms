{
  "properties" : { },
  "id" : "3fcb86e88f654337a63b18e622314082",
  "script" : null,
  "groupId" : "f8cb5b13739f455397cc22a7ae910702",
  "name" : "事故险情四项指标",
  "createTime" : null,
  "updateTime" : 1756697774718,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getAccidentDangerFourIndex",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": [{\n        \"type\": \"一般以上事故数\",\n        \"typeCode\": \"general\",\n        \"num\": \"1\",\n        \"flag\": \"0\",\n        \"diff\": \"1\"\n    }, {\n        \"type\": \"死亡(失踪)人数\",\n        \"typeCode\": \"disAndSeath\",\n        \"num\": \"2\",\n        \"flag\": \"1\",\n        \"diff\": \"1\"\n    }, {\n        \"type\": \"直接经济损失\",\n        \"typeCode\": \"loss\",\n        \"num\": \"80\",\n        \"flag\": \"0\",\n        \"diff\": \"70\"\n    }, {\n        \"type\": \"沉船数\",\n        \"typeCode\": \"wreak\",\n        \"num\": \"1\",\n        \"flag\": \"1\",\n        \"diff\": \"1\"\n    }]\n}",
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
          "name" : "type",
          "value" : "一般以上事故数",
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
          "name" : "typeCode",
          "value" : "general",
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
          "name" : "num",
          "value" : "1",
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
          "name" : "flag",
          "value" : "0",
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
          "name" : "diff",
          "value" : "1",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

var generalsql="""
    select nvl(sum(INDICATOR_NUM),0) as INDICATOR_NUM from   DM_DATA.STS_ACCIDENT_DANGER  where  INDICATOR_TYPE='0' and  ST_YEAR=to_char(sysdate, 'yyyy')
"""
//去年数据
var generalLastsql="""
    select nvl(sum(INDICATOR_NUM),0) as INDICATOR_NUM from   DM_DATA.STS_ACCIDENT_DANGER  where  INDICATOR_TYPE='0' and  ST_YEAR=TO_char(ADD_MONTHS(SYSDATE, -12), 'YYYY') 
    and ST_MONTH>='01'
    and ST_MONTH<= TO_CHAR(SYSDATE, 'MM')
"""

var disAndDeathsql="""
    select nvl(sum(INDICATOR_NUM),0) as INDICATOR_NUM from   DM_DATA.STS_ACCIDENT_DANGER  where  INDICATOR_TYPE='1' and  ST_YEAR=to_char(sysdate, 'yyyy')
"""
//去年数据
var disAndDeathLastsql="""
    select nvl(sum(INDICATOR_NUM),0) as INDICATOR_NUM from   DM_DATA.STS_ACCIDENT_DANGER  where  INDICATOR_TYPE='1' and  ST_YEAR=TO_char(ADD_MONTHS(SYSDATE, -12), 'YYYY') 
    and ST_MONTH>='01' 
    and ST_MONTH<= TO_CHAR(SYSDATE, 'MM')
"""


var losssql="""
    select nvl(sum(INDICATOR_NUM),0) as INDICATOR_NUM from   DM_DATA.STS_ACCIDENT_DANGER  where  INDICATOR_TYPE='2' and  ST_YEAR=to_char(sysdate, 'yyyy')
"""
//去年数据
var lossLastsql="""
    select nvl(sum(INDICATOR_NUM),0) as INDICATOR_NUM from   DM_DATA.STS_ACCIDENT_DANGER  where  INDICATOR_TYPE='2' and  ST_YEAR=TO_char(ADD_MONTHS(SYSDATE, -12), 'YYYY') 
    and ST_MONTH>='01'
     and ST_MONTH<= TO_CHAR(SYSDATE, 'MM')
"""

var wreaksql="""
    select nvl(sum(INDICATOR_NUM),0) as INDICATOR_NUM from   DM_DATA.STS_ACCIDENT_DANGER  where  INDICATOR_TYPE='3' and  ST_YEAR=to_char(sysdate, 'yyyy')
"""
//去年数据
var wreakLastsql="""
    select nvl(sum(INDICATOR_NUM),0) as INDICATOR_NUM from   DM_DATA.STS_ACCIDENT_DANGER  where  INDICATOR_TYPE='3' and  ST_YEAR=TO_char(ADD_MONTHS(SYSDATE, -12), 'YYYY') 
    and ST_MONTH>='01' 
     and ST_MONTH<= TO_CHAR(SYSDATE, 'MM')
"""

var generalAccidentNum =  db.dm_data.camel().selectOne(generalsql);
var generalLastAccidentNum =  db.dm_data.camel().selectOne(generalLastsql);
var disAndDeathNum =  db.dm_data.camel().selectOne(disAndDeathsql);
var disAndLastDeathNum =  db.dm_data.camel().selectOne(disAndDeathLastsql);
var lossNum =  db.dm_data.camel().selectOne(losssql);
var lossLastNum =  db.dm_data.camel().selectOne(lossLastsql);
var wreakNum =  db.dm_data.camel().selectOne(wreaksql);
var wreakLastNum =  db.dm_data.camel().selectOne(wreakLastsql);




var  reMap=[]
var general ={}
var disAndSeath ={}
var loss ={}
var wreak ={}
//
general.put("type","一般以上事故数");
general.put("typeCode","general");
general.put("num",generalAccidentNum.get("indicatorNum"))
if(generalAccidentNum.get("indicatorNum")::int>generalLastAccidentNum.get("indicatorNum")){
    //今年数据比去年大0-下降；1-上升
    general.put("flag","1");
    general.put("diff",(generalAccidentNum.get("indicatorNum")::int)-(generalLastAccidentNum.get("indicatorNum")))
}else if (generalAccidentNum.get("indicatorNum")::int<generalLastAccidentNum.get("indicatorNum")){
    //今年比去年少
    general.put("flag","0");
    general.put("diff",(generalLastAccidentNum.get("indicatorNum")::int)-(generalAccidentNum.get("indicatorNum")))
}else{
    general.put("flag","2");
   general.put("diff","0")
}

disAndSeath.put("type","死亡(失踪)人数");
disAndSeath.put("typeCode","disAndSeath");
disAndSeath.put("num",disAndDeathNum.get("indicatorNum"))
if(disAndDeathNum.get("indicatorNum")::int>disAndLastDeathNum.get("indicatorNum")){
    //今年数据比去年大0-下降；1-上升
    disAndSeath.put("flag","1");
    disAndSeath.put("diff",(disAndDeathNum.get("indicatorNum")::int)-(disAndLastDeathNum.get("indicatorNum")))
}else if (disAndDeathNum.get("indicatorNum")::int<disAndLastDeathNum.get("indicatorNum")){
    //今年比去年少
    disAndSeath.put("flag","0");
    disAndSeath.put("diff",(disAndLastDeathNum.get("indicatorNum")::int)-(disAndDeathNum.get("indicatorNum")))
}else{
    disAndSeath.put("flag","2");
    disAndSeath.put("diff","0")
}

loss.put("type","直接经济损失");
loss.put("typeCode","loss");
loss.put("num",lossNum.get("indicatorNum"))
if(lossNum.get("indicatorNum")::double>lossLastNum.get("indicatorNum")){
    //今年数据比去年大0-下降；1-上升
    loss.put("flag","1");
    loss.put("diff",(lossNum.get("indicatorNum")::double)-(lossLastNum.get("indicatorNum")))
}else if (lossNum.get("indicatorNum")::double<lossLastNum.get("indicatorNum")){
    //今年比去年少
    loss.put("flag","0");
    loss.put("diff",(lossLastNum.get("indicatorNum")::double)-(lossNum.get("indicatorNum")))
}else{
    loss.put("flag","2");
    loss.put("diff","0")
}


wreak.put("type","沉船数");
wreak.put("typeCode","wreak");
wreak.put("num",wreakNum.get("indicatorNum"))
if(wreakNum.get("indicatorNum")::int>wreakLastNum.get("indicatorNum")){
    //今年数据比去年大0-下降；1-上升；2-持平
    wreak.put("flag","1");
    wreak.put("diff",(wreakNum.get("indicatorNum")::int)-(wreakLastNum.get("indicatorNum")))
}else if (wreakNum.get("indicatorNum")::int<wreakLastNum.get("indicatorNum")){
    //今年比去年少
    wreak.put("flag","0");
    wreak.put("diff",(wreakLastNum.get("indicatorNum")::int)-(wreakNum.get("indicatorNum")))
}else{
    wreak.put("flag","2");
    wreak.put("diff","0")
}


reMap.add(general);
reMap.add(disAndSeath);
reMap.add(loss);
reMap.add(wreak);

return response.json({
resultCode:200,
resultMsg:[{
        "type": "一般以上事故数",
        "typeCode": "general",
        "num": "1",
        "flag": "0",
        "diff": "1"
    }, {
        "type": "死亡(失踪)人数",
        "typeCode": "disAndSeath",
        "num": "2",
        "flag": "0",
        "diff": "2"
    }, {
        "type": "直接经济损失",
        "typeCode": "loss",
        "num": "80",
        "flag": "0",
        "diff": "850"
    }, {
        "type": "沉船数",
        "typeCode": "wreak",
        "num": "1",
        "flag": "2",
        "diff": "0"
    }]
});

return response.json({
        resultCode: 200,
        resultMsg:reMap 
	});
  
