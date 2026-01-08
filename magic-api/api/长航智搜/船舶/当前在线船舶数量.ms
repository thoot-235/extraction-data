{
  "properties" : { },
  "id" : "b1b32d884406441791215569e128aa7b",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "当前在线船舶数量",
  "createTime" : null,
  "updateTime" : 1705385477650,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/onlineShipNum",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;


var sql = """
  select ship_nums from COCKPIT_ON_LINE_SHIP_DAY  order by import_time desc
"""

var shipNum = db.dm_data.camel().selectOne(sql);
var res = {};
res.put("shipNum",shipNum.get("shipNums")::int);

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});