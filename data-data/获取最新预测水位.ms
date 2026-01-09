{
  "properties" : { },
  "id" : "6ed1cc7b5f5c45c0b44ffc32cda83b7a",
  "script" : null,
  "groupId" : "39ce103c23184972a79a5498216c3525",
  "name" : "获取最新预测水位",
  "createTime" : null,
  "updateTime" : 1705885889240,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getNewPreWaterLevel",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n  \"swzMsgList\": [                   \r\n                   \t\t\t\r\n                ]\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1703645184572,\n    \"executeTime\": 22\n}",
  "description" : "",
  "requestBodyDefinition" : {
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
      "name" : "swzMsgList",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
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
      "name" : "code",
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1703645184572",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "22",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  }
}
================================
import response;
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
var swzMclist=[];
var swzIdlist=[];

if(body.swzMsgList!=null||body.swzMsgList.size()>0){
var swzMsgListVal=body.swzMsgList;
for (item in body.swzMsgList){
    swzMclist.add(item.get("swzMc"));
    swzIdlist.add(item.get("swzId"));
}
}

var waterPreSql = """
select a.ycsj,
       a.SWZ_ID,
       b.swzmc,
       a.DAY1,
       a.DAY2,
       a.DAY3,
       a.DAY4,
       a.DAY5,
       a.DAY6,
       a.DAY7
  from ods_hs_share.predict_water_level a, ods_hs_share.sz_swz b
 where a.ycsj = (select max(ycsj) from ods_hs_share.predict_water_level)
   and a.SWZ_ID = b.id
   and b.swzmc in (select name from ods_hs_share.hdj_swz)
     <trim prefix="and("  suffix=")" prefixOverrides="AND |OR ">
       <if test="swzIdlist != null and swzIdlist.size()>0">
             OR SWZ_ID in ( #{swzIdlist})
      </if>
      <if test="swzMclist != null and swzMclist.size()>0">
             OR b.swzmc in(#{swzMclist}) 
      </if>

     
  </trim>


"""


var waterPre =  db.ods_data.camel().select(waterPreSql);


for (item in waterPre){
item.put("swzmc",item.get("swzmc").replace(/\（.*?\）/g, "").trim())

}
return response.json({
    code: 200,
    success: "查询成功",
    result: waterPre 

});