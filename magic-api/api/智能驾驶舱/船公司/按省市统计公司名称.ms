{
  "properties" : { },
  "id" : "c4f2e21cfc6840519d7938e5d81b603e",
  "script" : null,
  "groupId" : "32fd6df1028049b98e9c7064eb84bfa1",
  "name" : "按省市统计公司名称",
  "createTime" : null,
  "updateTime" : 1705376488095,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCompanyCountByProvince",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"province\": \"云南\",\n        \"num\": 8,\n        \"rowNumber\": \"14\"\n    }, {\n        \"province\": \"贵州\",\n        \"num\": 86,\n        \"rowNumber\": \"11\"\n    }, {\n        \"province\": \"四川\",\n        \"num\": 409,\n        \"rowNumber\": \"3\"\n    }, {\n        \"province\": \"重庆\",\n        \"num\": 327,\n        \"rowNumber\": \"4\"\n    }, {\n        \"province\": \"湖南\",\n        \"num\": 251,\n        \"rowNumber\": \"7\"\n    }, {\n        \"province\": \"湖北\",\n        \"num\": 294,\n        \"rowNumber\": \"5\"\n    }, {\n        \"province\": \"江西\",\n        \"num\": 198,\n        \"rowNumber\": \"9\"\n    }, {\n        \"province\": \"浙江\",\n        \"num\": 202,\n        \"rowNumber\": \"8\"\n    }, {\n        \"province\": \"安徽\",\n        \"num\": 714,\n        \"rowNumber\": \"2\"\n    }, {\n        \"province\": \"江苏\",\n        \"num\": 731,\n        \"rowNumber\": \"1\"\n    }, {\n        \"province\": \"上海\",\n        \"num\": 67,\n        \"rowNumber\": \"13\"\n    }, {\n        \"province\": \"陕西\",\n        \"num\": 69,\n        \"rowNumber\": \"12\"\n    }, {\n        \"province\": \"河南\",\n        \"num\": 153,\n        \"rowNumber\": \"10\"\n    }, {\n        \"province\": \"山东\",\n        \"num\": 261,\n        \"rowNumber\": \"6\"\n    }]\n}",
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
      "name" : "result",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
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
          "name" : "province",
          "value" : "云南",
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
          "name" : "num",
          "value" : "8",
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
          "name" : "rowNumber",
          "value" : "14",
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
import log;
import response;


var sql_back = """
select n.*,m.row_number  from  
	(select REGEXP_REPLACE(a.item_name_cn,'[省市]','') province, nvl(b.num, 0) num
  from dict_data.dict_river_province a
  left join (select count(*) num, district_divide province
               from (select *
                       from sub_base_data.company_info_all
                      where district_divide in
                            (select item_name_cn
                               from dict_data.dict_river_province))
              group by district_divide) b
    on a.item_name_cn = b.province
 order by a.orders) n
 left  join  (
 select REGEXP_REPLACE(a.item_name_cn,'[省市]','') province, nvl(b.num, 0) num,
 Row_number ( ) over ( ORDER BY nvl(b.num, 0)  DESC ) AS row_number
  from dict_data.dict_river_province a
  left join (select count(*) num, district_divide province
               from (select *
                       from sub_base_data.company_info_all
                      where district_divide in
                            (select item_name_cn
                               from dict_data.dict_river_province))
              group by district_divide) b
    on a.item_name_cn = b.province
 )m on n.province=m.province

"""

var sql = """
select province_name as province,all_num as num ,
Row_number ( ) over ( ORDER BY to_number(nvl(all_num, 0))  DESC ) AS row_number  from  ODS_HS_SHARE.sts_company_temp  order by  orders
"""

var shipNums =  db.ods_data.camel().select(sql);
for(item in shipNums){
item.put("num",item.get("num")::int)
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});