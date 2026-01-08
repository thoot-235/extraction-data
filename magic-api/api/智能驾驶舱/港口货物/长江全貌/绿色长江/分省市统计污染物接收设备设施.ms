{
  "properties" : { },
  "id" : "5892419b019242bea98bee896f1a1e3b",
  "script" : null,
  "groupId" : "d451aee9c07b41f0a9f78bf1364eae04",
  "name" : "分省市统计污染物接收设备设施",
  "createTime" : null,
  "updateTime" : 1706602864488,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getPollutByProvince",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"result\": [{\n        \"province\": \"上海\",\n        \"deviceName\": 12,\n        \"departNo\": 6,\n        \"comNo\": 342,\n        \"receiveShipId\": 22\n    }, {\n        \"province\": \"山东\",\n        \"deviceName\": 0,\n        \"departNo\": 0,\n        \"comNo\": 6,\n        \"receiveShipId\": 0\n    }, {\n        \"province\": \"浙江\",\n        \"deviceName\": 732,\n        \"departNo\": 55,\n        \"comNo\": 1540,\n        \"receiveShipId\": 41\n    }, {\n        \"province\": \"湖南\",\n        \"deviceName\": 258,\n        \"departNo\": 35,\n        \"comNo\": 353,\n        \"receiveShipId\": 74\n    }, {\n        \"province\": \"四川\",\n        \"deviceName\": 565,\n        \"departNo\": 44,\n        \"comNo\": 387,\n        \"receiveShipId\": 24\n    }, {\n        \"province\": \"贵州\",\n        \"deviceName\": 172,\n        \"departNo\": 37,\n        \"comNo\": 171,\n        \"receiveShipId\": 8\n    }, {\n        \"province\": \"云南\",\n        \"deviceName\": 11,\n        \"departNo\": 9,\n        \"comNo\": 43,\n        \"receiveShipId\": 3\n    }, {\n        \"province\": \"安徽\",\n        \"deviceName\": 212,\n        \"departNo\": 42,\n        \"comNo\": 677,\n        \"receiveShipId\": 91\n    }, {\n        \"province\": \"江西\",\n        \"deviceName\": 219,\n        \"departNo\": 42,\n        \"comNo\": 265,\n        \"receiveShipId\": 50\n    }, {\n        \"province\": \"湖北\",\n        \"deviceName\": 354,\n        \"departNo\": 86,\n        \"comNo\": 894,\n        \"receiveShipId\": 158\n    }, {\n        \"province\": \"重庆\",\n        \"deviceName\": 277,\n        \"departNo\": 56,\n        \"comNo\": 461,\n        \"receiveShipId\": 57\n    }, {\n        \"province\": \"江苏\",\n        \"deviceName\": 5728,\n        \"departNo\": 148,\n        \"comNo\": 4578,\n        \"receiveShipId\": 464\n    }],\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\"\n}",
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
          "name" : "province",
          "value" : "上海",
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
          "name" : "deviceName",
          "value" : "12",
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
          "name" : "departNo",
          "value" : "6",
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
          "name" : "comNo",
          "value" : "342",
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
          "name" : "receiveShipId",
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
      } ]
    }, {
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
    } ]
  }
}
================================
import response
var sql="""
select REGEXP_REPLACE(province,'[省市]','') as province,
       sum(t.device_num) DEVICE_NAME,
       sum(t.wharf_num) DEPART_NO,
       sum(t.company_num) COM_NO,
       sum(t.receive_ship_num) RECEIVE_SHIP_ID
--ROW_NUMBER() OVER(PARTITION BY province ORDER BY count_time desc) rn
  from dm_data.sts_water_device t
 where 
      province in ('上海市',
                    '江苏省',
                    '安徽省',
                    '浙江省',
                    '江西省',
                    '湖北省',
                    '湖南省',
                    '重庆市',
                    '四川省',
                    '贵州省',
                    '云南省',
                    '陕西省',
                    '河南省',
                    '山东省')
      and sts_date = (select max(sts_date) from dm_data.sts_water_device)
    
 group by province
 """
 var getPollutByProvince=db.dm_data.camel().select(sql);
for(item in getPollutByProvince){
  item.put("deviceName",item.get("deviceName")::int);
  item.put("departNo",item.get("departNo")::int);
  item.put("comNo",item.get("comNo")::int);
  item.put("receiveShipId",item.get("receiveShipId")::int);
}

return response.json(
    {
       result: getPollutByProvince,
       resultCode: 200,
       resultMsg: "查询成功"
});