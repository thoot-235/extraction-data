{
  "properties" : { },
  "id" : "06fdbf8f3ba24aa5ad1cf0626f26796b",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "运政船企活跃船舶分析",
  "createTime" : 1679883322882,
  "updateTime" : 1693305711726,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/companyAnalActive",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"belongProvince\": \"上海\",\n        \"registernum\": \"203\"\n    }, {\n        \"belongProvince\": \"江苏\",\n        \"registernum\": \"1030\"\n    }, {\n        \"belongProvince\": \"安徽\",\n        \"registernum\": \"1774\"\n    }, {\n        \"belongProvince\": \"浙江\",\n        \"registernum\": \"7570\"\n    }, {\n        \"belongProvince\": \"江西\",\n        \"registernum\": \"272\"\n    }, {\n        \"belongProvince\": \"湖北\",\n        \"registernum\": \"534\"\n    }, {\n        \"belongProvince\": \"湖南\",\n        \"registernum\": \"745\"\n    }, {\n        \"belongProvince\": \"重庆\",\n        \"registernum\": \"507\"\n    }, {\n        \"belongProvince\": \"四川\",\n        \"registernum\": \"1750\"\n    }, {\n        \"belongProvince\": \"贵州\",\n        \"registernum\": \"383\"\n    }, {\n        \"belongProvince\": \"云南\",\n        \"registernum\": \"139\"\n    }, {\n        \"belongProvince\": \"河南\",\n        \"registernum\": \"152\"\n    }, {\n        \"belongProvince\": \"陕西\",\n        \"registernum\": \"210\"\n    }, {\n        \"belongProvince\": \"山东\",\n        \"registernum\": \"485\"\n    }]\n}",
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
          "name" : "belongProvince",
          "value" : "上海",
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
          "name" : "registernum",
          "value" : "203",
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
        select BELONG_PROVINCE, count(*) as registerNum
  from (select * from (
select  ROW_NUMBER() over(partition by company_name order by BELONG_PROVINCE desc) rn, company_name, BELONG_PROVINCE
          from ods_hs_share.TRANS_MGT_COMPANY_SHIP 
          where BELONG_PROVINCE is not null
  AND company_name IS NOT NULL
  and ST_YEAR =
                       to_char(add_months(trunc(sysdate), -12), 'yyyy')
                       and belong_province in ('湖北',
                           '上海',
                           '江苏',
                           '安徽',
                           '江西',
                           '湖南',
                           '重庆',
                           '浙江',
                           '四川',
                           '贵州',
                           '云南',
                           '河南',
                           '陕西',
                           '山东')
                           ) where rn=1)
 where 1=1
   
 group by BELONG_PROVINCE
 order by decode(BELONG_PROVINCE,
                 '上海',
                 1,
                 '江苏',
                 2,
                 '安徽',
                 3,
                 '浙江',
                 4,
                 '江西',
                 5,
                 '湖北',
                 6,
                 '湖南',
                 7,
                 '重庆',
                 8,
                 '四川',
                 9,
                 '贵州',
                 10,
                 '云南',
                 11,
                 '河南',
                 12,
                 '陕西',
                 13,
                 '山东',
                 14
                 )


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