{
  "properties" : { },
  "id" : "copy1706700780714d16718",
  "script" : null,
  "groupId" : "c41bce8c9d11400293c67cb04153e13a",
  "name" : "货物流量流向详情(复制)",
  "createTime" : 1706700782403,
  "updateTime" : null,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/getCargoFlowDirectionDetail_copy",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "CHONGQING",
    "description" : "SHANGHAI",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"outShipNums\": [{\n            \"orders\": 1,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"黄石\",\n            \"line\": \"黄冈-黄石\",\n            \"goodType\": \"危险品\",\n            \"num\": 2.15\n        }, {\n            \"orders\": 2,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"荆州\",\n            \"line\": \"黄冈-荆州\",\n            \"goodType\": \"危险品\",\n            \"num\": 0.81\n        }, {\n            \"orders\": 3,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"九江\",\n            \"line\": \"黄冈-九江\",\n            \"goodType\": \"危险品\",\n            \"num\": 0.01\n        }, {\n            \"orders\": 4,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"安庆\",\n            \"line\": \"黄冈-安庆\",\n            \"goodType\": \"危险品\",\n            \"num\": 0.0\n        }, {\n            \"orders\": 5,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"南京\",\n            \"line\": \"黄冈-南京\",\n            \"goodType\": \"危险品\",\n            \"num\": 0.0\n        }, {\n            \"orders\": 1,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"上海\",\n            \"line\": \"黄冈-上海\",\n            \"goodType\": \"干散货\",\n            \"num\": 105.47\n        }, {\n            \"orders\": 2,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"芜湖\",\n            \"line\": \"黄冈-芜湖\",\n            \"goodType\": \"干散货\",\n            \"num\": 75.91\n        }, {\n            \"orders\": 3,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"无锡\",\n            \"line\": \"黄冈-无锡\",\n            \"goodType\": \"干散货\",\n            \"num\": 72.93\n        }, {\n            \"orders\": 4,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"泰州\",\n            \"line\": \"黄冈-泰州\",\n            \"goodType\": \"干散货\",\n            \"num\": 67.9\n        }, {\n            \"orders\": 5,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"扬州\",\n            \"line\": \"黄冈-扬州\",\n            \"goodType\": \"干散货\",\n            \"num\": 67.51\n        }, {\n            \"orders\": 1,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"南通\",\n            \"line\": \"黄冈-南通\",\n            \"goodType\": \"其他\",\n            \"num\": 1.73\n        }, {\n            \"orders\": 2,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"芜湖\",\n            \"line\": \"黄冈-芜湖\",\n            \"goodType\": \"其他\",\n            \"num\": 1.6\n        }, {\n            \"orders\": 3,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"马鞍山\",\n            \"line\": \"黄冈-马鞍山\",\n            \"goodType\": \"其他\",\n            \"num\": 1.31\n        }, {\n            \"orders\": 4,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"九江\",\n            \"line\": \"黄冈-九江\",\n            \"goodType\": \"其他\",\n            \"num\": 0.68\n        }, {\n            \"orders\": 5,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"武汉\",\n            \"line\": \"黄冈-武汉\",\n            \"goodType\": \"其他\",\n            \"num\": 0.62\n        }, {\n            \"orders\": 1,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"武汉\",\n            \"line\": \"黄冈-武汉\",\n            \"goodType\": \"集装箱\",\n            \"num\": 5.11\n        }, {\n            \"orders\": 2,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"九江\",\n            \"line\": \"黄冈-九江\",\n            \"goodType\": \"集装箱\",\n            \"num\": 2.31\n        }, {\n            \"orders\": 3,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"镇江\",\n            \"line\": \"黄冈-镇江\",\n            \"goodType\": \"集装箱\",\n            \"num\": 0.77\n        }, {\n            \"orders\": 4,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"上海\",\n            \"line\": \"黄冈-上海\",\n            \"goodType\": \"集装箱\",\n            \"num\": 0.68\n        }, {\n            \"orders\": 5,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"苏州\",\n            \"line\": \"黄冈-苏州\",\n            \"goodType\": \"集装箱\",\n            \"num\": 0.28\n        }],\n        \"inShipNums\": [{\n            \"orders\": 1,\n            \"portNameO\": \"黄石\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"黄石-黄冈\",\n            \"goodType\": \"危险品\",\n            \"num\": 13.03\n        }, {\n            \"orders\": 2,\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"南京-黄冈\",\n            \"goodType\": \"危险品\",\n            \"num\": 5.26\n        }, {\n            \"orders\": 3,\n            \"portNameO\": \"武汉\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"武汉-黄冈\",\n            \"goodType\": \"危险品\",\n            \"num\": 4.87\n        }, {\n            \"orders\": 4,\n            \"portNameO\": \"安庆\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"安庆-黄冈\",\n            \"goodType\": \"危险品\",\n            \"num\": 4.14\n        }, {\n            \"orders\": 5,\n            \"portNameO\": \"九江\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"九江-黄冈\",\n            \"goodType\": \"危险品\",\n            \"num\": 3.06\n        }, {\n            \"orders\": 1,\n            \"portNameO\": \"九江\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"九江-黄冈\",\n            \"goodType\": \"干散货\",\n            \"num\": 72.54\n        }, {\n            \"orders\": 2,\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"南京-黄冈\",\n            \"goodType\": \"干散货\",\n            \"num\": 58.1\n        }, {\n            \"orders\": 3,\n            \"portNameO\": \"泰州\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"泰州-黄冈\",\n            \"goodType\": \"干散货\",\n            \"num\": 25.91\n        }, {\n            \"orders\": 4,\n            \"portNameO\": \"岳阳\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"岳阳-黄冈\",\n            \"goodType\": \"干散货\",\n            \"num\": 18.55\n        }, {\n            \"orders\": 5,\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"重庆-黄冈\",\n            \"goodType\": \"干散货\",\n            \"num\": 18.5\n        }, {\n            \"orders\": 1,\n            \"portNameO\": \"岳阳\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"岳阳-黄冈\",\n            \"goodType\": \"其他\",\n            \"num\": 0.48\n        }, {\n            \"orders\": 2,\n            \"portNameO\": \"宜昌\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"宜昌-黄冈\",\n            \"goodType\": \"其他\",\n            \"num\": 0.32\n        }, {\n            \"orders\": 3,\n            \"portNameO\": \"黄石\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"黄石-黄冈\",\n            \"goodType\": \"其他\",\n            \"num\": 0.3\n        }, {\n            \"orders\": 4,\n            \"portNameO\": \"武汉\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"武汉-黄冈\",\n            \"goodType\": \"其他\",\n            \"num\": 0.26\n        }, {\n            \"orders\": 5,\n            \"portNameO\": \"九江\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"九江-黄冈\",\n            \"goodType\": \"其他\",\n            \"num\": 0.14\n        }, {\n            \"orders\": 1,\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"南京-黄冈\",\n            \"goodType\": \"集装箱\",\n            \"num\": 1.24\n        }, {\n            \"orders\": 2,\n            \"portNameO\": \"武汉\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"武汉-黄冈\",\n            \"goodType\": \"集装箱\",\n            \"num\": 0.67\n        }, {\n            \"orders\": 3,\n            \"portNameO\": \"九江\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"九江-黄冈\",\n            \"goodType\": \"集装箱\",\n            \"num\": 0.66\n        }, {\n            \"orders\": 4,\n            \"portNameO\": \"黄石\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"黄石-黄冈\",\n            \"goodType\": \"集装箱\",\n            \"num\": 0.61\n        }, {\n            \"orders\": 5,\n            \"portNameO\": \"苏州\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"苏州-黄冈\",\n            \"goodType\": \"集装箱\",\n            \"num\": 0.2\n        }],\n        \"outTotal\": [{\n            \"orders\": 1,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"上海\",\n            \"line\": \"黄冈-上海\",\n            \"goodType\": \"货运总量\",\n            \"num\": 101.61\n        }, {\n            \"orders\": 2,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"无锡\",\n            \"line\": \"黄冈-无锡\",\n            \"goodType\": \"货运总量\",\n            \"num\": 70.8\n        }, {\n            \"orders\": 3,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"泰州\",\n            \"line\": \"黄冈-泰州\",\n            \"goodType\": \"货运总量\",\n            \"num\": 60.38\n        }, {\n            \"orders\": 4,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"九江\",\n            \"line\": \"黄冈-九江\",\n            \"goodType\": \"货运总量\",\n            \"num\": 58.66\n        }, {\n            \"orders\": 5,\n            \"portNameO\": \"黄冈\",\n            \"portNameD\": \"芜湖\",\n            \"line\": \"黄冈-芜湖\",\n            \"goodType\": \"货运总量\",\n            \"num\": 57.44\n        }],\n        \"inTotal\": [{\n            \"orders\": 1,\n            \"portNameO\": \"九江\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"九江-黄冈\",\n            \"goodType\": \"货运总量\",\n            \"num\": 76.4\n        }, {\n            \"orders\": 2,\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"南京-黄冈\",\n            \"goodType\": \"货运总量\",\n            \"num\": 64.6\n        }, {\n            \"orders\": 3,\n            \"portNameO\": \"黄石\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"黄石-黄冈\",\n            \"goodType\": \"货运总量\",\n            \"num\": 30.35\n        }, {\n            \"orders\": 4,\n            \"portNameO\": \"泰州\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"泰州-黄冈\",\n            \"goodType\": \"货运总量\",\n            \"num\": 25.91\n        }, {\n            \"orders\": 5,\n            \"portNameO\": \"岳阳\",\n            \"portNameD\": \"黄冈\",\n            \"line\": \"岳阳-黄冈\",\n            \"goodType\": \"货运总量\",\n            \"num\": 19.02\n        }]\n    }\n}",
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
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "outShipNums",
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
            "name" : "orders",
            "value" : "1",
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
            "name" : "portNameO",
            "value" : "黄冈",
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
            "name" : "portNameD",
            "value" : "黄石",
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
            "name" : "line",
            "value" : "黄冈-黄石",
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
            "name" : "goodType",
            "value" : "危险品",
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
            "value" : "2.15",
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
      }, {
        "name" : "inShipNums",
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
            "name" : "orders",
            "value" : "1",
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
            "name" : "portNameO",
            "value" : "黄石",
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
            "name" : "portNameD",
            "value" : "黄冈",
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
            "name" : "line",
            "value" : "黄石-黄冈",
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
            "name" : "goodType",
            "value" : "危险品",
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
            "value" : "13.03",
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
      }, {
        "name" : "outTotal",
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
            "name" : "orders",
            "value" : "1",
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
            "name" : "portNameO",
            "value" : "黄冈",
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
            "name" : "portNameD",
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
            "name" : "line",
            "value" : "黄冈-上海",
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
            "name" : "goodType",
            "value" : "货运总量",
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
            "value" : "101.61",
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
      }, {
        "name" : "inTotal",
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
            "name" : "orders",
            "value" : "1",
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
            "name" : "portNameO",
            "value" : "九江",
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
            "name" : "portNameD",
            "value" : "黄冈",
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
            "name" : "line",
            "value" : "九江-黄冈",
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
            "name" : "goodType",
            "value" : "货运总量",
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
            "value" : "76.4",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

//查询港口名称
var portNameSql = """
  select replace(city_name,'市','') from ch.d_cb_port_imp where port_pinyin = #{portName}
"""
var port = db.gpadmin.camel().selectValue(portNameSql);
if(port == null || port == ""){
  return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: null
});
}
portName = port::string;
log.info("--------portName------------" + portName);
//分货类统计流出
var outSql = """
  select a.*
    from (select row_number() over(partition by a.port_name_o, a.cargo_type_name order by a.num desc) as orders,
                a.port_name_o,
                a.port_name_d,
                a.line,
                case when a.cargo_type_name = '干散货类' then '干散货' 
                  when a.cargo_type_name = '散装液货危险品' then '危险品' 
                  when a.cargo_type_name = '集装箱类'then '集装箱'
                  else '其他' end good_type,
                a.num
            from (select b.port_name_o,
                          b.port_name_d,
                          b.port_name_o || '-' || port_name_d line,
                          round(sum(b.port_cargo) / 10000, 2) num,
                          b.cargo_type_name
                    from ch.d_cb_port_imp a
                    left join ch.sts_report_city_port_cargo_od_by_type b
                      on a.port_cn_name = b.port_name_o
                    where ym >= to_char(current_date - interval '365 day','YYYYMM')
                      and ym < to_char(current_date,'YYYYMM')
                      and b.arrive_or_leave = 'O'
                      and b.port_name_o = #{portName}
                      and b.port_name_d in
                          (select replace(city_name, '市', '') from ch.d_cb_port_imp)
                      and b.port_name_o != b.port_name_d
                    group by b.port_name_o, b.port_name_d, b.cargo_type_name) a) a
  where a.orders <= 5
"""
/**
var outSql = """
  select orders, port_name_o, port_name_d, line, case when good_type = '干散货类' then '干散货' when good_type = '散装液货危险品' then '危险品' else '集装箱' end good_type, num
    from dm_data.STS_PORT_FLOW_DIRECTION
   where code_type = '2'
     and flow_flag = '1'
     and good_type != '其他'
     and port_name = (select port_cn_name from DICT_DATA.D_CB_PORT_IMP where port_pinyin = #{portName})
     and import_time = (select max(import_time)
                          from dm_data.STS_PORT_FLOW_DIRECTION
                         where code_type = '2'
                           and flow_flag = '1'
                           and good_type != '其他'
                           and port_name = (select port_cn_name from DICT_DATA.D_CB_PORT_IMP where port_pinyin = #{portName}))
   order by good_type, orders
""" */
//分货类统计流入
var inSql = """
  select a.*
    from (select row_number() over(partition by a.port_name_d, a.cargo_type_name order by a.num desc) as orders,
                a.port_name_o,
                a.port_name_d,
                a.line,
                case when a.cargo_type_name = '干散货类' then '干散货' 
                  when a.cargo_type_name = '散装液货危险品' then '危险品' 
                  when a.cargo_type_name = '集装箱类'then '集装箱' 
                  else '其他' end good_type,
                a.num
            from (select b.port_name_o,
                          b.port_name_d,
                          b.port_name_o || '-' || port_name_d line,
                          round(sum(b.port_cargo) / 10000, 2) num,
                          b.cargo_type_name
                    from ch.d_cb_port_imp a
                    left join ch.sts_report_city_port_cargo_od_by_type b
                      on a.port_cn_name = b.port_name_o
                    where ym >= to_char(current_date - interval '365 day','YYYYMM')
                      and ym < to_char(current_date,'YYYYMM')
                      and b.arrive_or_leave = 'D'
                      and b.port_name_d = #{portName}
                      and b.port_name_o in
                          (select replace(city_name, '市', '') from ch.d_cb_port_imp)
                      and b.port_name_o != b.port_name_d
                    group by b.port_name_d, b.port_name_o, b.cargo_type_name) a) a
  where a.orders <= 5
"""

