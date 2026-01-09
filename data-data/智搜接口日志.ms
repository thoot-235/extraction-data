{
  "properties" : { },
  "id" : "670b39af8cb54719aeff4229951597ae",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "智搜接口日志",
  "createTime" : 1699005242378,
  "updateTime" : 1699003338519,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getLogManagerPage",
  "method" : "GET",
  "parameters" : [ {
    "name" : "requestType",
    "value" : "1",
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
    "name" : "interfaceStatus",
    "value" : "1",
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
    "name" : "userName",
    "value" : "1",
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
    "name" : "startTime",
    "value" : "2023-10-04+17:01:15",
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
    "name" : "endTime",
    "value" : "2023-11-03+17:01:15",
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
    "name" : "current",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"records\": [{\n            \"totalCount\": 43371,\n            \"id\": \"e368c0444ab048a8ab80ffa204cb1a8f\",\n            \"userId\": \"匿名用户\",\n            \"userName\": \"匿名用户\",\n            \"interfaceTypeCode\": \"mongodb\",\n            \"interfaceType\": \"mongodb资源管理\",\n            \"interfaceUrl\": \"http://192.168.12.130:8204/mongodb/file/download/4B953A8F0C884CC588CFEF7BE41A9967.png\",\n            \"requestType\": \"GET\",\n            \"requestParam\": \"\",\n            \"interfaceDescription\": \"下载附件\",\n            \"ip\": \"222.173.62.22\",\n            \"operationTime\": \"2023-11-03 16:57:39\",\n            \"interfaceStatus\": \"200\",\n            \"responseTime\": 164,\n            \"exceptionContext\": \"\",\n            \"deleteFlag\": \"0\",\n            \"updateFlag\": \"\",\n            \"hmacSm3\": \"\"\n        }, {\n            \"totalCount\": 43371,\n            \"id\": \"233a75d4d16e47739e0213740f91bb66\",\n            \"userId\": \"匿名用户\",\n            \"userName\": \"匿名用户\",\n            \"interfaceTypeCode\": \"mongodb\",\n            \"interfaceType\": \"mongodb资源管理\",\n            \"interfaceUrl\": \"http://192.168.12.130:8204/mongodb/file/download/3198D63D4102498C9C69F274BDB446C2.png\",\n            \"requestType\": \"GET\",\n            \"requestParam\": \"\",\n            \"interfaceDescription\": \"下载附件\",\n            \"ip\": \"222.173.62.22\",\n            \"operationTime\": \"2023-11-03 16:57:39\",\n            \"interfaceStatus\": \"200\",\n            \"responseTime\": 67,\n            \"exceptionContext\": \"\",\n            \"deleteFlag\": \"0\",\n            \"updateFlag\": \"\",\n            \"hmacSm3\": \"\"\n        }, {\n            \"totalCount\": 43371,\n            \"id\": \"a9d4cc26b8bc45f284a96653ed8e9464\",\n            \"userId\": \"匿名用户\",\n            \"userName\": \"匿名用户\",\n            \"interfaceTypeCode\": \"mongodb\",\n            \"interfaceType\": \"mongodb资源管理\",\n            \"interfaceUrl\": \"http://192.168.12.130:8204/mongodb/file/download/18A94A9B3169462681EB34CC58D5F562.png\",\n            \"requestType\": \"GET\",\n            \"requestParam\": \"\",\n            \"interfaceDescription\": \"下载附件\",\n            \"ip\": \"222.173.62.22\",\n            \"operationTime\": \"2023-11-03 16:57:39\",\n            \"interfaceStatus\": \"200\",\n            \"responseTime\": 163,\n            \"exceptionContext\": \"\",\n            \"deleteFlag\": \"0\",\n            \"updateFlag\": \"否\",\n            \"hmacSm3\": \"{INTERFACE_TYPE=mongodb资源管理, REQUEST_PARAM=, IP=222.173.62.22, USER_ID=匿名用户, USER_NAME=匿名用户, INTERFACE_DESCRIPTION=下载附件, INTERFACE_STATUS=200, DELETE_FLAG=0, EXCEPTION_CONTEXT=, RESPONSE_TIME=163, INTERFACE_URL=http://192.168.12.130:8204/mongodb/file/download/18A94A9B3169462681EB34CC58D5F562.png, REQUEST_TYPE=GET, ID=a9d4cc26b8bc45f284a96653ed8e9464, OPERATION_TIME=2023-11-03 16:57:39.0, INTERFACE_TYPE_CODE=mongodb}\"\n        }, {\n            \"totalCount\": 43371,\n            \"id\": \"f8dba1e96bae484d98dbf72b9183930e\",\n            \"userId\": \"匿名用户\",\n            \"userName\": \"匿名用户\",\n            \"interfaceTypeCode\": \"mongodb\",\n            \"interfaceType\": \"mongodb资源管理\",\n            \"interfaceUrl\": \"http://192.168.12.130:8204/mongodb/file/download/BD07242E7BB54834A2DF13E710DA63AA.png\",\n            \"requestType\": \"GET\",\n            \"requestParam\": \"\",\n            \"interfaceDescription\": \"下载附件\",\n            \"ip\": \"222.173.62.22\",\n            \"operationTime\": \"2023-11-03 16:57:39\",\n            \"interfaceStatus\": \"200\",\n            \"responseTime\": 60,\n            \"exceptionContext\": \"\",\n            \"deleteFlag\": \"0\",\n            \"updateFlag\": \"否\",\n            \"hmacSm3\": \"{INTERFACE_TYPE=mongodb资源管理, REQUEST_PARAM=, IP=222.173.62.22, USER_ID=匿名用户, USER_NAME=匿名用户, INTERFACE_DESCRIPTION=下载附件, INTERFACE_STATUS=200, DELETE_FLAG=0, EXCEPTION_CONTEXT=, RESPONSE_TIME=60, INTERFACE_URL=http://192.168.12.130:8204/mongodb/file/download/BD07242E7BB54834A2DF13E710DA63AA.png, REQUEST_TYPE=GET, ID=f8dba1e96bae484d98dbf72b9183930e, OPERATION_TIME=2023-11-03 16:57:39.0, INTERFACE_TYPE_CODE=mongodb}\"\n        }, {\n            \"totalCount\": 43371,\n            \"id\": \"468e7bf3bae3473e9b8b936981ecf48c\",\n            \"userId\": \"匿名用户\",\n            \"userName\": \"匿名用户\",\n            \"interfaceTypeCode\": \"quick\",\n            \"interfaceType\": \"快捷入口模块\",\n            \"interfaceUrl\": \"http://192.168.12.130:9901/findQuickEntryEntity\",\n            \"requestType\": \"GET\",\n            \"requestParam\": \"\",\n            \"interfaceDescription\": \"首页快捷访问列表查询\",\n            \"ip\": \"222.173.62.22\",\n            \"operationTime\": \"2023-11-03 16:57:37\",\n            \"interfaceStatus\": \"200\",\n            \"responseTime\": 186,\n            \"exceptionContext\": \"\",\n            \"deleteFlag\": \"0\",\n            \"updateFlag\": \"\",\n            \"hmacSm3\": \"\"\n        }, {\n            \"totalCount\": 43371,\n            \"id\": \"64559ccc918c4330ae53310ddd555c45\",\n            \"userId\": \"匿名用户\",\n            \"userName\": \"匿名用户\",\n            \"interfaceTypeCode\": \"home\",\n            \"interfaceType\": \"首页\",\n            \"interfaceUrl\": \"http://192.168.12.130:8201/portal/home/quickAccess\",\n            \"requestType\": \"GET\",\n            \"requestParam\": \"\",\n            \"interfaceDescription\": \"快捷访问\",\n            \"ip\": \"222.173.62.22\",\n            \"operationTime\": \"2023-11-03 16:57:37\",\n            \"interfaceStatus\": \"200\",\n            \"responseTime\": 1476,\n            \"exceptionContext\": \"\",\n            \"deleteFlag\": \"0\",\n            \"updateFlag\": \"\",\n            \"hmacSm3\": \"\"\n        }, {\n            \"totalCount\": 43371,\n            \"id\": \"6eeeba4a208b4d56a31b1c50bed92ca5\",\n            \"userId\": \"匿名用户\",\n            \"userName\": \"匿名用户\",\n            \"interfaceTypeCode\": \"home\",\n            \"interfaceType\": \"首页\",\n            \"interfaceUrl\": \"http://192.168.12.130:8201/portal/home/getCatalogNewsList\",\n            \"requestType\": \"GET\",\n            \"requestParam\": \"\",\n            \"interfaceDescription\": \"获取新闻数据\",\n            \"ip\": \"222.173.62.22\",\n            \"operationTime\": \"2023-11-03 16:57:37\",\n            \"interfaceStatus\": \"200\",\n            \"responseTime\": 481,\n            \"exceptionContext\": \"\",\n            \"deleteFlag\": \"0\",\n            \"updateFlag\": \"否\",\n            \"hmacSm3\": \"{INTERFACE_TYPE=首页, REQUEST_PARAM=, IP=222.173.62.22, USER_ID=匿名用户, USER_NAME=匿名用户, INTERFACE_DESCRIPTION=获取新闻数据, INTERFACE_STATUS=200, DELETE_FLAG=0, EXCEPTION_CONTEXT=, RESPONSE_TIME=481, INTERFACE_URL=http://192.168.12.130:8201/portal/home/getCatalogNewsList, REQUEST_TYPE=GET, ID=6eeeba4a208b4d56a31b1c50bed92ca5, OPERATION_TIME=2023-11-03 16:57:37.0, INTERFACE_TYPE_CODE=home}\"\n        }, {\n            \"totalCount\": 43371,\n            \"id\": \"e16df6e0662f4242849eff1618889ee6\",\n            \"userId\": \"匿名用户\",\n            \"userName\": \"匿名用户\",\n            \"interfaceTypeCode\": \"home\",\n            \"interfaceType\": \"首页\",\n            \"interfaceUrl\": \"http://192.168.12.130:8201/portal/home/getDataServiceDynamic\",\n            \"requestType\": \"GET\",\n            \"requestParam\": \"\",\n            \"interfaceDescription\": \"数据动态-数据服务\",\n            \"ip\": \"222.173.62.22\",\n            \"operationTime\": \"2023-11-03 16:57:37\",\n            \"interfaceStatus\": \"200\",\n            \"responseTime\": 834,\n            \"exceptionContext\": \"\",\n            \"deleteFlag\": \"0\",\n            \"updateFlag\": \"否\",\n            \"hmacSm3\": \"{INTERFACE_TYPE=首页, REQUEST_PARAM=, IP=222.173.62.22, USER_ID=匿名用户, USER_NAME=匿名用户, INTERFACE_DESCRIPTION=数据动态-数据服务, INTERFACE_STATUS=200, DELETE_FLAG=0, EXCEPTION_CONTEXT=, RESPONSE_TIME=834, INTERFACE_URL=http://192.168.12.130:8201/portal/home/getDataServiceDynamic, REQUEST_TYPE=GET, ID=e16df6e0662f4242849eff1618889ee6, OPERATION_TIME=2023-11-03 16:57:37.0, INTERFACE_TYPE_CODE=home}\"\n        }, {\n            \"totalCount\": 43371,\n            \"id\": \"412660ec99174478a08c59bf441df622\",\n            \"userId\": \"匿名用户\",\n            \"userName\": \"匿名用户\",\n            \"interfaceTypeCode\": \"home\",\n            \"interfaceType\": \"首页\",\n            \"interfaceUrl\": \"http://192.168.12.130:8201/portal/home/getDataResourcesDynamic\",\n            \"requestType\": \"GET\",\n            \"requestParam\": \"\",\n            \"interfaceDescription\": \"数据动态-数据资源\",\n            \"ip\": \"222.173.62.22\",\n            \"operationTime\": \"2023-11-03 16:57:37\",\n            \"interfaceStatus\": \"200\",\n            \"responseTime\": 6915,\n            \"exceptionContext\": \"\",\n            \"deleteFlag\": \"0\",\n            \"updateFlag\": \"否\",\n            \"hmacSm3\": \"{INTERFACE_TYPE=首页, REQUEST_PARAM=, IP=222.173.62.22, USER_ID=匿名用户, USER_NAME=匿名用户, INTERFACE_DESCRIPTION=数据动态-数据资源, INTERFACE_STATUS=200, DELETE_FLAG=0, EXCEPTION_CONTEXT=, RESPONSE_TIME=6915, INTERFACE_URL=http://192.168.12.130:8201/portal/home/getDataResourcesDynamic, REQUEST_TYPE=GET, ID=412660ec99174478a08c59bf441df622, OPERATION_TIME=2023-11-03 16:57:37.0, INTERFACE_TYPE_CODE=home}\"\n        }, {\n            \"totalCount\": 43371,\n            \"id\": \"be634a81b03344048c4ef1a4b811d9d0\",\n            \"userId\": \"匿名用户\",\n            \"userName\": \"匿名用户\",\n            \"interfaceTypeCode\": \"quick\",\n            \"interfaceType\": \"快捷入口模块\",\n            \"interfaceUrl\": \"http://192.168.12.130:9901/findMenu\",\n            \"requestType\": \"GET\",\n            \"requestParam\": \"\",\n            \"interfaceDescription\": \"菜单树查询\",\n            \"ip\": \"222.173.62.22\",\n            \"operationTime\": \"2023-11-03 16:57:35\",\n            \"interfaceStatus\": \"200\",\n            \"responseTime\": 1169,\n            \"exceptionContext\": \"\",\n            \"deleteFlag\": \"0\",\n            \"updateFlag\": \"\",\n            \"hmacSm3\": \"\"\n        }],\n        \"total\": 43371\n    }\n}",
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
      "name" : "result",
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
        "name" : "records",
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
            "name" : "totalCount",
            "value" : "43371",
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
            "name" : "id",
            "value" : "e368c0444ab048a8ab80ffa204cb1a8f",
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
            "name" : "userId",
            "value" : "匿名用户",
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
            "name" : "userName",
            "value" : "匿名用户",
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
            "name" : "interfaceTypeCode",
            "value" : "mongodb",
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
            "name" : "interfaceType",
            "value" : "mongodb资源管理",
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
            "name" : "interfaceUrl",
            "value" : "http://192.168.12.130:8204/mongodb/file/download/4B953A8F0C884CC588CFEF7BE41A9967.png",
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
            "name" : "requestType",
            "value" : "GET",
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
            "name" : "requestParam",
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
            "name" : "interfaceDescription",
            "value" : "下载附件",
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
            "name" : "ip",
            "value" : "222.173.62.22",
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
            "name" : "operationTime",
            "value" : "2023-11-03 16:57:39",
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
            "name" : "interfaceStatus",
            "value" : "200",
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
            "name" : "responseTime",
            "value" : "164",
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
            "name" : "exceptionContext",
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
            "name" : "deleteFlag",
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
            "name" : "updateFlag",
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
            "name" : "hmacSm3",
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
          } ]
        } ]
      }, {
        "name" : "total",
        "value" : "43371",
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





var limit=""" ) a 
limit 
        (#{size}) ::bigint  offset 
         ((#{current})  ::bigint-1) * (#{size}) ::bigint 
"""      ;  

var Sql = """

select * from (
          select count(*) OVER() total_count ,
        a.*
      from log_management a 
      where 1=1 and delete_flag='0'
       <if test="startTime!=null and startTime != ''">
         and  operation_time>=to_timestamp(#{startTime},'yyyy-MM-dd hh24:mi:ss')
       </if>
       <if test="endTime!=null and endTime != ''">
        and  operation_time<=to_timestamp(#{endTime},'yyyy-MM-dd hh24:mi:ss')
       </if>

       <if test="requestType!=null and requestType != ''">
        and  request_Type<=#{requestType}
       </if>

       <if test="interfaceStatus!=null and interfaceStatus != ''">
        and  interface_Status<=#{interfaceStatus}
       </if>

       <if test="userName!=null and userName != ''">
        and  user_Name<=#{userName}
       </if>
      order by operation_time desc
       

        """;


var list=db.bladex.camel().select(Sql+limit);
var totalCount=0;



if(list==null){
   list=[];
} 
for(item in list){ 
    totalCount = item.get("totalCount");
}     
var back={
        "records":list,
        "total":Integer.parseInt(totalCount::string)
}

import response;
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: back 

});
