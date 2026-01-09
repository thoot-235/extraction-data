{
  "properties" : { },
  "id" : "57348c1a70914376a40406a021c55b16",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "运政船企船舶占比分析",
  "createTime" : 1679883322890,
  "updateTime" : 1693305711750,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/companyAnalRadio",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"type\": \"50~\",\n        \"comNum\": \"458\",\n        \"radio\": \"2.91%\",\n        \"allComNum\": \"15754\"\n    }, {\n        \"type\": \"30~50\",\n        \"comNum\": \"336\",\n        \"radio\": \"2.13%\",\n        \"allComNum\": \"15754\"\n    }, {\n        \"type\": \"10~30\",\n        \"comNum\": \"1197\",\n        \"radio\": \"7.60%\",\n        \"allComNum\": \"15754\"\n    }, {\n        \"type\": \"2~10\",\n        \"comNum\": \"4271\",\n        \"radio\": \"27.11%\",\n        \"allComNum\": \"15754\"\n    }, {\n        \"type\": \"1艘\",\n        \"comNum\": \"9492\",\n        \"radio\": \"60.25%\",\n        \"allComNum\": \"15754\"\n    }]\n}",
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
      "name" : "data",
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
          "value" : "50~",
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
          "name" : "comNum",
          "value" : "458",
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
          "name" : "radio",
          "value" : "2.91%",
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
          "name" : "allComNum",
          "value" : "15754",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

var Sql = """
select * from (
  
  select a.type,a.com_num,concat(to_char(round(a.com_num/b.com_num,4)*100,'FM990.00'),'%') radio,b.com_num all_com_num from (
  select type,count(*) com_num from (
  select (case
                          when shipnum >= 50 then '50~'
                          when shipnum >= 30 and shipnum < 50 then '30~50'                       
                          when shipnum >= 10 and shipnum < 30 then '10~30'
                            when shipnum >=2 and shipnum<10 then '2~10'  
                             when shipnum =1 then '1艘' else '' 
                        end) type ,shipnum from 
  (select company_name,  count(*) shipnum
          from (select distinct SHIP_NAME_CN, company_name
                  from TRANS_MGT_COMPANY_SHIP BELONG_PROVINCE where belong_province in ('湖北','上海','江苏','安徽','江西','湖南','重庆','浙江','四川','贵州','云南','河南','陕西','山东')
                  and COMPANY_NAME is not null
                  and ST_YEAR =
                       to_char(add_months(trunc(sysdate), -12), 'yyyy'))
         group by company_name) a
         ) group by type
         )  a inner join (
         
         
             
  select count(*) com_num from 
  (select company_name, count(*) shipnum
          from (select distinct SHIP_NAME_CN, company_name
                  from TRANS_MGT_COMPANY_SHIP BELONG_PROVINCE where belong_province in ('湖北','上海','江苏','安徽','江西','湖南','重庆','浙江','四川','贵州','云南','河南','陕西','山东')
                  and COMPANY_NAME is not null
                  and ST_YEAR =
                       to_char(add_months(trunc(sysdate), -12), 'yyyy'))
         group by company_name) a
         
         )  b on 1=1)
         order by decode(type,'50~',1,'30~50',2,'10~30',3,'2~10',4,'1艘',5) 
         

        """;
var list = db.ods_data.camel().select(Sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});