/**
var inSql = """
  select orders, port_name_o, port_name_d, line,case when good_type = '干散货类' then '干散货' when good_type = '散装液货危险品' then '危险品' else '集装箱' end good_type, num
    from dm_data.STS_PORT_FLOW_DIRECTION
   where code_type = '2'
     and flow_flag = '0'
     and good_type != '其他'
     and port_name = (select port_cn_name from DICT_DATA.D_CB_PORT_IMP where port_pinyin = #{portName})
     and import_time = (select max(import_time)
                          from dm_data.STS_PORT_FLOW_DIRECTION
                         where code_type = '2'
                           and flow_flag = '0'
                           and good_type != '其他'
                           and port_name = (select port_cn_name from DICT_DATA.D_CB_PORT_IMP where port_pinyin = #{portName}))
   order by good_type, orders
"""
"""*/
//总货运量流出
var outTotalSql = """
  select a.*
      from (select row_number() over(partition by a.port_name_o, a.cargo_type_name order by a.num desc) as orders,
                  a.port_name_o,
                  a.port_name_d,
                  a.line,
                  a.cargo_type_name as good_type,
                  a.num
              from (select b.port_name_o,
                            b.port_name_d,
                            b.port_name_o || '-' || port_name_d line,
                            round(sum(b.port_cargo) / 10000, 2) num,
                            '货运总量' cargo_type_name
                      from ch.d_cb_port_imp a
                      left join ch.sts_report_city_port_cargo_od_by_type b
                        on a.port_cn_name = b.port_name_o
                      where ym >= to_char(current_date - interval '365 day','YYYYMM')
                        and ym < to_char(current_date,'YYYYMM')
                        and b.arrive_or_leave = 'O'
                        and b.port_name_o = #{portName}
                        and b.port_name_d in
                            (select replace(city_name, '市', '') from ch.d_cb_port_imp)
                        and b.port_name_o != b.port_name_d
                      group by b.port_name_o, b.port_name_d) a) a
    where a.orders <= 5  
"""

