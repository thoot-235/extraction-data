{
  "properties" : { },
  "id" : "ecdd4fa274314310b03b46a5a5cd55dd",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "根据公司查询管理船舶",
  "createTime" : null,
  "updateTime" : 1693552390082,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipListByCompany",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyName",
    "value" : "上海民生轮船有限公司",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"mmsiVar\": \"查询成功\",\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"indicator\": \"0\",\n        \"mmsi\": \"413380220\",\n        \"utctime\": \"60\",\n        \"forward\": \"0\",\n        \"raim\": \"0\",\n        \"latitude\": \"31.259643\",\n        \"thead\": \"139\",\n        \"sog\": \"138\",\n        \"type\": \"1\",\n        \"navistat\": \"15\",\n        \"posacur\": \"0\",\n        \"rot\": \"-128\",\n        \"shipNameCn\": \"海门\",\n        \"cog\": \"1415\",\n        \"receivetime\": \"1678323951000\",\n        \"longitude\": \"121.762555\"\n    }, {\n        \"indicator\": \"0\",\n        \"mmsi\": \"413869759\",\n        \"utctime\": \"60\",\n        \"forward\": \"0\",\n        \"raim\": \"0\",\n        \"latitude\": \"31.32913\",\n        \"thead\": \"511\",\n        \"sog\": \"88\",\n        \"type\": \"1\",\n        \"navistat\": \"15\",\n        \"posacur\": \"0\",\n        \"rot\": \"-128\",\n        \"shipNameCn\": \"民恒号\",\n        \"cog\": \"1336\",\n        \"receivetime\": \"1678342461000\",\n        \"longitude\": \"121.675067\"\n    }, {\n        \"indicator\": \"0\",\n        \"mmsi\": \"413869761\",\n        \"utctime\": \"60\",\n        \"forward\": \"0\",\n        \"raim\": \"0\",\n        \"latitude\": \"31.555393\",\n        \"thead\": \"511\",\n        \"sog\": \"0\",\n        \"type\": \"1\",\n        \"navistat\": \"15\",\n        \"posacur\": \"0\",\n        \"rot\": \"-128\",\n        \"shipNameCn\": \"民联号\",\n        \"cog\": \"126\",\n        \"receivetime\": \"1678351584000\",\n        \"longitude\": \"118.384528\"\n    }, {\n        \"indicator\": \"0\",\n        \"mmsi\": \"413869762\",\n        \"utctime\": \"60\",\n        \"forward\": \"0\",\n        \"raim\": \"0\",\n        \"latitude\": \"30.124523\",\n        \"thead\": \"12\",\n        \"sog\": \"99\",\n        \"type\": \"1\",\n        \"navistat\": \"15\",\n        \"posacur\": \"0\",\n        \"rot\": \"-128\",\n        \"shipNameCn\": \"民强号\",\n        \"cog\": \"3245\",\n        \"receivetime\": \"1678351619000\",\n        \"longitude\": \"114.087373\"\n    }, {\n        \"indicator\": \"0\",\n        \"mmsi\": \"413871253\",\n        \"utctime\": \"60\",\n        \"forward\": \"0\",\n        \"raim\": \"0\",\n        \"latitude\": \"30.306968\",\n        \"thead\": \"511\",\n        \"sog\": \"76\",\n        \"type\": \"1\",\n        \"navistat\": \"15\",\n        \"posacur\": \"0\",\n        \"rot\": \"-128\",\n        \"shipNameCn\": \"民生号\",\n        \"cog\": \"3581\",\n        \"receivetime\": \"1678351607000\",\n        \"longitude\": \"115.088832\"\n    }, {\n        \"indicator\": \"0\",\n        \"mmsi\": \"413871254\",\n        \"utctime\": \"60\",\n        \"forward\": \"0\",\n        \"raim\": \"0\",\n        \"latitude\": \"32.245215\",\n        \"thead\": \"511\",\n        \"sog\": \"70\",\n        \"type\": \"1\",\n        \"navistat\": \"15\",\n        \"posacur\": \"0\",\n        \"rot\": \"-128\",\n        \"shipNameCn\": \"民文号\",\n        \"cog\": \"2862\",\n        \"receivetime\": \"1678351620000\",\n        \"longitude\": \"119.17388\"\n    }, {\n        \"indicator\": \"0\",\n        \"mmsi\": \"413871289\",\n        \"utctime\": \"60\",\n        \"forward\": \"0\",\n        \"raim\": \"0\",\n        \"latitude\": \"31.717633\",\n        \"thead\": \"12\",\n        \"sog\": \"0\",\n        \"type\": \"1\",\n        \"navistat\": \"15\",\n        \"posacur\": \"0\",\n        \"rot\": \"-128\",\n        \"shipNameCn\": \"民众号\",\n        \"cog\": \"0\",\n        \"receivetime\": \"1678311494000\",\n        \"longitude\": \"121.21456\"\n    }]\n}",
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
      "name" : "mmsiVar",
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
      "name" : "result",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "String",
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
          "name" : "indicator",
          "value" : "0",
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
          "name" : "mmsi",
          "value" : "413380220",
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
          "name" : "utctime",
          "value" : "60",
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
          "name" : "forward",
          "value" : "0",
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
          "name" : "raim",
          "value" : "0",
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
          "name" : "latitude",
          "value" : "31.259643",
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
          "name" : "thead",
          "value" : "139",
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
          "name" : "sog",
          "value" : "138",
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
          "name" : "type",
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
          "name" : "navistat",
          "value" : "15",
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
          "name" : "posacur",
          "value" : "0",
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
          "name" : "rot",
          "value" : "-128",
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
          "value" : "海门",
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
          "name" : "cog",
          "value" : "1415",
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
          "name" : "receivetime",
          "value" : "1678323951000",
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
          "name" : "longitude",
          "value" : "121.762555",
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
import 'java.util.Map' as Map;
import 'java.util.HashMap' as HashMap;
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'com.alibaba.fastjson.JSONObject' as JSONObject;
import 'com.alibaba.fastjson.JSONArray' as JSONArray;
import 'java.util.Base64' Base64;
import 'com.alibaba.fastjson.JSON' as JSONA;
import 'org.ssssssss.magic.utils.HttpRequestGet' as HttpRequestGet;

var sql1 = """

select trim(b.mmsi) mmsi,b.ship_name_cn from (
SELECT distinct SHIP_REG_NO
  FROM BDS_BASE_DATA.SHP_CERT_NATIONAL
 where status_flag = '1' and delete_flag='0'
 ?{companyName,and (SHIP_OWNER_EN = #{companyName} or SHIP_OPERATOR_CN = #{companyName} or SHIP_MANAGER_CN = #{companyName})}

 union all

    (
        SELECT distinct SHIP_REG_NO
    FROM BDS_BASE_DATA.SHP_CERT_BC_REG
    where status_flag = '1' and delete_flag='0'
    ?{companyName,and (SHIP_LENDER_CN = #{companyName} or SHIP_CHARTERER_CN = #{companyName})}
    )

union all

(
    SELECT distinct SHIP_REG_NO
  FROM BDS_BASE_DATA.SHP_CERT_MORTGAGE
 where status_flag = '1' and delete_flag='0'
 ?{companyName,and (SHIP_MORTGAGEE_CN = #{companyName} or SHIP_MORTGAGEE_EN = #{companyName})}
)

union all

(
    select distinct SHIP_REG_NO from BDS_BASE_DATA.SHP_CERT_OWNERSHIP  
    where 1=1 and delete_flag='0'
    ?{companyName,and ship_owner_cn = #{companyName}}
)

union all

(
    select ship_reg_no from shore_power_ship_info a left join shore_power_company_info
    b on a.company_uscc=b.company_uscc
    where 1=1 ?{companyName,and b.company_name = #{companyName}}
    and b.SH_STATUS=2
    and b.del_flag=0
    and a.DEL_FLAG=0
)
) a inner join sub_base_data.shp_basic_data b on a.ship_reg_no=b.SHIP_REG_NO
where b.mmsi is not null
"""
var res = db.base_data.camel().select(sql1);
var mmsiVar="";
for(item in res){
   if(item.get("mmsi")!=null&&item.get("mmsi")!=''){
      mmsiVar+=item.get("mmsi")+","
   }
   
}
var  resultStrBack ="";
var backarr=[];
if(mmsiVar!=null&&mmsiVar!=''){
  mmsiVar=mmsiVar.substring(0,mmsiVar.length()-1);
  var apikey = "7nG5GzJtRSXmqxMOxKqNFVXbfkSgMvcJ";
  var mapQuery={
      mmsi:mmsiVar
  };
  resultStrBack =
            HttpRequestGet.sendGetRequest(
                    "http://172.17.192.80:8000/RealTimeLocations/multi/boat?cmd=0x0104&param="
                            + Base64.getEncoder().encodeToString(JSONA.toJSONString(mapQuery).getBytes()),
                    apikey)
  if(resultStrBack!=""){
     backarr=JSONObject.parseArray(resultStrBack);
  }                  
}

if(backarr!=null&&backarr!=''){
    for(item in backarr){
        for(resitem in res ){
            if(item.get("mmsi").equals(resitem.get("mmsi"))){
                item.put("shipNameCn",resitem.get("shipNameCn"))
            }
        }

    }
}

import response;
return response.json({
        resultCode: 200,
        mmsiVar:"查询成功",
        resultMsg: "查询成功",
        result:  backarr
	});