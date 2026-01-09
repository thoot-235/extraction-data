{
  "properties" : { },
  "id" : "a53dc50d38f4411cb39dcc953cb225a2",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "运政船企性质分类分析",
  "createTime" : null,
  "updateTime" : 1694591123210,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "companyAnalNature",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"companytypecn\": \"其他\",\n        \"comNum\": \"15647\",\n        \"radio\": \"99.32%\"\n    }, {\n        \"companytypecn\": \"央企\",\n        \"comNum\": \"23\",\n        \"radio\": \"0.15%\"\n    }, {\n        \"companytypecn\": \"一般国企\",\n        \"comNum\": \"123\",\n        \"radio\": \"0.78%\"\n    }, {\n        \"companytypecn\": \"合资企业\",\n        \"comNum\": \"33\",\n        \"radio\": \"0.21%\"\n    }, {\n        \"companytypecn\": \"民营企业\",\n        \"comNum\": \"347\",\n        \"radio\": \"2.20%\"\n    }, {\n        \"companytypecn\": \"事业单位\",\n        \"comNum\": \"2\",\n        \"radio\": \"0.01%\"\n    }, {\n        \"companytypecn\": \"私营企业\",\n        \"comNum\": \"1215\",\n        \"radio\": \"7.71%\"\n    }]\n}",
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
          "name" : "companytypecn",
          "value" : "其他",
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
          "name" : "comNum",
          "value" : "15647",
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
          "name" : "radio",
          "value" : "99.32%",
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

var Sql = """

SELECT a.*,
       CONCAT(TO_CHAR(ROUND(A.COM_NUM / B.COM_NUM, 4) * 100, 'FM990.00'),
              '%') RADIO
  FROM (SELECT nvl(COMPANY_TYPE_CN,'其他') companyTypeCn, COUNT(*) COM_NUM
          FROM (select DISTINCT COMPANY_TYPE, COMPANY_TYPE_CN, COMPANY_NAME
                  from TRANS_MGT_COMPANY_SHIP a
                 where  company_name IS NOT NULL
                 and ST_YEAR =
                       to_char(add_months(trunc(sysdate), -12), 'yyyy')
                 and belong_province in ('湖北','上海','江苏','安徽','江西','湖南','重庆','浙江','四川','贵州','云南','河南','陕西','山东'))
         GROUP BY COMPANY_TYPE_CN) A
  LEFT JOIN (select COUNT(DISTINCT COMPANY_NAME) COM_NUM
               from TRANS_MGT_COMPANY_SHIP 
              where    company_name IS NOT NULL
              and ST_YEAR =
                       to_char(add_months(trunc(sysdate), -12), 'yyyy')
              and belong_province in ('湖北','上海','江苏','安徽','江西','湖南','重庆','浙江','四川','贵州','云南','河南','陕西','山东')
             
             ) B
    ON 1 = 1

        """;
var list = db.ods_data.camel().select(Sql);
if (list == null) {
    list = [];
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});