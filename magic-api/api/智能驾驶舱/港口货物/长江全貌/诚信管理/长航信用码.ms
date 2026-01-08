{
  "properties" : { },
  "id" : "eb5780191e184114845b97cacfe2a012",
  "script" : null,
  "groupId" : "4497d15c111248efa7b0d713acfa590c",
  "name" : "长航信用码",
  "createTime" : null,
  "updateTime" : 1731985074753,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCreditQRCode",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\"id\":\"izKSmYyn4a2nM8Raw3AOrw==\",\"type\":\"1\",\"width\":\"100\",\"height\":\"100\"}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"timestamp\": \"2024-10-28T08:19:59.481+00:00\",\n    \"path\": \"/blade-magic-prod/smartCockpit/fullView/integrity/getCreditQRCode\",\n    \"status\": 500,\n    \"error\": \"Internal Server Error\",\n    \"requestId\": \"e1763749-988005\"\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
      "value" : "izKSmYyn4a2nM8Raw3AOrw==",
      "description" : "船舶:传船舶识别号，船员:传身份证号，船企:传统一社会信用代码",
      "required" : true,
      "dataType" : "String",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "type",
      "value" : "1",
      "description" : "二维码类型 1船舶，2船员，3船企",
      "required" : true,
      "dataType" : "String",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "width",
      "value" : "100",
      "description" : "二维码宽度",
      "required" : true,
      "dataType" : "String",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "height",
      "value" : "100",
      "description" : "二维码高度",
      "required" : true,
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
      "name" : "timestamp",
      "value" : "2024-10-28T08:19:59.481+00:00",
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
      "name" : "path",
      "value" : "/blade-magic-prod/smartCockpit/fullView/integrity/getCreditQRCode",
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
      "value" : "500",
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
      "name" : "error",
      "value" : "Internal Server Error",
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
      "name" : "requestId",
      "value" : "e1763749-988005",
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
  }
}
================================
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import org.springblade.common.utils.ZzSecurityHelper
import log;
import response;
import http;
import java.lang.String;

//获取传参
var id = body.id;
var type = body.type;
var width = body.width;
var height = body.height;
if((id==null||id=="") || (type==null||type=="") || (width==null||width=="") || (height==null||height=="")){
  return response.json({
        resultCode: 400,
        resultMsg: "参数不能为空",
        result: null
});
}
var content = {};
var color = "";
var shipId = "";

if(type == "3"){//船企
  var sql = """
select deduction_object_id as company_uscc,
       deduction_object_name as company_name,
       aqyxm as rule_grade_code,
       case
         when aqyxm = '1' then
          '红码'
         when aqyxm = 2 then
          '黄码'
         when aqyxm = 3 then
          '蓝码'
         else
          '绿码'
       end as rule_grade_name,
       scale_interval as safe_value
  from base_sc_account_guard
 where zhuti_code = '7'
   and deduction_object_id = #{id}
  """
  var company = db.ods_data.camel().selectOne(sql);
  content = company;
  color = company.get("ruleGradeName");
}
if(type == "1"){//船舶

  if(id.length()>0 && id.length()<=9){
    var mmsiSql = """
      select ship_id from bds_base_data.sc_ship_basic_data where mmsi = #{id}
    """
    shipId = db.base_data.camel().selectValue(mmsiSql);
    
    
    var sql = """
      select deduction_object_id as ship_id,
       deduction_object_name as ship_name_cn,
       aqyxm as rule_grade_code,
       case
         when aqyxm = '1' then
          '红码'
         when aqyxm = 2 then
          '黄码'
         when aqyxm = 3 then
          '蓝码'
         else
          '绿码'
       end as rule_grade_name,
       scale_interval as safe_value
  from base_sc_account_guard
 where zhuti_code = '8' and deduction_object_id= #{shipId}
    """
    var ship = db.ods_data.camel().selectOne(sql);
    content = ship;
    color = ship.get("ruleGradeName");
  }else{
    var sql = """
      select deduction_object_id as ship_id,
       deduction_object_name as ship_name_cn,
       aqyxm as rule_grade_code,
       case
         when aqyxm = '1' then
          '红码'
         when aqyxm = 2 then
          '黄码'
         when aqyxm = 3 then
          '蓝码'
         else
          '绿码'
       end as rule_grade_name,
       scale_interval as safe_value
  from base_sc_account_guard
 where zhuti_code = '8' and deduction_object_id = #{id}
    """
    id = ZzSecurityHelper.decryptAES(id);
    var ship = db.ods_data.camel().selectOne(sql);
    content = ship;
    color = ship.get("ruleGradeName");
  }
}
if(type == "2"){//船员
  id = ZzSecurityHelper.decryptAES(id);
  var sql = """
    select deduction_object_id as card_no,
       deduction_object_name as boatman_name,
       aqyxm as rule_grade_code,
       case
         when aqyxm = '1' then
          '红码'
         when aqyxm = 2 then
          '黄码'
         when aqyxm = 3 then
          '蓝码'
         else
          '绿码'
       end as rule_grade_name,
       scale_interval as safe_value
  from base_sc_account_guard
 where zhuti_code = '6' 
 and deduction_object_id = #{id}
  """
  var crew = db.ods_data.camel().selectOne(sql);
  content = crew;
  color = crew.get("ruleGradeName");
}
if(color == "红码"){
  color = "red";
}
if(color == "蓝码"){
  color = "blue";
}
if(color == "黄码"){
  color = "yellow";
}
if(color == "绿码"){
  color = "green";
}
var data = [{
    "id": id,
    "content": content,
    "color": color
}];
//data.put("id",id);
//data.put("content",content);
//data.put("color",color);
var requestBody = {
    "type": type,
    "width": width,
    "height": height,
    "data": data
}
//requestBody.put("type",type);
//requestBody.put("width",width);
//requestBody.put("height",height);
//requestBody.put("data",data);
log.info("-------"+requestBody);
var url = "http://172.17.193.130:8087/blade-dataDock-prod/share/generate/v2"

var res = http.connect(url).body(requestBody).post();
if(res.getBody().get("data")==null){
  return response.json({
        resultCode: 500,
        resultMsg: "查询失败",
        result: null
  });
}
var resData = res.getBody().get("data").get(0).get("BASE64");

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: resData
});