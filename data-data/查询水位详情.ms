{
  "properties" : { },
  "id" : "8c878e0f16d447859d3502e7b0ac6108",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "查询水位详情",
  "createTime" : null,
  "updateTime" : 1691749538545,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getWaterDetailListPlat",
  "method" : "GET",
  "parameters" : [ {
    "name" : "stationId",
    "value" : "NJ_2c9240216421efd90164a752dd8b0fa0",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"id\": \"NJ_2c9240216421efd90164a752dd8b0fa0\",\n        \"swzmc\": \"永钢（压力式）\",\n        \"clsw\": \"1.05\",\n        \"zfclsw\": \"0.01\",\n        \"lcwz\": \"83\",\n        \"ssjgname\": \"长江上海航道处\"\n    }\n}",
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
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "id",
        "value" : "NJ_2c9240216421efd90164a752dd8b0fa0",
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
        "name" : "swzmc",
        "value" : "永钢（压力式）",
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
        "name" : "clsw",
        "value" : "1.05",
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
        "name" : "zfclsw",
        "value" : "0.01",
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
        "name" : "lcwz",
        "value" : "83",
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
        "name" : "ssjgname",
        "value" : "长江上海航道处",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;


var Sql = """
select a.id,a.swzmc,a.CLSW,(nvl(a.CLSW,0)-nvl(b.CLSW,0)) AS zfclsw ,A.LCWZ,a.name as ssjgName from (
select swz.id,swz.SWZMC,sw.CLSW ,swz.LCWZ,xg.name
 from SZ_SWZ swz left join (
 select *
                             from (select SWZ_ID,
                                          CLSJ,
                                          CLSW,
                                          SCSW,
                                          ROW_NUMBER() over(partition by SWZ_ID order by CLSJ desc) mm
                                   from SZ_SWDTJCLS
                                   where  CLSJ<=sysdate

                                   and CLSJ>=(sysdate-700)
                                  )
                             where mm = 1
 ) sw 
on swz.id=sw.SWZ_ID
left join XT_JGXX xg on xg.id=swz.SSJG_ID
 where 1=1 and sw.CLSJ is not null 
 
 ) a
 left join 
 
 (
 
 
    select swz.id,swz.SWZMC,sw.CLSW ,swz.LCWZ,xg.name
 from SZ_SWZ swz left join (
 select *
                             from (select  SWZ_ID,
                                          CLSJ,
                                          CLSW,
                                          SCSW,
                                          ROW_NUMBER() over(partition by SWZ_ID order by CLSJ desc) mm
                                   from SZ_SWDTJCLS
                                   where  CLSJ<=sysdate

                                   and CLSJ>=(sysdate-700)

                                  )
                             where mm = 2
 ) sw 
on swz.id=sw.SWZ_ID
left join XT_JGXX xg on xg.id=swz.SSJG_ID
 where 1=1 and sw.CLSJ is not null
 ) b on a.ID=b.ID
 WHERE 1=1  
 ?{stationId,and A.id like '%'|| #{stationId}||'%'}

       

        """;
var list=db.biz_data.camel().selectOne(Sql);
if(list==null||list==""){
list={}
}
import response;
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list 

});
