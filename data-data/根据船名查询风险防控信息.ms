{
  "properties" : { },
  "id" : "794f4c3274ee4d83b224df16424ce21e",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "根据船名查询风险防控信息",
  "createTime" : null,
  "updateTime" : 1744254605052,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/findShipRiskByNamePlat",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipName",
    "value" : "轮渡402拖",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "page",
    "value" : "1",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "10",
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
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import response;
var cbSql;

/**cbSql = """
select total_count, CREATE_USER,CREATE_TIME,RISK_SUBJECT_TYPE,RISK_SUBJECT_NAME,RISK_TYPE_CODE,RISK_CODE,
RISK_DESC,RISK_EVENT,RISK_LEVEL,POSSIBILITY,CONSQ_DEGREE,RISK_VAR,PRE_CTRL_MEASURES,RESPON_PERSON,
IMP_CHARGE_PERSON,EMG_TREAT_MEASURE,IMP_EFFECT_EVAL,REMARK,RISK_NAME,RISK_TYPE_NAME,SHIP_TYPE,SHIP_NAME_CN,rownumber
    from (

select total_count, CREATE_USER,CREATE_TIME,RISK_SUBJECT_TYPE,RISK_SUBJECT_NAME,RISK_TYPE_CODE,RISK_CODE,
RISK_DESC,RISK_EVENT,RISK_LEVEL,POSSIBILITY,CONSQ_DEGREE,RISK_VAR,PRE_CTRL_MEASURES,RESPON_PERSON,
IMP_CHARGE_PERSON,EMG_TREAT_MEASURE,IMP_EFFECT_EVAL,REMARK,RISK_NAME,RISK_TYPE_NAME,SHIP_TYPE,SHIP_NAME_CN,rownumber
          from (
            select count(*) OVER() total_count, CREATE_USER,CREATE_TIME,RISK_SUBJECT_TYPE,RISK_SUBJECT_NAME,RISK_TYPE_CODE,RISK_CODE,
RISK_DESC,RISK_EVENT,RISK_LEVEL,POSSIBILITY,CONSQ_DEGREE,RISK_VAR,PRE_CTRL_MEASURES,RESPON_PERSON,
IMP_CHARGE_PERSON,EMG_TREAT_MEASURE,IMP_EFFECT_EVAL,REMARK,RISK_NAME,RISK_TYPE_NAME,SHIP_TYPE,SHIP_NAME_CN,row_number() over(order by id DESC) as rownumber
  from RISK_SHIP_STRATEGY where delete_fuag=0 
         ?{shipName,and instr(ship_name_cn,concat(#{shipName},'；'))>0 }
         ) b
              where rownum <= (#{page}*#{size})) a
              where a.rownumber >((#{page}-1)* #{size})  
""";
**/

cbSql = """
 select  CREATE_USER,CREATE_TIME,RISK_SUBJECT_TYPE,RISK_SUBJECT_NAME,RISK_TYPE_CODE,RISK_CODE,
RISK_DESC,RISK_EVENT,RISK_LEVEL,POSSIBILITY,CONSQ_DEGREE,RISK_VAR,PRE_CTRL_MEASURES,RESPON_PERSON,
IMP_CHARGE_PERSON,EMG_TREAT_MEASURE,IMP_EFFECT_EVAL,REMARK,RISK_NAME,RISK_TYPE_NAME,SHIP_TYPE,SHIP_NAME_CN
  from RISK_SHIP_STRATEGY where delete_flag=0 
         ?{shipName,and instr(ship_name_cn,concat(#{shipName},'；'))>0 }
""";
var list = db.biz_data.camel().page(cbSql);
if (list.list == null) {
    list.list = [];
}
var totalCount = 0;
if (list.list != null) {
    for (item in list.list) {
        if (item.get("riskLevel") != null && item.get("riskLevel") != '') {
            if(item.get("riskLevel")!=null&&item.get("riskLevel")!=''){
                item.put("riskLevel", TagUtils.getTagNameByCode("riskTag", item.get("riskLevel").toString() + 'FXDJ'));
            }
            
        }
        totalCount = list.total;
        var preCtrlMeasures=item.get("preCtrlMeasures")==null?"":item.get("preCtrlMeasures").replace("[", "").replace("]", "");
        JSONObject preCtrlMeasuresJson= JSON.parseObject(preCtrlMeasures.toString());
        if(preCtrlMeasuresJson!=null){
         item.put("preCtrlMeasures",preCtrlMeasuresJson.get("gkcs"));
        }
         var emgTreatMeasure=item.get("emgTreatMeasure")==null?"":item.get("emgTreatMeasure").replace("[", "").replace("]", "");
        JSONObject emgTreatMeasureJson= JSON.parseObject(emgTreatMeasure.toString());
        if(emgTreatMeasureJson!=null){
         item.put("emgTreatMeasure",emgTreatMeasureJson.get("yjclcs"));
        }
       
    }
}
var back = {
    "list": list.list,
    "total": Integer.parseInt(totalCount::string)
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back

});