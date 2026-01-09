{
  "properties" : { },
  "id" : "11d6a1bb582c4b7fb83eeac355a7316d",
  "script" : null,
  "groupId" : "c41bce8c9d11400293c67cb04153e13a",
  "name" : "货物流向详情流入流出",
  "createTime" : null,
  "updateTime" : 1762241690963,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCargoFlowDirectionDetailInAndOut",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "SHUIFU",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"outTotal\": [{\n            \"orders\": \"1\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"宜昌\",\n            \"line\": \"重庆-宜昌\",\n            \"goodType\": \"货运总量\",\n            \"num\": 654.4\n        }, {\n            \"orders\": \"2\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"荆州\",\n            \"line\": \"重庆-荆州\",\n            \"goodType\": \"货运总量\",\n            \"num\": 86.94\n        }, {\n            \"orders\": \"3\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"武汉\",\n            \"line\": \"重庆-武汉\",\n            \"goodType\": \"货运总量\",\n            \"num\": 48.24\n        }, {\n            \"orders\": \"4\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"泸州\",\n            \"line\": \"重庆-泸州\",\n            \"goodType\": \"货运总量\",\n            \"num\": 41.59\n        }, {\n            \"orders\": \"5\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"岳阳\",\n            \"line\": \"重庆-岳阳\",\n            \"goodType\": \"货运总量\",\n            \"num\": 37.51\n        }],\n        \"inTotal\": [{\n            \"orders\": \"1\",\n            \"portNameO\": \"宜昌\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"宜昌-重庆\",\n            \"goodType\": \"货运总量\",\n            \"num\": 599.51\n        }, {\n            \"orders\": \"2\",\n            \"portNameO\": \"宜宾\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"宜宾-重庆\",\n            \"goodType\": \"货运总量\",\n            \"num\": 203.69\n        }, {\n            \"orders\": \"3\",\n            \"portNameO\": \"水富\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"水富-重庆\",\n            \"goodType\": \"货运总量\",\n            \"num\": 103.48\n        }, {\n            \"orders\": \"4\",\n            \"portNameO\": \"荆州\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"荆州-重庆\",\n            \"goodType\": \"货运总量\",\n            \"num\": 63.27\n        }, {\n            \"orders\": \"5\",\n            \"portNameO\": \"泸州\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"泸州-重庆\",\n            \"goodType\": \"货运总量\",\n            \"num\": 62.49\n        }],\n        \"outGsh\": [{\n            \"orders\": \"1\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"宜昌\",\n            \"line\": \"重庆-宜昌\",\n            \"goodType\": \"干散货\",\n            \"num\": 458.39\n        }, {\n            \"orders\": \"2\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"荆州\",\n            \"line\": \"重庆-荆州\",\n            \"goodType\": \"干散货\",\n            \"num\": 81.38\n        }, {\n            \"orders\": \"3\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"泸州\",\n            \"line\": \"重庆-泸州\",\n            \"goodType\": \"干散货\",\n            \"num\": 36.24\n        }, {\n            \"orders\": \"4\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"岳阳\",\n            \"line\": \"重庆-岳阳\",\n            \"goodType\": \"干散货\",\n            \"num\": 34.65\n        }, {\n            \"orders\": \"5\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"泰州\",\n            \"line\": \"重庆-泰州\",\n            \"goodType\": \"干散货\",\n            \"num\": 34.19\n        }],\n        \"inGsh\": [{\n            \"orders\": \"1\",\n            \"portNameO\": \"宜昌\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"宜昌-重庆\",\n            \"goodType\": \"干散货\",\n            \"num\": 468.68\n        }, {\n            \"orders\": \"2\",\n            \"portNameO\": \"宜宾\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"宜宾-重庆\",\n            \"goodType\": \"干散货\",\n            \"num\": 185.95\n        }, {\n            \"orders\": \"3\",\n            \"portNameO\": \"水富\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"水富-重庆\",\n            \"goodType\": \"干散货\",\n            \"num\": 101.86\n        }, {\n            \"orders\": \"4\",\n            \"portNameO\": \"荆州\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"荆州-重庆\",\n            \"goodType\": \"干散货\",\n            \"num\": 58.17\n        }, {\n            \"orders\": \"5\",\n            \"portNameO\": \"泸州\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"泸州-重庆\",\n            \"goodType\": \"干散货\",\n            \"num\": 38.62\n        }],\n        \"outWxp\": [{\n            \"orders\": \"1\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"宜昌\",\n            \"line\": \"重庆-宜昌\",\n            \"goodType\": \"危险品\",\n            \"num\": 32.06\n        }, {\n            \"orders\": \"2\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"南京\",\n            \"line\": \"重庆-南京\",\n            \"goodType\": \"危险品\",\n            \"num\": 4.39\n        }, {\n            \"orders\": \"3\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"武汉\",\n            \"line\": \"重庆-武汉\",\n            \"goodType\": \"危险品\",\n            \"num\": 4.31\n        }, {\n            \"orders\": \"4\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"荆州\",\n            \"line\": \"重庆-荆州\",\n            \"goodType\": \"危险品\",\n            \"num\": 3.82\n        }, {\n            \"orders\": \"5\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"江阴\",\n            \"line\": \"重庆-江阴\",\n            \"goodType\": \"危险品\",\n            \"num\": 3.6\n        }],\n        \"inWxp\": [{\n            \"orders\": \"1\",\n            \"portNameO\": \"宜昌\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"宜昌-重庆\",\n            \"goodType\": \"危险品\",\n            \"num\": 15.68\n        }, {\n            \"orders\": \"2\",\n            \"portNameO\": \"宜宾\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"宜宾-重庆\",\n            \"goodType\": \"危险品\",\n            \"num\": 12.61\n        }, {\n            \"orders\": \"3\",\n            \"portNameO\": \"南京\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"南京-重庆\",\n            \"goodType\": \"危险品\",\n            \"num\": 7.78\n        }, {\n            \"orders\": \"4\",\n            \"portNameO\": \"武汉\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"武汉-重庆\",\n            \"goodType\": \"危险品\",\n            \"num\": 6.77\n        }, {\n            \"orders\": \"5\",\n            \"portNameO\": \"九江\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"九江-重庆\",\n            \"goodType\": \"危险品\",\n            \"num\": 5.67\n        }],\n        \"outJzx\": [{\n            \"orders\": \"1\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"宜昌\",\n            \"line\": \"重庆-宜昌\",\n            \"goodType\": \"集装箱\",\n            \"num\": 27.72\n        }, {\n            \"orders\": \"2\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"苏州\",\n            \"line\": \"重庆-苏州\",\n            \"goodType\": \"集装箱\",\n            \"num\": 16.06\n        }, {\n            \"orders\": \"3\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"泸州\",\n            \"line\": \"重庆-泸州\",\n            \"goodType\": \"集装箱\",\n            \"num\": 3.24\n        }, {\n            \"orders\": \"4\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"南京\",\n            \"line\": \"重庆-南京\",\n            \"goodType\": \"集装箱\",\n            \"num\": 2.85\n        }, {\n            \"orders\": \"5\",\n            \"portNameO\": \"重庆\",\n            \"portNameD\": \"武汉\",\n            \"line\": \"重庆-武汉\",\n            \"goodType\": \"集装箱\",\n            \"num\": 1.94\n        }],\n        \"inJzx\": [{\n            \"orders\": \"1\",\n            \"portNameO\": \"泸州\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"泸州-重庆\",\n            \"goodType\": \"集装箱\",\n            \"num\": 21.44\n        }, {\n            \"orders\": \"2\",\n            \"portNameO\": \"宜宾\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"宜宾-重庆\",\n            \"goodType\": \"集装箱\",\n            \"num\": 4.2\n        }, {\n            \"orders\": \"3\",\n            \"portNameO\": \"宜昌\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"宜昌-重庆\",\n            \"goodType\": \"集装箱\",\n            \"num\": 3.71\n        }, {\n            \"orders\": \"4\",\n            \"portNameO\": \"武汉\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"武汉-重庆\",\n            \"goodType\": \"集装箱\",\n            \"num\": 3.19\n        }, {\n            \"orders\": \"5\",\n            \"portNameO\": \"苏州\",\n            \"portNameD\": \"重庆\",\n            \"line\": \"苏州-重庆\",\n            \"goodType\": \"集装箱\",\n            \"num\": 2.24\n        }]\n    }\n}",
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
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "portNameO",
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
            "name" : "portNameD",
            "value" : "宜昌",
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
            "value" : "重庆-宜昌",
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
            "value" : "654.4",
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
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "portNameO",
            "value" : "宜昌",
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
            "name" : "line",
            "value" : "宜昌-重庆",
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
            "value" : "599.51",
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
        "name" : "outGsh",
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
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "portNameO",
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
            "name" : "portNameD",
            "value" : "宜昌",
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
            "value" : "重庆-宜昌",
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
            "value" : "干散货",
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
            "value" : "458.39",
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
        "name" : "inGsh",
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
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "portNameO",
            "value" : "宜昌",
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
            "name" : "line",
            "value" : "宜昌-重庆",
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
            "value" : "干散货",
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
            "value" : "468.68",
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
        "name" : "outWxp",
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
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "portNameO",
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
            "name" : "portNameD",
            "value" : "宜昌",
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
            "value" : "重庆-宜昌",
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
            "value" : "32.06",
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
        "name" : "inWxp",
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
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "portNameO",
            "value" : "宜昌",
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
            "name" : "line",
            "value" : "宜昌-重庆",
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
            "value" : "15.68",
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
        "name" : "outJzx",
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
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "portNameO",
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
            "name" : "portNameD",
            "value" : "宜昌",
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
            "value" : "重庆-宜昌",
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
            "value" : "集装箱",
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
            "value" : "27.72",
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
        "name" : "inJzx",
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
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "portNameO",
            "value" : "泸州",
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
            "name" : "line",
            "value" : "泸州-重庆",
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
            "value" : "集装箱",
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
            "value" : "21.44",
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
import http;
/**
 * 港口飞线接口
 * 调整时需要与  货物流量流向详情  接口，同步调整
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
                    from (	SELECT CASE WHEN PORT_CN_NAME = '江阴' then '无锡' when PORT_CN_NAME = '水富' then '昭通'   else PORT_CN_NAME end PORT_CN_NAME  from ch.d_cb_port_imp) a
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
                    from (	SELECT CASE WHEN PORT_CN_NAME = '江阴' then '无锡' when PORT_CN_NAME = '水富' then '昭通'   else PORT_CN_NAME end PORT_CN_NAME  from ch.d_cb_port_imp) a
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
                      from (	SELECT CASE WHEN PORT_CN_NAME = '江阴' then '无锡' when PORT_CN_NAME = '水富' then '昭通'   else PORT_CN_NAME end PORT_CN_NAME  from ch.d_cb_port_imp) a
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
                      from (	SELECT CASE WHEN PORT_CN_NAME = '江阴' then '无锡' when PORT_CN_NAME = '水富' then '昭通'   else PORT_CN_NAME end PORT_CN_NAME  from ch.d_cb_port_imp) a
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
  item.put("orders", item.get("orders")::string);
  item.put("num",item.get("num")::double);
}
for(item in inShipNums.get()){
  item.put("orders", item.get("orders")::string);
  item.put("num",item.get("num")::double);
}
for(item in outTotal.get()){
  item.put("orders", item.get("orders")::string);
  item.put("num",item.get("num")::double);
  item.put("goodType","货运总量");
}
for(item in inTotal.get()){
  item.put("orders", item.get("orders")::string);
  item.put("num",item.get("num")::double);
  item.put("goodType","货运总量");
}


//将干散货、危险品、集装箱 分成流入流出
var gshOut=[];
var gshIn=[];

var wxpOut=[];
var wxpIn=[];

var jzxOut=[];
var jzxIn=[];

 for(item in inShipNums.get()){
   item.put("orders", item.get("orders")::string);
   if(item.get("goodType")=="干散货"){
     gshIn.add(item);
   }
   if(item.get("goodType")=="危险品"){
     wxpIn.add(item);
   }
   if(item.get("goodType")=="集装箱"){
     jzxIn.add(item);
   }

}

 for(item in outShipNums.get()){
   //item.put("orders", item.get("orders")::string);
   if(item.get("goodType")=="干散货"){
     gshOut.add(item);
   }
   if(item.get("goodType")=="危险品"){
     wxpOut.add(item);
   }
   if(item.get("goodType")=="集装箱"){
     jzxOut.add(item);
   }

}

var res = {};
//res.put("outShipNums",outShipNums.get());
//res.put("inShipNums",inShipNums.get());

//如果名称是无锡，则手动处理成江阴 如果是昭通，则改成水富
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
for(item in gshOut){
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
for(item in gshIn){
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
for(item in wxpOut){
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
for(item in wxpIn){
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
for(item in jzxOut){
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
for(item in jzxIn){
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

res.put("outTotal",outTotal.get());
res.put("inTotal",inTotal.get());

res.put("outGsh",gshOut);
res.put("inGsh",gshIn);

res.put("outWxp",wxpOut);
res.put("inWxp",wxpIn);

res.put("outJzx",jzxOut);
res.put("inJzx",jzxIn);

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});
*/

var url = "http://172.17.192.99/throgh-analysis/api/bm/getCangoFlowDirectionDetailInAnd0ut";

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
