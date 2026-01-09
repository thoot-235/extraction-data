{
  "properties" : { },
  "id" : "973f0045df9444e2976f847cb249f8d9",
  "script" : null,
  "groupId" : "c41bce8c9d11400293c67cb04153e13a",
  "name" : "货物流量流向详情",
  "createTime" : null,
  "updateTime" : 1762241995463,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCargoFlowDirectionDetail",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "TAIZHOU",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"outTotal\": [{\n            \"flagName\": \"out\",\n            \"orders\": 1,\n            \"goodType\": \"货运总量\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"上海\",\n            \"line\": \"南京-上海\",\n            \"num\": 590.74\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 2,\n            \"goodType\": \"货运总量\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"武汉\",\n            \"line\": \"南京-武汉\",\n            \"num\": 583.58\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 3,\n            \"goodType\": \"货运总量\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"马鞍山\",\n            \"line\": \"南京-马鞍山\",\n            \"num\": 524.13\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 4,\n            \"goodType\": \"货运总量\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"岳阳\",\n            \"line\": \"南京-岳阳\",\n            \"num\": 520.45\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 5,\n            \"goodType\": \"货运总量\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"安庆\",\n            \"line\": \"南京-安庆\",\n            \"num\": 329.5\n        }],\n        \"inTotal\": [{\n            \"flagName\": \"in\",\n            \"orders\": 1,\n            \"goodType\": \"货运总量\",\n            \"portNameO\": \"九江\",\n            \"portNameD\": \"南京\",\n            \"line\": \"九江-南京\",\n            \"num\": 797.75\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 2,\n            \"goodType\": \"货运总量\",\n            \"portNameO\": \"黄石\",\n            \"portNameD\": \"南京\",\n            \"line\": \"黄石-南京\",\n            \"num\": 712.73\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 3,\n            \"goodType\": \"货运总量\",\n            \"portNameO\": \"江阴\",\n            \"portNameD\": \"南京\",\n            \"line\": \"江阴-南京\",\n            \"num\": 394.77\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 4,\n            \"goodType\": \"货运总量\",\n            \"portNameO\": \"芜湖\",\n            \"portNameD\": \"南京\",\n            \"line\": \"芜湖-南京\",\n            \"num\": 390.25\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 5,\n            \"goodType\": \"货运总量\",\n            \"portNameO\": \"苏州\",\n            \"portNameD\": \"南京\",\n            \"line\": \"苏州-南京\",\n            \"num\": 381.47\n        }],\n        \"outShipNums\": [{\n            \"flagName\": \"out\",\n            \"orders\": 1,\n            \"goodType\": \"危险品\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"岳阳\",\n            \"line\": \"南京-岳阳\",\n            \"num\": 442.34\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 2,\n            \"goodType\": \"危险品\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"安庆\",\n            \"line\": \"南京-安庆\",\n            \"num\": 152.75\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 3,\n            \"goodType\": \"危险品\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"上海\",\n            \"line\": \"南京-上海\",\n            \"num\": 127.22\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 4,\n            \"goodType\": \"危险品\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"武汉\",\n            \"line\": \"南京-武汉\",\n            \"num\": 120.85\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 5,\n            \"goodType\": \"危险品\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"九江\",\n            \"line\": \"南京-九江\",\n            \"num\": 79.45\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 1,\n            \"goodType\": \"集装箱\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"上海\",\n            \"line\": \"南京-上海\",\n            \"num\": 251.91\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 2,\n            \"goodType\": \"集装箱\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"苏州\",\n            \"line\": \"南京-苏州\",\n            \"num\": 76.49\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 3,\n            \"goodType\": \"集装箱\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"九江\",\n            \"line\": \"南京-九江\",\n            \"num\": 53.43\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 4,\n            \"goodType\": \"集装箱\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"南通\",\n            \"line\": \"南京-南通\",\n            \"num\": 34.09\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 5,\n            \"goodType\": \"集装箱\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"铜陵\",\n            \"line\": \"南京-铜陵\",\n            \"num\": 33.32\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 1,\n            \"goodType\": \"干散货\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"马鞍山\",\n            \"line\": \"南京-马鞍山\",\n            \"num\": 495.15\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 2,\n            \"goodType\": \"干散货\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"武汉\",\n            \"line\": \"南京-武汉\",\n            \"num\": 427.12\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 3,\n            \"goodType\": \"干散货\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"铜陵\",\n            \"line\": \"南京-铜陵\",\n            \"num\": 242.63\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 4,\n            \"goodType\": \"干散货\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"上海\",\n            \"line\": \"南京-上海\",\n            \"num\": 209.01\n        }, {\n            \"flagName\": \"out\",\n            \"orders\": 5,\n            \"goodType\": \"干散货\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"安庆\",\n            \"line\": \"南京-安庆\",\n            \"num\": 166.75\n        }],\n        \"inShipNums\": [{\n            \"flagName\": \"in\",\n            \"orders\": 1,\n            \"goodType\": \"危险品\",\n            \"portNameO\": \"九江\",\n            \"portNameD\": \"南京\",\n            \"line\": \"九江-南京\",\n            \"num\": 68.47\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 2,\n            \"goodType\": \"危险品\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"南京\",\n            \"line\": \"重庆-南京\",\n            \"num\": 46.78\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 3,\n            \"goodType\": \"危险品\",\n            \"portNameO\": \"铜陵\",\n            \"portNameD\": \"南京\",\n            \"line\": \"铜陵-南京\",\n            \"num\": 44.95\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 4,\n            \"goodType\": \"危险品\",\n            \"portNameO\": \"苏州\",\n            \"portNameD\": \"南京\",\n            \"line\": \"苏州-南京\",\n            \"num\": 40.98\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 5,\n            \"goodType\": \"危险品\",\n            \"portNameO\": \"江阴\",\n            \"portNameD\": \"南京\",\n            \"line\": \"江阴-南京\",\n            \"num\": 37.54\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 1,\n            \"goodType\": \"集装箱\",\n            \"portNameO\": \"上海\",\n            \"portNameD\": \"南京\",\n            \"line\": \"上海-南京\",\n            \"num\": 153.69\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 2,\n            \"goodType\": \"集装箱\",\n            \"portNameO\": \"苏州\",\n            \"portNameD\": \"南京\",\n            \"line\": \"苏州-南京\",\n            \"num\": 56.45\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 3,\n            \"goodType\": \"集装箱\",\n            \"portNameO\": \"扬州\",\n            \"portNameD\": \"南京\",\n            \"line\": \"扬州-南京\",\n            \"num\": 45.87\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 4,\n            \"goodType\": \"集装箱\",\n            \"portNameO\": \"镇江\",\n            \"portNameD\": \"南京\",\n            \"line\": \"镇江-南京\",\n            \"num\": 40.92\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 5,\n            \"goodType\": \"集装箱\",\n            \"portNameO\": \"九江\",\n            \"portNameD\": \"南京\",\n            \"line\": \"九江-南京\",\n            \"num\": 32.22\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 1,\n            \"goodType\": \"干散货\",\n            \"portNameO\": \"黄石\",\n            \"portNameD\": \"南京\",\n            \"line\": \"黄石-南京\",\n            \"num\": 704.04\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 2,\n            \"goodType\": \"干散货\",\n            \"portNameO\": \"九江\",\n            \"portNameD\": \"南京\",\n            \"line\": \"九江-南京\",\n            \"num\": 696.21\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 3,\n            \"goodType\": \"干散货\",\n            \"portNameO\": \"芜湖\",\n            \"portNameD\": \"南京\",\n            \"line\": \"芜湖-南京\",\n            \"num\": 347.44\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 4,\n            \"goodType\": \"干散货\",\n            \"portNameO\": \"江阴\",\n            \"portNameD\": \"南京\",\n            \"line\": \"江阴-南京\",\n            \"num\": 331.41\n        }, {\n            \"flagName\": \"in\",\n            \"orders\": 5,\n            \"goodType\": \"干散货\",\n            \"portNameO\": \"苏州\",\n            \"portNameD\": \"南京\",\n            \"line\": \"苏州-南京\",\n            \"num\": 280.42\n        }]\n    }\n}",
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
      "name" : "result",
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
        "name" : "outTotal",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
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
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ {
            "name" : "flagName",
            "value" : "out",
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
            "name" : "orders",
            "value" : "1",
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
            "name" : "goodType",
            "value" : "货运总量",
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
            "name" : "portNameO",
            "value" : "南京",
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
            "name" : "portNameD",
            "value" : "上海",
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
            "name" : "line",
            "value" : "南京-上海",
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
            "name" : "num",
            "value" : "590.74",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : null,
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
        "type" : null,
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
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ {
            "name" : "flagName",
            "value" : "in",
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
            "name" : "orders",
            "value" : "1",
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
            "name" : "goodType",
            "value" : "货运总量",
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
            "name" : "portNameO",
            "value" : "九江",
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
            "name" : "portNameD",
            "value" : "南京",
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
            "name" : "line",
            "value" : "九江-南京",
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
            "name" : "num",
            "value" : "797.75",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : null,
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      }, {
        "name" : "outShipNums",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
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
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ {
            "name" : "flagName",
            "value" : "out",
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
            "name" : "orders",
            "value" : "1",
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
            "name" : "goodType",
            "value" : "危险品",
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
            "name" : "portNameO",
            "value" : "南京",
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
            "name" : "portNameD",
            "value" : "岳阳",
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
            "name" : "line",
            "value" : "南京-岳阳",
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
            "name" : "num",
            "value" : "442.34",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : null,
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
        "type" : null,
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
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ {
            "name" : "flagName",
            "value" : "in",
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
            "name" : "orders",
            "value" : "1",
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
            "name" : "goodType",
            "value" : "危险品",
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
            "name" : "portNameO",
            "value" : "九江",
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
            "name" : "portNameD",
            "value" : "南京",
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
            "name" : "line",
            "value" : "九江-南京",
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
            "name" : "num",
            "value" : "68.47",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : null,
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
import http;
/**
 * 港口飞线的面板接口
 * 调整时需要与  货物流向详情流入流出  接口，同步调整
 */

//查询港口名称
/*
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
                    from (SELECT CASE WHEN PORT_CN_NAME = '江阴' then '无锡' when PORT_CN_NAME = '水富' then '昭通'   else PORT_CN_NAME end PORT_CN_NAME  from ch.d_cb_port_imp) a
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
                    from (SELECT CASE WHEN PORT_CN_NAME = '江阴' then '无锡' when PORT_CN_NAME = '水富' then '昭通'   else PORT_CN_NAME end PORT_CN_NAME  from ch.d_cb_port_imp) a
                    left join ch.sts_report_city_port_cargo_od_by_type b
                      on a.port_cn_name = b.port_name_o
                    where ym >= to_char(current_date - interval '365 day','YYYYMM')
                      and ym < to_char(current_date,'YYYYMM')
                      and b.arrive_or_leave = 'O'
                      and b.port_name_d = #{portName}
                      and b.port_name_o in
                          (select replace(city_name, '市', '') from ch.d_cb_port_imp)
                      and b.port_name_o != b.port_name_d
                    group by b.port_name_d, b.port_name_o, b.cargo_type_name) a) a
  where a.orders <= 5
"""

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
                      from (SELECT CASE WHEN PORT_CN_NAME = '江阴' then '无锡' when PORT_CN_NAME = '水富' then '昭通'   else PORT_CN_NAME end PORT_CN_NAME  from ch.d_cb_port_imp) a
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
                      from (SELECT CASE WHEN PORT_CN_NAME = '江阴' then '无锡' when PORT_CN_NAME = '水富' then '昭通'   else PORT_CN_NAME end PORT_CN_NAME  from ch.d_cb_port_imp) a
                      left join ch.sts_report_city_port_cargo_od_by_type b
                        on a.port_cn_name = b.port_name_o
                      where ym >= to_char(current_date - interval '365 day','YYYYMM')
                        and ym < to_char(current_date,'YYYYMM')
                        and b.arrive_or_leave = 'O'
                        and b.port_name_d = #{portName}
                        and b.port_name_o in
                            (select replace(city_name, '市', '') from ch.d_cb_port_imp)
                        and b.port_name_o != b.port_name_d
                      group by b.port_name_o, b.port_name_d) a) a
    where a.orders <= 5
"""


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


//如果名称是无锡，则手动处理成江阴 如果是昭通，则改成水富
for(item in outShipNums.get()){
  if(item.get("portNameO")=="无锡"){
    item.put("portNameO","江阴")
  }
   if(item.get("portNameD")=="无锡"){
    item.put("portNameD","江阴")
  }

  if(item.get("line").indexOf("无锡")!=-1){
     item.put("line",item.get("line").replace("无锡","江阴"))
  }
  if(item.get("portNameO")=="昭通"){
    item.put("portNameO","水富")
  }
   if(item.get("portNameD")=="昭通"){
    item.put("portNameD","水富")
  }

  if(item.get("line").indexOf("昭通")!=-1){
     item.put("line",item.get("line").replace("昭通","水富"))
  }
}
for(item in inShipNums.get()){
  if(item.get("portNameO")=="无锡"){
    item.put("portNameO","江阴")
  }
   if(item.get("portNameD")=="无锡"){
    item.put("portNameD","江阴")
  }
   if(item.get("line").indexOf("无锡")!=-1){
     item.put("line",item.get("line").replace("无锡","江阴"))
  }
  if(item.get("portNameO")=="昭通"){
    item.put("portNameO","水富")
  }
   if(item.get("portNameD")=="昭通"){
    item.put("portNameD","水富")
  }

  if(item.get("line").indexOf("昭通")!=-1){
     item.put("line",item.get("line").replace("昭通","水富"))
  }
}
for(item in outTotal.get()){
  if(item.get("portNameO")=="无锡"){
    item.put("portNameO","江阴")
  }
   if(item.get("portNameD")=="无锡"){
    item.put("portNameD","江阴")
  }
   if(item.get("line").indexOf("无锡")!=-1){
     item.put("line",item.get("line").replace("无锡","江阴"))
  }
  if(item.get("portNameO")=="昭通"){
    item.put("portNameO","水富")
  }
   if(item.get("portNameD")=="昭通"){
    item.put("portNameD","水富")
  }

  if(item.get("line").indexOf("昭通")!=-1){
     item.put("line",item.get("line").replace("昭通","水富"))
  }
}
for(item in inTotal.get()){
  if(item.get("portNameO")=="无锡"){
    item.put("portNameO","江阴")
  }
   if(item.get("portNameD")=="无锡"){
    item.put("portNameD","江阴")
  }
   if(item.get("line").indexOf("无锡")!=-1){
     item.put("line",item.get("line").replace("无锡","江阴"))
  }
  if(item.get("portNameO")=="昭通"){
    item.put("portNameO","水富")
  }
   if(item.get("portNameD")=="昭通"){
    item.put("portNameD","水富")
  }

  if(item.get("line").indexOf("昭通")!=-1){
     item.put("line",item.get("line").replace("昭通","水富"))
  }
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
*/

var url = "http://172.17.192.99/throgh-analysis/api/bm/getCargoFlowDirectionDetail";

var res = http.connect(url).param("portName",portName).get();
if(res.getBody() == null){
    return [];
}

var list = res.getBody().get("result");
var resultCode = res.getBody().get("resultCode");
var resultMsg = res.getBody().get("resultMsg");
return response.json({
        resultCode: resultCode,
        resultMsg: resultMsg,
        result: list
});