{
  "properties" : { },
  "id" : "0399ca5f610644d5b3b4540b87f01b5a",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "运政船企业年度信息分析",
  "createTime" : 1679883322864,
  "updateTime" : 1693305711695,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/companyAnalysedNum",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"beforelastyearnum\": \"13108\",\n        \"yestyearnum\": \"11058\",\n        \"radion\": \"-15.64%\"\n    }]\n}",
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
          "name" : "beforelastyearnum",
          "value" : "13108",
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
          "name" : "yestyearnum",
          "value" : "11058",
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
          "name" : "radion",
          "value" : "-15.64%",
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
import response;

var Sql = """select beforelastYearNum,
       yestYearNum,
       (case
         when yestYearNum = 0 and beforelastYearNum <> 0 then
          '0%'
         when yestYearNum <> 0 and beforelastYearNum <> 0 then
          concat(round((yestYearNum - beforelastYearNum) / beforelastYearNum,
                       4) * 100,
                 '%')
         when yestYearNum = 0 and beforelastYearNum = 0 then
          '0%'
         when yestYearNum <> 0 and beforelastYearNum = 0 then
          '100%'
         else
          '0%'
       end) radion

  from (select (select nvl(count(distinct COMPANY_NAME), 0) beforelastYearNum
                  from TRANS_MGT_COMPANY_SHIP
                 where  belong_province in ('湖北','上海','江苏','安徽','江西','湖南','重庆','浙江','四川','贵州','云南','河南','陕西','山东') 
                 and ST_YEAR =
                       to_char(add_months(trunc(sysdate), -24), 'yyyy')) as beforelastYearNum, 
               
               (select nvl(count(distinct COMPANY_NAME), 0) yestYearNum
                  from TRANS_MGT_COMPANY_SHIP
                 where belong_province in ('湖北','上海','江苏','安徽','江西','湖南','重庆','浙江','四川','贵州','云南','河南','陕西','山东') 
                 and COMPANY_NAME is  not null
                 and ST_YEAR =
                       to_char(add_months(trunc(sysdate), -12), 'yyyy')) as yestYearNum
          from dual)
        """;
var list = db.ods_data.camel().select(Sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});