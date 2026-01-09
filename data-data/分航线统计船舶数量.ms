{
  "properties" : { },
  "id" : "3e561354a87e4e179eb17f716fb578a0",
  "script" : null,
  "groupId" : "ee26923e30094e23bd55337d62b5f351",
  "name" : "分航线统计船舶数量",
  "createTime" : null,
  "updateTime" : 1746778761549,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getRouteShipNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"data\": [{\n            \"ranking\": 1,\n            \"departurePort\": \"江阴\",\n            \"destinationPort\": \"泰州\",\n            \"line\": \"江阴-泰州\",\n            \"shipNums\": 15871\n        }, {\n            \"ranking\": 2,\n            \"departurePort\": \"泰州\",\n            \"destinationPort\": \"江阴\",\n            \"line\": \"泰州-江阴\",\n            \"shipNums\": 15485\n        }, {\n            \"ranking\": 3,\n            \"departurePort\": \"南通\",\n            \"destinationPort\": \"苏州\",\n            \"line\": \"南通-苏州\",\n            \"shipNums\": 11961\n        }, {\n            \"ranking\": 4,\n            \"departurePort\": \"宜昌\",\n            \"destinationPort\": \"重庆\",\n            \"line\": \"宜昌-重庆\",\n            \"shipNums\": 11329\n        }, {\n            \"ranking\": 5,\n            \"departurePort\": \"苏州\",\n            \"destinationPort\": \"南通\",\n            \"line\": \"苏州-南通\",\n            \"shipNums\": 10920\n        }],\n        \"tjTime\": 2024\n    }\n}",
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
      "dataType" : "Array",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "data",
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
            "name" : "ranking",
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
            "name" : "departurePort",
            "value" : "江阴",
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
            "name" : "destinationPort",
            "value" : "泰州",
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
            "value" : "江阴-泰州",
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
            "name" : "shipNums",
            "value" : "15871",
            "description" : "",
            "required" : false,
            "dataType" : "Integer",
            "type" : null,
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      }, {
        "name" : "tjTime",
        "value" : "2024",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : "",
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
import log;
import response;

/*
//船舶数量
var shipNumsSql = """
    select rownum ranking,
        substr(line, 1, instr(line, '-') - 1) departure_port,
        substr(line, instr(line, '-') + 1) destination_port,
        line,
        report_num ship_nums
    from (select line, sum(t.report_num) report_num
            from (select case
                            when city_name_o > city_name_d then
                            city_name_d || '-' || city_name_o
                            else
                            city_name_o || '-' || city_name_d
                        end line,
                        report_num
                    from sts_ship_report_line 
                    where basin_o = '干线'
                    and basin_d = '干线'
                    and ym >= to_char(add_months(sysdate,-12),'yyyymm')
                    and city_name_o != city_name_d
                    and city_name_o in (select port_cn_name from dict_data.d_cb_port_imp where port_cn_name!='上海')
                    and city_name_d in (select port_cn_name from dict_data.d_cb_port_imp where port_cn_name!='上海')) t
            group by line
            order by sum(t.report_num) desc)
    where rownum <= 5
"""*/
var shipNumsSql = """
    select rownum ranking,
        substr(line, 1, instr(line, '-') - 1) departure_port,
        substr(line, instr(line, '-') + 1) destination_port,
        line,
        report_num ship_nums
    from (select line, sum(t.report_num) report_num
            from (select city_name_o || '-' || city_name_d as line,
                        report_num
                    from (select ym,
                                 basin_o,
                                 basin_d,
                                 replace(city_name_o, '无锡', '江阴') city_name_o,
                                 replace(city_name_d, '无锡', '江阴') city_name_d,
                                 report_num
                            from dm_data.sts_ship_report_line) 
                    where basin_o = '干线'
                    and basin_d = '干线'
                    and ym >= to_char(add_months(sysdate,-12),'yyyymm')
                    and city_name_o != city_name_d
                    and city_name_o in (select port_cn_name from dict_data.d_cb_port_imp ) --where port_cn_name!='上海'
                    and city_name_d in (select port_cn_name from dict_data.d_cb_port_imp )) t --where port_cn_name!='上海'
            group by line
            order by sum(t.report_num) desc)
    where rownum <= 5
"""
//统计时间
var tjTimeSql = """
    select to_char(sysdate,'yyyy')-1 from dual
"""
var shipNums = async db.dm_data.camel().select(shipNumsSql);
var tjTime = async db.dm_data.camel().selectInt(tjTimeSql);
for(item in shipNums.get()){
    item.put("ranking",item.get("ranking")::int);
    item.put("shipNums",item.get("shipNums")::int);
}
var data = {};
data.put("data",shipNums.get());
data.put("tjTime", tjTime.get());

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
        
});


/** 
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        //result: data
        result: {"data":[{
        "ranking": 1,
        "departurePort": "江阴",
        "destinationPort": "泰州",
        "line": "江阴-泰州",
        "shipNums": 15871
    }, {
        "ranking": 2,
        "departurePort": "泰州",
        "destinationPort": "江阴",
        "line": "泰州-江阴",
        "shipNums": 15485
    }, {
        "ranking": 3,
        "departurePort": "上海",
        "destinationPort": "苏州",
        "line": "上海-苏州",
        "shipNums": 13710
    }, {
        "ranking": 4,
        "departurePort": "苏州",
        "destinationPort": "上海",
        "line": "苏州-上海",
        "shipNums": 12590
    }, {
        "ranking": 5,
        "departurePort": "南通",
        "destinationPort": "苏州",
        "line": "南通-苏州",
        "shipNums": 11961
    }],
    "tjTime":2023}
}); */