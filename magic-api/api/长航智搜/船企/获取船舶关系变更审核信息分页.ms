{
  "properties" : { },
  "id" : "693418d9c6a84cb3ace28412c7224084",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "获取船舶关系变更审核信息分页",
  "createTime" : null,
  "updateTime" : 1693552389119,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/getCompanyRefShip",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
    "value" : "1",
    "description" : null,
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "size",
    "value" : "10",
    "description" : null,
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "beginTime",
    "value" : "",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "endTime",
    "value" : "",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "compangName",
    "value" : "",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "applyStatus",
    "value" : "",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"shipRegNo\": \"454546\",\n            \"refCode\": \"1,2\",\n            \"refName\": \"船舶所有人,船舶经营人\",\n            \"bindFlag\": \"1\",\n            \"uscc\": \"45565545455\",\n            \"importTime\": \"2023-08-24 16:21:52\",\n            \"companyName\": \"测试\",\n            \"oldRefCode\": \"3\",\n            \"oldRefName\": \"船舶管理人\",\n            \"insertFlag\": \"2\",\n            \"id\": \"03A7EB989780D3C7E060007F010035F3\",\n            \"serialNo\": \"6000038153\",\n            \"applyStatus\": \"1\",\n            \"shipNameCn\": \"\",\n            \"totalCount\": \"4\"\n        }, {\n            \"rowno\": \"2\",\n            \"shipRegNo\": \"454546\",\n            \"refCode\": \"1,2\",\n            \"refName\": \"船舶所有人,船舶经营人\",\n            \"bindFlag\": \"0\",\n            \"uscc\": \"4556554455\",\n            \"importTime\": \"2023-08-24 16:06:15\",\n            \"companyName\": \"测试\",\n            \"oldRefCode\": \"3\",\n            \"oldRefName\": \"船舶管理人\",\n            \"insertFlag\": \"2\",\n            \"id\": \"03A7B3BCDB2908EEE060007F0100333F\",\n            \"serialNo\": \"6000038152\",\n            \"applyStatus\": \"1\",\n            \"shipNameCn\": \"\",\n            \"totalCount\": \"4\"\n        }, {\n            \"rowno\": \"3\",\n            \"shipRegNo\": \"454546\",\n            \"refCode\": \"1,2\",\n            \"refName\": \"船舶所有人,船舶经营人\",\n            \"bindFlag\": \"1\",\n            \"uscc\": \"45565545455\",\n            \"importTime\": \"2023-08-24 15:53:34\",\n            \"companyName\": \"测试\",\n            \"oldRefCode\": \"3\",\n            \"oldRefName\": \"船舶管理人\",\n            \"insertFlag\": \"1\",\n            \"id\": \"03A785C5BFCFE681E060007F0100331B\",\n            \"serialNo\": \"6000038151\",\n            \"applyStatus\": \"1\",\n            \"shipNameCn\": \"\",\n            \"totalCount\": \"4\"\n        }, {\n            \"rowno\": \"4\",\n            \"shipRegNo\": \"454546\",\n            \"refCode\": \"1,2\",\n            \"refName\": \"船舶所有人,船舶经营人\",\n            \"bindFlag\": \"1\",\n            \"uscc\": \"45565545455\",\n            \"importTime\": \"2023-08-24 15:35:13\",\n            \"companyName\": \"测试\",\n            \"oldRefCode\": \"3\",\n            \"oldRefName\": \"船舶管理人\",\n            \"insertFlag\": \"2\",\n            \"id\": \"03A744C1C24A4B29E060007F01003099\",\n            \"serialNo\": \"6000038148\",\n            \"applyStatus\": \"1\",\n            \"shipNameCn\": \"\",\n            \"totalCount\": \"4\"\n        }],\n        \"total\": 4\n    }\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
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
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "list",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
        "defaultValue" : null,
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
            "name" : "rowno",
            "value" : "1",
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
            "name" : "shipRegNo",
            "value" : "454546",
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
            "name" : "refCode",
            "value" : "1,2",
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
            "name" : "refName",
            "value" : "船舶所有人,船舶经营人",
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
            "name" : "bindFlag",
            "value" : "1",
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
            "name" : "uscc",
            "value" : "45565545455",
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
            "name" : "importTime",
            "value" : "2023-08-24 16:21:52",
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
            "name" : "companyName",
            "value" : "测试",
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
            "name" : "oldRefCode",
            "value" : "3",
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
            "name" : "oldRefName",
            "value" : "船舶管理人",
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
            "name" : "insertFlag",
            "value" : "2",
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
            "name" : "id",
            "value" : "03A7EB989780D3C7E060007F010035F3",
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
            "name" : "serialNo",
            "value" : "6000038153",
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
            "name" : "applyStatus",
            "value" : "1",
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
            "name" : "shipNameCn",
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
          }, {
            "name" : "totalCount",
            "value" : "4",
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
      }, {
        "name" : "total",
        "value" : "4",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

var pageNum = page;
pageNum= pageNum!=null&pageNum!=''? pageNum :1

var pageSize = size;
pageSize= pageSize!=null&pageSize!=''? pageSize :10


var pageStart = """ select *
        from (select rownum rowno, b.*
              from (""";
var pageEnd = """ ) b
        where rownum <= ( #{pageNum} * #{pageSize})) a
        where a.rowno > ( ( #{pageNum} - 1 ) * #{pageSize} )""";

var Sql = """
select a.*,b.ship_name_cn,count(*) OVER() total_count from bds_base_data.company_ref_ship_prod a left join bds_base_data.sc_ship_basic_data
b on a.ship_reg_no=b.ship_reg_no  where 1=1 
?{beginTime,and  a.IMPORT_TIME >= to_date(#{beginTime},'yyyy-MM-dd hh24:mi:ss')}
?{endTime,and a.IMPORT_TIME<= to_date(#{endTime},'yyyy-MM-dd hh24:mi:ss')}
?{compangName,and a.company_name like '%'|| #{compangName}||'%'}
?{applyStatus,and a.apply_Status = #{applyStatus}}
order by a.import_time desc
       

        """;

var list=db.base_data.camel().select(pageStart+Sql+pageEnd);
var totalCount=0;



if(list==null){
   list=[];
} 
for(item in list){ 
    totalCount = item.get("totalCount");
}     
var back={
        "list":list,
        "total":Integer.parseInt(totalCount::string)
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back 

});