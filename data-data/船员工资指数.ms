{
  "properties" : { },
  "id" : "d8aa98f76fcb4342a70a1f12568ee23b",
  "script" : null,
  "groupId" : "c3e4a1defbdf48388a2db810ef04f628",
  "name" : "船员工资指数",
  "createTime" : null,
  "updateTime" : 1762498805494,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getSalaryIndex",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"time\": \"23-Q2\",\n        \"salary0\": 1731.99,\n        \"salary1\": 1584.52,\n        \"salary2\": 1559.14,\n        \"salary3\": 1683.07,\n        \"salary4\": 1915.94,\n        \"salary5\": 2036.29,\n        \"salary6\": 1744.73,\n        \"salary7\": 1675.41,\n        \"salary8\": 1950.88,\n        \"salary9\": 2010.6,\n        \"salary10\": 2091.98\n    }, {\n        \"time\": \"23-Q3\",\n        \"salary0\": 1749.19,\n        \"salary1\": 1567.34,\n        \"salary2\": 1585.17,\n        \"salary3\": 1743.43,\n        \"salary4\": 1966.13,\n        \"salary5\": 1989.77,\n        \"salary6\": 1725.09,\n        \"salary7\": 1727.47,\n        \"salary8\": 1993.22,\n        \"salary9\": 2112.58,\n        \"salary10\": 2045.23\n    }, {\n        \"time\": \"23-Q4\",\n        \"salary0\": 1742.63,\n        \"salary1\": 1566.04,\n        \"salary2\": 1586.9,\n        \"salary3\": 1724.72,\n        \"salary4\": 1904.93,\n        \"salary5\": 1997.05,\n        \"salary6\": 1712.65,\n        \"salary7\": 1729.0,\n        \"salary8\": 1970.94,\n        \"salary9\": 2104.2,\n        \"salary10\": 2059.96\n    }, {\n        \"time\": \"24-Q1\",\n        \"salary0\": 1767.15,\n        \"salary1\": 1594.65,\n        \"salary2\": 1608.39,\n        \"salary3\": 1743.14,\n        \"salary4\": 1910.49,\n        \"salary5\": 2019.77,\n        \"salary6\": 1756.96,\n        \"salary7\": 1746.95,\n        \"salary8\": 1984.52,\n        \"salary9\": 2120.13,\n        \"salary10\": 2086.24\n    }, {\n        \"time\": \"24-Q2\",\n        \"salary0\": 1725.5,\n        \"salary1\": 1560.04,\n        \"salary2\": 1568.5,\n        \"salary3\": 1675.46,\n        \"salary4\": 1869.65,\n        \"salary5\": 2012.32,\n        \"salary6\": 1728.2,\n        \"salary7\": 1710.46,\n        \"salary8\": 1906.82,\n        \"salary9\": 2011.13,\n        \"salary10\": 2079.9\n    }, {\n        \"time\": \"24-Q3\",\n        \"salary0\": 1714.74,\n        \"salary1\": 1561.26,\n        \"salary2\": 1550.03,\n        \"salary3\": 1633.84,\n        \"salary4\": 1821.66,\n        \"salary5\": 1992.3,\n        \"salary6\": 1738.18,\n        \"salary7\": 1717.12,\n        \"salary8\": 1931.27,\n        \"salary9\": 1978.84,\n        \"salary10\": 2046.41\n    }, {\n        \"time\": \"24-Q4\",\n        \"salary0\": 1725.59,\n        \"salary1\": 1567.39,\n        \"salary2\": 1572.9,\n        \"salary3\": 1647.93,\n        \"salary4\": 1835.53,\n        \"salary5\": 2006.37,\n        \"salary6\": 1759.81,\n        \"salary7\": 1723.04,\n        \"salary8\": 1917.83,\n        \"salary9\": 1967.43,\n        \"salary10\": 2065.47\n    }, {\n        \"time\": \"25-Q1\",\n        \"salary0\": 1714.09,\n        \"salary1\": 1551.34,\n        \"salary2\": 1560.74,\n        \"salary3\": 1641.95,\n        \"salary4\": 1834.33,\n        \"salary5\": 1989.67,\n        \"salary6\": 1743.83,\n        \"salary7\": 1705.74,\n        \"salary8\": 1917.82,\n        \"salary9\": 1974.22,\n        \"salary10\": 2044.91\n    }]\n}",
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
          "name" : "time",
          "value" : "23-Q2",
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
          "name" : "salary0",
          "value" : "1731.99",
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
          "name" : "salary1",
          "value" : "1584.52",
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
          "name" : "salary2",
          "value" : "1559.14",
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
          "name" : "salary3",
          "value" : "1683.07",
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
          "name" : "salary4",
          "value" : "1915.94",
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
          "name" : "salary5",
          "value" : "2036.29",
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
          "name" : "salary6",
          "value" : "1744.73",
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
          "name" : "salary7",
          "value" : "1675.41",
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
          "name" : "salary8",
          "value" : "1950.88",
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
          "name" : "salary9",
          "value" : "2010.6",
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
          "name" : "salary10",
          "value" : "2091.98",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

//工资指数  最新8期的数据
var salarySql = """
select a.* from (
   select  substr(time,3,7) time,
        value0  salary0,
        value1  salary1,
        value2  salary2,
        value3  salary3,
        value4  salary4,
        value5  salary5,
        value6  salary6,
        value7  salary7,
        value8  salary8,
        value9  salary9,
        value10 salary10
   from STS_DATA_APPLIED_INDEX
  where type = '1' and value0 !=0 --and time >= '2021-Q1'
  order by time desc) a
where rownum <=8 order by a.time 
"""

var salary = db.dm_data.camel().select(salarySql);
for (item in salary) {
    item.put("salary0", item.get("salary0")::double);
    item.put("salary1", item.get("salary1")::double);
    item.put("salary2", item.get("salary2")::double);
    item.put("salary3", item.get("salary3")::double);
    item.put("salary4", item.get("salary4")::double);
    item.put("salary5", item.get("salary5")::double);
    item.put("salary6", item.get("salary6")::double);
    item.put("salary7", item.get("salary7")::double);
    item.put("salary8", item.get("salary8")::double);
    item.put("salary9", item.get("salary9")::double);
    item.put("salary10", item.get("salary10")::double);
}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: salary
});