/**
var outTotalSql = """
  select orders, port_name_o, port_name_d, line, num
    from dm_data.STS_PORT_FLOW_DIRECTION
  where code_type = '5'
    and flow_flag = '1'
        
    and port_name = (select port_cn_name
                        from DICT_DATA.D_CB_PORT_IMP
                      where port_pinyin = #{portName})
    and import_time =
        (select max(import_time)
            from dm_data.STS_PORT_FLOW_DIRECTION
          where code_type = '5'
            and flow_flag = '1'
                
            and port_name = (select port_cn_name
                                from DICT_DATA.D_CB_PORT_IMP
                              where port_pinyin = #{portName}))
  order by orders
""" */
//总货运量流入
var inTotalSql = """
  select a.*
      from (select row_number() over(partition by a.port_name_d, a.cargo_type_name order by a.num desc) as orders,
                  a.port_name_o,
                  a.port_name_d,
                  a.line,
                  a.cargo_type_name as good_type,
                  a.num
              from (select b.port_name_o,
                            b.port_name_d,
                            b.port_name_o || '-' || port_name_d line,
                            round(sum(b.port_cargo) / 10000, 2) num,
                            '货运总量' cargo_type_name
                      from ch.d_cb_port_imp a
                      left join ch.sts_report_city_port_cargo_od_by_type b
                        on a.port_cn_name = b.port_name_o
                      where ym >= to_char(current_date - interval '365 day','YYYYMM')
                        and ym < to_char(current_date,'YYYYMM')
                        and b.arrive_or_leave = 'D'
                        and b.port_name_d = #{portName}
                        and b.port_name_o in
                            (select replace(city_name, '市', '') from ch.d_cb_port_imp)
                        and b.port_name_o != b.port_name_d
                      group by b.port_name_o, b.port_name_d) a) a
    where a.orders <= 5
"""
/** 
var inTotalSql = """
  select orders, port_name_o, port_name_d, line, num
    from dm_data.STS_PORT_FLOW_DIRECTION
  where code_type = '5'
    and flow_flag = '0'
        
    and port_name = (select port_cn_name
                        from DICT_DATA.D_CB_PORT_IMP
                      where port_pinyin = #{portName})
    and import_time =
        (select max(import_time)
            from dm_data.STS_PORT_FLOW_DIRECTION
          where code_type = '5'
            and flow_flag = '0'
                
            and port_name = (select port_cn_name
                                from DICT_DATA.D_CB_PORT_IMP
                              where port_pinyin = #{portName}))
  order by orders
"""*/


var outShipNums = async  db.gpadmin.camel().select(outSql);
var inShipNums = async db.gpadmin.camel().select(inSql);
var outTotal = async  db.gpadmin.camel().select(outTotalSql);
var inTotal = async db.gpadmin.camel().select(inTotalSql);

for(item in outShipNums.get()){
item.put("num",item.get("num")::double);
}
for(item in inShipNums.get()){
item.put("num",item.get("num")::double);
}
for(item in outTotal.get()){
item.put("num",item.get("num")::double);
item.put("goodType","货运总量");
}
for(item in inTotal.get()){
item.put("num",item.get("num")::double);
item.put("goodType","货运总量");
}

var res = {};
res.put("outShipNums",outShipNums.get());
res.put("inShipNums",inShipNums.get());
res.put("outTotal",outTotal.get());
res.put("inTotal",inTotal.get());


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});