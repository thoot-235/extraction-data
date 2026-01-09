{
  "properties" : { },
  "id" : "f13f23fba7644e0faffebca2cf431957",
  "script" : null,
  "groupId" : "32fd6df1028049b98e9c7064eb84bfa1",
  "name" : "船公司货运量排名",
  "createTime" : null,
  "updateTime" : 1706753593083,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCompanyByCargoNum",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"companyName\": \"河南淮滨农村商业银行股份有限公司\",\n        \"num\": 10247.22\n    }, {\n        \"companyName\": \"安徽寿县农村商业银行股份有限公司\",\n        \"num\": 7121.47\n    }, {\n        \"companyName\": \"安徽枞阳农村商业银行股份有限公司\",\n        \"num\": 6304.73\n    }, {\n        \"companyName\": \"池州市银祥船务有限公司\",\n        \"num\": 5606.99\n    }, {\n        \"companyName\": \"宣城华伦航运有限责任公司\",\n        \"num\": 4518.96\n    }]\n}",
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
          "name" : "companyName",
          "value" : "河南淮滨农村商业银行股份有限公司",
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
          "value" : "10247.22",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
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

var sql = """
--select * from (
--    select data_name company_name, round(nvl(nums,0)/10000,2) num
--        from dm_data.COCKPIT_COMPANY_INDEX a
--        left join bds_base_data.company_info_all_cj b on a.data_name = b.company_name
--        where a.index_code = '1'
--        and b.is_cj_flag = '1'
--        and a.create_date = (select max(create_date)
 --                               from dm_data.COCKPIT_COMPANY_INDEX
--                            where index_code = '1')
--        order by orders asc) 
--    where rownum <=10

select target_name company_name,round(nvl(target_val,0)/10000,2) num
                from dm_data.sts_basic_info
                where sts_code = '110'
                and to_char(sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-MM-dd')
                                from dm_data.sts_basic_info
                                where sts_code = '110') order by target_val desc FETCH FIRST 5 ROWS ONLY 


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