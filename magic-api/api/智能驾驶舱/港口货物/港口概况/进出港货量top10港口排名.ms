{
  "properties" : { },
  "id" : "1cc946fb58d34ccfb0f164c4064ab001",
  "script" : null,
  "groupId" : "31f4df5e696c4ddf8ab61b4768f1f03a",
  "name" : "进出港货量top10港口排名",
  "createTime" : null,
  "updateTime" : 1747378521852,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCarrigeNumTop10",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"portName\": \"上海\",\n        \"num\": \"21885.45\"\n    }, {\n        \"portName\": \"苏州\",\n        \"num\": \"18818.16\"\n    }, {\n        \"portName\": \"泰州\",\n        \"num\": \"14737.06\"\n    }, {\n        \"portName\": \"南通\",\n        \"num\": \"10500.09\"\n    }, {\n        \"portName\": \"南京\",\n        \"num\": \"8786.52\"\n    }, {\n        \"portName\": \"镇江\",\n        \"num\": \"8357.57\"\n    }, {\n        \"portName\": \"黄石\",\n        \"num\": \"7801.40\"\n    }, {\n        \"portName\": \"重庆\",\n        \"num\": \"7252.04\"\n    }, {\n        \"portName\": \"九江\",\n        \"num\": \"5447.27\"\n    }, {\n        \"portName\": \"芜湖\",\n        \"num\": \"4460.16\"\n    }]\n}",
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
          "name" : "portName",
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
          "name" : "num",
          "value" : "21885.45",
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




var  sql  ="""
select REGEXP_REPLACE(port_name,'[省市]','') as port_name , to_char(num/10000,'FM9999999999.00' ) as num from  (

SELECT
	city_name AS port_name,
	SUM ( port_cargo_nums ) AS num 
FROM
	ch.sts_cargo_city_port 
WHERE
	city_name IN ( ( SELECT port_cn_name || '市' FROM ch.d_cb_port_imp ) ) 
	AND ym >= ( TO_CHAR( CURRENT_DATE, 'yyyy' ) || '-01' ) 
  and cargo_type_code!='1800' and port_name !='上海'
GROUP BY
	city_name 
ORDER BY
	num DESC 
	LIMIT 10)a
"""



//var shipNums =  db.ods_data.camel().select(sql);
var shipNums =  db.gpadmin.camel().select(sql);
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});

/**
 * 原130逻辑
 * 

var sql = """
 select * from (
        select port_name,round(num/10000,2) num  from (
                select port_name,sum(num) num from (
                        select port_name_o port_name,sum(port_cargo_o) num  from dm_data.STS_PORT_REPORT_GOODS_TYPE
                                where
                                ym>= to_char(trunc(sysdate, 'yyyy'), 'yyyydd')
                                and port_name_o in ((select port_cn_name
                                                        from dict_data.d_cb_port_imp))
                                                        group by port_name_o
                        union 
                        select port_name_d port_name,sum(port_cargo_d) num  from dm_data.STS_PORT_REPORT_GOODS_TYPE
                                where 
                                ym>= to_char(trunc(sysdate, 'yyyy'), 'yyyydd')
                                and port_name_d in ((select port_cn_name
                                                        from dict_data.d_cb_port_imp))
                                                        group by port_name_d
                ) group by  port_name 
        ) a order by num desc
) where rownum<11

"""

var shipNums =  db.ods_data.camel().select(sql);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});

 */