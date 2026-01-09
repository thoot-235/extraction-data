{
  "properties" : { },
  "id" : "copy1703816306498d82003",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "船企基本信息完整度",
  "createTime" : null,
  "updateTime" : 1721789000519,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCompBaseInfoPerfection",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyId",
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
    "name" : "uscc",
    "value" : "91310000717857482U",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"perfection\": \"62.16%\"\n    }\n}",
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
      "dataType" : "String",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "perfection",
        "value" : "62.16%",
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
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import log;
import response;

//过滤字段
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import request;

companyId=(companyId==null?"":companyId).replace("<em>","").replace("</em>","");
uscc=(uscc==null?" ":uscc).replace("<em>","").replace("</em>","");
if((companyId==null||companyId.toString().equals("" ) )&&(uscc==null||uscc.toString().equals("" ))){
 return response.json({
        resultCode: 500,
        resultMsg: "统一社会信用代码或组织机构不能同时为空"
	});
}

var fieldsPowerSql=""" select listagg(column_en,',')  within group 
                            (order by table_name_en)  as "colum" from bds_base_data.sc_table_fields 
                                where table_name_en='BDS_BASE_DATA.COMPANY_INFO_ALL'""";
var fieldsPower=db.base_data.selectOne(fieldsPowerSql);//字段权限控制

 var sqlCount="select "+fieldsPower.get("colum")+""" from BDS_BASE_DATA.company_info_all
 　<trim prefix="WHERE" prefixOverrides="AND |OR ">
       <if test="companyId != null and companyId!=''">
             OR ORGANIZATION_CODE = #{companyId}
      </if>
      <if test="uscc != null and uscc!=''">
             OR uscc = #{uscc}
      </if>
     
  </trim>
   """;
   


var sqlCountData = db.base_data.camel().selectOne(sqlCount);
var perfection="";
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

var basic={
  "perfection":perfection
}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: basic
	});