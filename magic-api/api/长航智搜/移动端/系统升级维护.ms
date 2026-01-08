{
  "properties" : { },
  "id" : "64c8aae4976d4ed7bfeb4d623dca38ef",
  "script" : null,
  "groupId" : "0700e32d7c4049b9b521694c26cbcb71",
  "name" : "系统升级维护",
  "createTime" : null,
  "updateTime" : 1691749539736,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/saveSystemLog",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"id\":\"0b742f6951dc4211b08b00fe1eaca27a\",\r\n    \"type\":\"维护升级333\",\r\n    \"params\":\"1,21323243sdb不会把计划表会不会2.编号编号不不用会不会3.不婚不育不4，UBUBuvuxxxxx\",\r\n    \"time\":\"2020-03-19\",\r\n    \"user\":\"xx\",\r\n    \"ip\":\"xxx\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1681469981383,\n    \"executeTime\": 46\n}",
  "description" : "",
  "requestBodyDefinition" : {
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
      "name" : "id",
      "value" : "0b742f6951dc4211b08b00fe1eaca27a",
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
      "name" : "type",
      "value" : "维护升级333",
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
      "name" : "params",
      "value" : "1,21323243sdb不会把计划表会不会2.编号编号不不用会不会3.不婚不育不4，UBUBuvuxxxxx",
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
      "name" : "time",
      "value" : "2020-03-19",
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
      "name" : "user",
      "value" : "xx",
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
      "name" : "ip",
      "value" : "xxx",
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
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1681469981383",
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
      "value" : "46",
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
import response;


if (body.id ==null||body.id=='' ) { //新增
    var uuid = uuid();
    var insertSql = """
   insert into bladex.blade_system_log(id,type,params,time,create_time,ip,user_name) 
   values('"""+uuid+"""',#{body.type},#{body.params},to_date(#{body.time},'yyyy-mm-dd'),now(),#{body.ip},#{body.userName})
   """;
    db.bladex.insert(insertSql);
    return response.json({
    resultCode: 200,
    resultMsg: "保存成功！"
  });
}else{
   
 db.bladex.update(""" update bladex.blade_system_log set type= #{body.type},
 params =#{body.params},time=to_date(#{body.time},'yyyy-mm-dd') ,ip= #{body.type},user_name= #{body.userName}  where id=#{body.id}""");
  return response.json({
    resultCode: 200,
    resultMsg: "更新成功！"
  });

}

