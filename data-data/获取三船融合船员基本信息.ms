{
  "properties" : { },
  "id" : "a58473b1b17d4c47b611257703922619",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "获取三船融合船员基本信息",
  "createTime" : null,
  "updateTime" : 1694505854950,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCrewData",
  "method" : "GET",
  "parameters" : [ {
    "name" : "idCardNo",
    "value" : "210503197604181517",
    "description" : "",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"needAudit\": {\n            \"REGISTER_COUNTY\": \"\",\n            \"PASSPORT_ID\": \"\",\n            \"REGISTER_COUNTY_TRANSLATE\": \"\",\n            \"REGISTER_CITY\": \"\",\n            \"PASSPORT_TYPE_TRANSLATE\": \"\",\n            \"PASSPORT_TYPE\": \"\",\n            \"REGISTER_CITY_TRANSLATE\": \"\"\n        },\n        \"noNeedAudit\": {\n            \"EDUCATION_TRANSLATE\": \"\",\n            \"ZIP_CODE\": \"\",\n            \"DEGREE_TRANSLATE\": \"\",\n            \"COMM_COUNTY\": \"211404\",\n            \"EDUCATION\": \"\",\n            \"CONTACT1_RELA\": \"\",\n            \"EMAIL\": \"\",\n            \"TITLE_TRANSLATE\": \"\",\n            \"DUTY_TRANSLATE\": \"\",\n            \"COMM_PROV\": \"210000\",\n            \"COMM_CITY\": \"211400\",\n            \"QQ_NO\": \"\",\n            \"PROFESSIONAL_TRANSLATE\": \"\",\n            \"COMM_ADDR\": \"丰收路0栋240号\",\n            \"PROFESSIONAL\": \"\",\n            \"COMM_CITY_TRANSLATE\": \"葫芦岛市\",\n            \"CONTACT1_NAME\": \"\",\n            \"DIPLOMA_DATE\": \"1900\",\n            \"IF_PARTY_MEMBER\": \"\",\n            \"COMM_PROV_TRANSLATE\": \"辽宁省\",\n            \"COMM_COUNTY_TRANSLATE\": \"南票区\",\n            \"MOBILE_PHONE\": \"15898249293\",\n            \"GRADUATE_UNIVERSITY\": \"\",\n            \"DUTY\": \"\",\n            \"DIPLOMA_NO\": \"\",\n            \"WECHAT_NO\": \"\",\n            \"TITLE\": \"\",\n            \"DEGREE\": \"\",\n            \"CELL_PHONE1\": \"\"\n        }\n    }\n}",
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
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "needAudit",
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
          "name" : "REGISTER_COUNTY",
          "value" : "",
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
          "name" : "PASSPORT_ID",
          "value" : "",
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
          "name" : "REGISTER_COUNTY_TRANSLATE",
          "value" : "",
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
          "name" : "REGISTER_CITY",
          "value" : "",
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
          "name" : "PASSPORT_TYPE_TRANSLATE",
          "value" : "",
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
          "name" : "PASSPORT_TYPE",
          "value" : "",
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
          "name" : "REGISTER_CITY_TRANSLATE",
          "value" : "",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        } ]
      }, {
        "name" : "noNeedAudit",
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
          "name" : "EDUCATION_TRANSLATE",
          "value" : "",
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
          "name" : "ZIP_CODE",
          "value" : "",
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
          "name" : "DEGREE_TRANSLATE",
          "value" : "",
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
          "name" : "COMM_COUNTY",
          "value" : "211404",
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
          "name" : "EDUCATION",
          "value" : "",
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
          "name" : "CONTACT1_RELA",
          "value" : "",
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
          "name" : "EMAIL",
          "value" : "",
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
          "name" : "TITLE_TRANSLATE",
          "value" : "",
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
          "name" : "DUTY_TRANSLATE",
          "value" : "",
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
          "name" : "COMM_PROV",
          "value" : "210000",
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
          "name" : "COMM_CITY",
          "value" : "211400",
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
          "name" : "QQ_NO",
          "value" : "",
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
          "name" : "PROFESSIONAL_TRANSLATE",
          "value" : "",
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
          "name" : "COMM_ADDR",
          "value" : "丰收路0栋240号",
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
          "name" : "PROFESSIONAL",
          "value" : "",
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
          "name" : "COMM_CITY_TRANSLATE",
          "value" : "葫芦岛市",
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
          "name" : "CONTACT1_NAME",
          "value" : "",
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
          "name" : "DIPLOMA_DATE",
          "value" : "1900",
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
          "name" : "IF_PARTY_MEMBER",
          "value" : "",
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
          "name" : "COMM_PROV_TRANSLATE",
          "value" : "辽宁省",
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
          "name" : "COMM_COUNTY_TRANSLATE",
          "value" : "南票区",
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
          "name" : "MOBILE_PHONE",
          "value" : "15898249293",
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
          "name" : "GRADUATE_UNIVERSITY",
          "value" : "",
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
          "name" : "DUTY",
          "value" : "",
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
          "name" : "DIPLOMA_NO",
          "value" : "",
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
          "name" : "WECHAT_NO",
          "value" : "",
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
          "name" : "TITLE",
          "value" : "",
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
          "name" : "DEGREE",
          "value" : "",
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
          "name" : "CELL_PHONE1",
          "value" : "",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;//返回结果
import 'com.success.data.tag.TagUtils' as TagUtils;//导入标签配置类
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import 'org.ssssssss.magic.entity.TreeModel' as TreeModel;
import 'com.alibaba.fastjson.JSON' as JSONA
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'org.springblade.core.secure.BladeUser' as  BladeUser
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate
import response;

 var sql=""" select * from bds_base_data.crew_basic_data where id_card_no=#{idCardNo}""";

 var crewData=db.base_data.selectOne(sql);//船员基本信息表

  var fieldsPowerSql=""" select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.CREW_BASIC_DATA'""";

 var fieldsPower=db.base_data.select(fieldsPowerSql);//字段权限控制

 var LastData=TreeUtil.ScZzMap(crewData, fieldsPower)

 return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
   
    result: LastData
   
    
});