{
  "properties" : { },
  "id" : "662322c4fa034554b8d2d6287992e88f",
  "script" : null,
  "groupId" : "32fd6df1028049b98e9c7064eb84bfa1",
  "name" : "船公司客运量排名",
  "createTime" : null,
  "updateTime" : 1706753009929,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCompanyByCrew",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"companyName\": \"镇江市丹徒区五峰山汽渡有限公司\",\n        \"num\": 66.0,\n        \"orders\": \"1\"\n    }, {\n        \"companyName\": \"上海市客运轮船有限公司\",\n        \"num\": 30.33,\n        \"orders\": \"2\"\n    }, {\n        \"companyName\": \"泰兴市浩通七圩汽渡运输有限公司\",\n        \"num\": 28.25,\n        \"orders\": \"3\"\n    }, {\n        \"companyName\": \"江苏暨阳轮渡有限公司\",\n        \"num\": 15.91,\n        \"orders\": \"4\"\n    }, {\n        \"companyName\": \"江苏镇扬汽渡有限公司\",\n        \"num\": 15.58,\n        \"orders\": \"5\"\n    }]\n}",
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
          "name" : "companyName",
          "value" : "镇江市丹徒区五峰山汽渡有限公司",
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
          "name" : "num",
          "value" : "66.0",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "orders",
          "value" : "1",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;


var sql = """
--镇江市丹徒区五峰山汽渡有限公司
   -- select data_name company_name, round(nvl(nums,0)/10000,2) num, orders
   --     from dm_data.COCKPIT_COMPANY_INDEX a 
  --      left join bds_base_data.company_info_all_cj b on a.data_name = b.company_name
  --      where index_code = '2'
        --and b.is_cj_flag = '1'

        --and orders <=10
  --      and create_date = (select max(create_date)
 --                               from COCKPIT_COMPANY_INDEX
 --                           where index_code = '2')
  --      order by orders asc

select target_name company_name,round(nvl(target_val,0)/10000,2) num ,rownum orders
                from dm_data.sts_basic_info
                where sts_code = '111'
                and to_char(sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-MM-dd')
                                from dm_data.sts_basic_info
                                where sts_code = '111') order by target_val desc FETCH FIRST 5 ROWS ONLY 

"""

var shipNums =  db.dm_data.camel().select(sql);
for(item in shipNums){
item.put("num",item.get("num")::double)
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});