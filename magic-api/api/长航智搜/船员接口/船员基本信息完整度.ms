{
  "properties" : { },
  "id" : "copy1703816195399d14479",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "船员基本信息完整度",
  "createTime" : null,
  "updateTime" : 1723786601481,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewBaseInfoPerfection",
  "method" : "GET",
  "parameters" : [ {
    "name" : "idCardNo",
    "value" : "450324198908245815",
    "description" : "120221198701073031",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"perfection\": \"\"\n    }\n}",
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
      "defaultValue" : null,
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
      "defaultValue" : null,
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
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "perfection",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "String",
        "type" : null,
        "defaultValue" : null,
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
import log;
import response;
import 'org.springblade.core.secure.BladeUser' as  BladeUser
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil

//过滤字段
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import request;

BladeUser user=AuthUtil.getUser();

idCardNo=(idCardNo==null?"":idCardNo).replace("<em>","").replace("</em>","");
var fieldsPowerSql=""" select listagg(column_en,',')  within group 
                            (order by table_name_en)  as "colum" from bds_base_data.sc_table_fields 
                                where table_name_en='BDS_BASE_DATA.CREW_BASIC_DATA'""";
var fieldsPower=db.base_data.selectOne(fieldsPowerSql);//字段权限控制


 var sqlCount="select "+fieldsPower.get("colum")+""" from  bds_base_data.CREW_BASIC_DATA d
  where 1=1  
 and  d.delete_flag='0' 
 and d.id_card_no = #{idCardNo}
 and d.VALID_FLAG='1'""";


var sqlCountData = db.base_data.camel().selectOne(sqlCount);
var perfection;
//计算空值率
if(sqlCountData!=null){
   var total=0;
   var notEmpty=0;
   sqlCountData.forEach((k,v)->{
       ++total;
       if(v!=null&&v!=''){
        ++notEmpty;
       }
       });
       perfection=String.format("%.2f",(Double.parseDouble(notEmpty.toString())/Double.parseDouble(total.toString()))*100)+"%";
       //log.info("空值率==="+Integer.parseInt(total.toString())+"个"+Integer.parseInt(notEmpty.toString())+"个" 
       //+String.format("%.2f",(Double.parseDouble(notEmpty.toString())/Double.parseDouble(total.toString()))*100)+"%")
}

        basic={"perfection":perfection};
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: basic
});