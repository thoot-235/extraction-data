{
  "properties" : { },
  "id" : "0c1668fecbd74e1a87c6d24fb94df19f",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "智搜首页热门港口",
  "createTime" : null,
  "updateTime" : 1691749538513,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getHotPorts",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"success\": \"查询成功\",\n    \"data\": {\n        \"records\": [{\n            \"value\": {\n                \"gkzwmc\": \"重庆\",\n                \"id\": \"EFEDB83B4BC3800FE050007F01005FB2\",\n                \"country_code\": \"CHN\",\n                \"lon\": 106.54452,\n                \"lat\": 29.44669,\n                \"hx\": \"东南亚线\"\n            }\n        }, {\n            \"value\": {\n                \"gkzwmc\": \"武汉\",\n                \"id\": \"EFEDB83B4B94800FE050007F01005FB2\",\n                \"country_code\": \"CHN\",\n                \"lon\": 114.30052,\n                \"lat\": 30.57189,\n                \"hx\": \"东南亚线\"\n            }\n        }, {\n            \"value\": {\n                \"gkzwmc\": \"九江\",\n                \"id\": \"EFEDB83B4B71800FE050007F01005FB2\",\n                \"country_code\": \"CHN\",\n                \"lon\": 115.96752,\n                \"lat\": 29.72469,\n                \"hx\": \"中国港口\"\n            }\n        }, {\n            \"value\": {\n                \"gkzwmc\": \"安庆\",\n                \"id\": \"EFEDB83B4BCE800FE050007F01005FB2\",\n                \"country_code\": \"CHN\",\n                \"lon\": 117.03352,\n                \"lat\": 30.50539,\n                \"hx\": \"中国港口\"\n            }\n        }, {\n            \"value\": {\n                \"gkzwmc\": \"南京\",\n                \"id\": \"EFEDB83B4BC7800FE050007F01005FB2\",\n                \"country_code\": \"CHN\",\n                \"lon\": 118.73352,\n                \"lat\": 32.08379,\n                \"hx\": \"中国港口\"\n            }\n        }, {\n            \"value\": {\n                \"gkzwmc\": \"镇江\",\n                \"id\": \"EFEDB83B4B5B800FE050007F01005FB2\",\n                \"country_code\": \"CHN\",\n                \"lon\": 119.38352,\n                \"lat\": 32.20019,\n                \"hx\": \"中国港口\"\n            }\n        }, {\n            \"value\": {\n                \"gkzwmc\": \"南通\",\n                \"id\": \"EFEDB83B4B62800FE050007F01005FB2\",\n                \"country_code\": \"CHN\",\n                \"lon\": 120.81752,\n                \"lat\": 32.00079,\n                \"hx\": \"中国港口\"\n            }\n        }, {\n            \"value\": {\n                \"gkzwmc\": \"上海\",\n                \"id\": \"EFEDB83B4D0B800FE050007F01005FB2\",\n                \"country_code\": \"CHN\",\n                \"lon\": 121.59652,\n                \"lat\": 31.36429,\n                \"hx\": \"中国港口\"\n            }\n        }]\n    }\n}",
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
      "name" : "code",
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
      "name" : "success",
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
      "name" : "data",
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
        "name" : "records",
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
            "name" : "value",
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
              "name" : "gkzwmc",
              "value" : "重庆",
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
              "name" : "id",
              "value" : "EFEDB83B4BC3800FE050007F01005FB2",
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
              "name" : "country_code",
              "value" : "CHN",
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
              "name" : "lon",
              "value" : "106.54452",
              "description" : "",
              "required" : false,
              "dataType" : "Double",
              "type" : "",
              "defaultValue" : "",
              "validateType" : "",
              "error" : "",
              "expression" : "",
              "children" : [ ]
            }, {
              "name" : "lat",
              "value" : "29.44669",
              "description" : "",
              "required" : false,
              "dataType" : "Double",
              "type" : "",
              "defaultValue" : "",
              "validateType" : "",
              "error" : "",
              "expression" : "",
              "children" : [ ]
            }, {
              "name" : "hx",
              "value" : "东南亚线",
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
          } ]
        } ]
      } ]
    } ]
  }
}
================================
import response;
//热门港口定死8个 重庆、宜昌、武汉、九江、安庆、马鞍山、南京、镇江、南通、上海
var ret={
        "records": [
            {
                "value": {
                    "gkzwmc": "重庆",
                    "id":"EFEDB83B4BC3800FE050007F01005FB2",
                    "country_code":"CHN",
                    "lon":106.54452,
                    "lat":29.44669,
                    "hx":"东南亚线"

                  
                }
            },
            {
                "value": {
                    "gkzwmc": "武汉",
                    "id":"EFEDB83B4B94800FE050007F01005FB2",
                     "country_code":"CHN",
                    "lon":114.30052,
                    "lat":30.57189,
                    "hx":"东南亚线"
                  
                }
            },
            {
                "value": {
                    "gkzwmc": "九江",
                    "id":"EFEDB83B4B71800FE050007F01005FB2",
                    "country_code":"CHN",
                    "lon":115.96752,
                    "lat":29.72469,
                    "hx":"中国港口"

                  
                }
            },
            {
                "value": {
                    "gkzwmc": "安庆",
                    "id":"EFEDB83B4BCE800FE050007F01005FB2",
                     "country_code":"CHN",
                    "lon":117.03352,
                    "lat":30.50539,
                    "hx":"中国港口"
                  
                }
            },
            {
                "value": {
                    "gkzwmc": "南京",
                    "id":"EFEDB83B4BC7800FE050007F01005FB2",
                     "country_code":"CHN",
                    "lon":118.73352,
                    "lat":32.08379,
                    "hx":"中国港口"
                  
                }
            },
            {
                "value": {
                    "gkzwmc": "镇江",
                    "id":"EFEDB83B4B5B800FE050007F01005FB2",
                     "country_code":"CHN",
                    "lon":119.38352,
                    "lat":32.20019,
                    "hx":"中国港口"
                  
                }
            },
            {
                "value": {
                    "gkzwmc": "南通",
                    "id":"EFEDB83B4B62800FE050007F01005FB2",
                       "country_code":"CHN",
                    "lon":120.81752,
                    "lat":32.00079,
                    "hx":"中国港口"
                  
                }
            },
            {
                "value": {
                    "gkzwmc": "上海",
                    "id":"EFEDB83B4D0B800FE050007F01005FB2",
                      "country_code":"CHN",
                    "lon":121.59652,
                    "lat":31.36429,
                    "hx":"中国港口"
                  
                }
            }
        ]};

return response.json({
    code: 200,
    success: "查询成功",
    data: ret 

});