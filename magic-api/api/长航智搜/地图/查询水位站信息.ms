{
  "properties" : { },
  "id" : "2538f9d753d840368ea221d4fa4b4970",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "查询水位站信息",
  "createTime" : null,
  "updateTime" : 1702088848578,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSwzStationPlat",
  "method" : "GET",
  "parameters" : [ {
    "name" : "swznc",
    "value" : "王爷庙",
    "description" : "",
    "required" : false,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": []\n}",
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
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;

var cbSql;

cbSql = """
select count(*) OVER() total_count,
       ID,
       CJSJ,
       GXSJ,
       SJLY,
       SCBJ,
       PX,
       SWZMC,--水位站名称
       ZBJD,--经度
       ZBWD,--纬度
       case when HD_HDLY='1' then '上游'
        when HD_HDLY='2' then '中游'
          else '下游' end HD_HDLY ,  --1.上游，2.中游，3.下游   
       LCWZ,
       QYZT,
       DTXZ,
       TY_SJSBFS,
       LRMSFJXX,
       case when SZ_SWZJB='1' then '重点'
         else '一般' end SZ_SWZJB, 
       case when SZ_SWZLX='1' then '气泡式'
         when SZ_SWZLX='2' then '雷达式'
           else '其他' end SZ_SWZLX ,
       SZ_SWJZ,
       BZXX,
       SSHD_ID,
       SSJG_ID,
       SFZX,
      case when  SZ_SQZLX='1'  then '雨量站'
        when SZ_SQZLX='2'  then '水位站'
        when SZ_SQZLX='3'  then '潮位站'
        when SZ_SQZLX='4'  then '流量站'
          else '其他' end SZ_SQZLX,  
      case when  SZ_SDJZ='1' then '航行基准面'
        else '理论最低潮面' end SZ_SDJZ ,
       GCJZZ,
       SDJZZ,
       DSWYJZ,
       GSWYJZ,
       YJFS,
       BFYJZ,
       row_number() over(order by id DESC) as rownumber
  from SZ_SWZ
  where  SCBJ='0' 
         ?{swznc,and instr(SWZMC,#{swznc})>0 }
         
""";

import response
var list=db.biz_data.camel().select(cbSql);
      
        
        if(list==null){
                list=[];
         } 
       
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: list
            
      });
 




