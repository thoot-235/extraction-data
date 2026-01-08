{
  "properties" : { },
  "id" : "eaac8bc5f6f947a9b70a181c6ed38b84",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "根据表名查询表字段信息",
  "createTime" : null,
  "updateTime" : 1694505854744,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getColumnByTable",
  "method" : "GET",
  "parameters" : [ {
    "name" : "type",
    "value" : "11",
    "description" : "类型",
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
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "1",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "20",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "identifier",
    "value" : "010010000055&&01",
    "description" : "主键字段值",
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1693724048035,\n    \"executeTime\": 61\n}",
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
      "name" : "code",
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1693724048035",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "61",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  }
}
================================

import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.utils.AESUtil' as AESUtil;
import response;
import log;

log.info("identifieridentifier"+identifier)


 var  sql=""" 
            select  column_cn  as column_cn,column_en as column_en,a.table_name_en,a.table_name_Cn,pk_primary,dict,AUDIT_REFERENCE_UNIT
            from  sc_table_fields  a
            left join   sc_table_types b on a.table_name_en = b.table_name_en 
            where b.id=#{type}  and   if_feedback = '1'
"""
var res=db.base_data.camel().select(sql);
var  tableNameEn = "";
var  tableNameCn = "";
var  pkPrimary="";
var  columns="";  
var  tableNameEnAes = ""; 
var  tableNameCnAes = ""; 

if(res.size()>0){
    var i = 1;
    for(item in res){
        tableNameEn = item.get("tableNameEn");
        
        tableNameEnAes = AESUtil.parseByte2HexStr(AESUtil.encrypt(tableNameEn,"bmtoch"));
        tableNameCnAes = AESUtil.parseByte2HexStr(AESUtil.encrypt(item.get("tableNameCn"),"bmtoch"));
        pkPrimary = item.get("pkPrimary");
        if(i!=res.size()){
           columns=columns+ item.get("columnEn") +","
        }else{
           columns=columns+ item.get("columnEn") 
        }
        
        i++;
    }
}
log.info("tableNameEntableNameEn"+tableNameEn);

log.info("columnscolumns"+columns);

if(pkPrimary.contains("&")){
    pkPrimary = pkPrimary.replace("&","||")
}
log.info("pkPrimarypkPrimary"+pkPrimary);

if(identifier.contains("&amp;&amp;")){
    identifier = identifier.replace("&amp;&amp;","")
}
 
var detailSql=""" select ${columns} from ${tableNameEn}   where ${pkPrimary} = #{identifier}"""


var resDetail=db.base_data.select(detailSql);

for(item in res){
    var columnName = item.get("columnEn");
    var value ="";
    for(item2 in resDetail){
       value = item2.get(columnName);
    }
    if(item.get("dict")!="" && item.get("dict")!=null){
        var dict =item.get("dict");
        item.put("valueCn",TagUtils.getTagNameByCode(item.get("dict"),value::string));
    }else{
       item.put("valueCn","");
    }

    item.put("value",value);
    item.put("tableNameEn",tableNameEnAes);
    item.put("tableNameCn",tableNameCnAes);
    
}


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: res
	});