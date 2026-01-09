{
  "properties" : { },
  "id" : "e89918531a824d5cbd798f3b251aa996",
  "script" : null,
  "groupId" : "06840557c3324b57a151875e9c1c91e7",
  "name" : "港口动态按月统计",
  "createTime" : null,
  "updateTime" : 1713753615016,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getPortDetailMon",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "WUHAN",
    "description" : "",
    "required" : false,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"ship\": [{\n            \"time\": \"2023-03\",\n            \"shipNum\": 0.15\n        }, {\n            \"time\": \"2023-04\",\n            \"shipNum\": 0.13\n        }, {\n            \"time\": \"2023-05\",\n            \"shipNum\": 0.11\n        }, {\n            \"time\": \"2023-06\",\n            \"shipNum\": 0.1\n        }, {\n            \"time\": \"2023-07\",\n            \"shipNum\": 0.14\n        }, {\n            \"time\": \"2023-08\",\n            \"shipNum\": 0.11\n        }, {\n            \"time\": \"2023-09\",\n            \"shipNum\": 0.12\n        }, {\n            \"time\": \"2023-10\",\n            \"shipNum\": 0.11\n        }, {\n            \"time\": \"2023-11\",\n            \"shipNum\": 0.13\n        }, {\n            \"time\": \"2023-12\",\n            \"shipNum\": 0.15\n        }, {\n            \"time\": \"2024-01\",\n            \"shipNum\": 0.15\n        }, {\n            \"time\": \"2024-02\",\n            \"shipNum\": 0.08\n        }],\n        \"cargo\": [{\n            \"time\": \"2023-03\",\n            \"portCargo\": 185.76\n        }, {\n            \"time\": \"2023-04\",\n            \"portCargo\": 153.29\n        }, {\n            \"time\": \"2023-05\",\n            \"portCargo\": 133.38\n        }, {\n            \"time\": \"2023-06\",\n            \"portCargo\": 142.48\n        }, {\n            \"time\": \"2023-07\",\n            \"portCargo\": 199.17\n        }, {\n            \"time\": \"2023-08\",\n            \"portCargo\": 162.12\n        }, {\n            \"time\": \"2023-09\",\n            \"portCargo\": 171.44\n        }, {\n            \"time\": \"2023-10\",\n            \"portCargo\": 146.97\n        }, {\n            \"time\": \"2023-11\",\n            \"portCargo\": 177.04\n        }, {\n            \"time\": \"2023-12\",\n            \"portCargo\": 180.2\n        }, {\n            \"time\": \"2024-01\",\n            \"portCargo\": 171.18\n        }, {\n            \"time\": \"2024-02\",\n            \"portCargo\": 111.89\n        }],\n        \"portPasswngerNum\": [{\n            \"time\": \"2023-03\",\n            \"portPassengerNum\": 0.13\n        }, {\n            \"time\": \"2023-04\",\n            \"portPassengerNum\": 0.14\n        }, {\n            \"time\": \"2023-05\",\n            \"portPassengerNum\": 0.13\n        }, {\n            \"time\": \"2023-06\",\n            \"portPassengerNum\": 0.13\n        }, {\n            \"time\": \"2023-07\",\n            \"portPassengerNum\": 0.18\n        }, {\n            \"time\": \"2023-08\",\n            \"portPassengerNum\": 0.14\n        }, {\n            \"time\": \"2023-09\",\n            \"portPassengerNum\": 0.12\n        }, {\n            \"time\": \"2023-10\",\n            \"portPassengerNum\": 0.12\n        }, {\n            \"time\": \"2023-11\",\n            \"portPassengerNum\": 0.12\n        }, {\n            \"time\": \"2023-12\",\n            \"portPassengerNum\": 0.13\n        }, {\n            \"time\": \"2024-01\",\n            \"portPassengerNum\": 0.13\n        }, {\n            \"time\": \"2024-02\",\n            \"portPassengerNum\": 0.07\n        }],\n        \"container\": [{\n            \"time\": \"2023-03\",\n            \"portCargo\": 0.05\n        }, {\n            \"time\": \"2023-04\",\n            \"portCargo\": 0.0\n        }, {\n            \"time\": \"2023-05\",\n            \"portCargo\": 0.0\n        }, {\n            \"time\": \"2023-06\",\n            \"portCargo\": 0.0\n        }, {\n            \"time\": \"2023-07\",\n            \"portCargo\": 0.0\n        }, {\n            \"time\": \"2023-08\",\n            \"portCargo\": 0.0\n        }, {\n            \"time\": \"2023-09\",\n            \"portCargo\": 0.0\n        }, {\n            \"time\": \"2023-10\",\n            \"portCargo\": 0.0\n        }, {\n            \"time\": \"2023-11\",\n            \"portCargo\": 0.0\n        }, {\n            \"time\": \"2023-12\",\n            \"portCargo\": 0.0\n        }, {\n            \"time\": \"2024-01\",\n            \"portCargo\": 0.12\n        }, {\n            \"time\": \"2024-02\",\n            \"portCargo\": 0.0\n        }]\n    }\n}",
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
        "name" : "ship",
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
            "value" : "2023-03",
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
            "name" : "shipNum",
            "value" : "0.15",
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
      }, {
        "name" : "cargo",
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
            "value" : "2023-03",
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
            "name" : "portCargo",
            "value" : "185.76",
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
      }, {
        "name" : "portPasswngerNum",
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
            "value" : "2023-03",
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
            "name" : "portPassengerNum",
            "value" : "0.13",
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
      }, {
        "name" : "container",
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
            "value" : "2023-03",
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
            "name" : "portCargo",
            "value" : "0.05",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

var port;
var cityName;
var flag;
var portCodeList = [];
if(portName != null || portName !=""){
  var portSql = """
    select city_name,matching_flag from dict_data.d_cb_port_cockpit where port_pinyin = UPPER(#{portName})
  """
  port = db.dm_data.camel().selectOne(portSql);
  cityName = port.get("cityName");
  flag = port.get("matchingFlag");
  var portCodeListSql = """"""
  if(flag == "1"){//根据城市名称匹配port_code
    portCodeListSql = """
      select distinct port_code
        from dict_data.dim_l_t_location_info
      where basin = '干线'
        and berth_name NOT LIKE '%服务区%'
        and berth_name NOT LIKE '%锚地%'
        and berth_name NOT LIKE '%停泊区%'
        and city_name like concat(#{cityName},'%')
    """
  }else if(flag == "2"){//根据港口名称匹配port_code
    portCodeListSql = """
      select distinct port_code
        from dict_data.dim_l_t_location_info
      where basin = '干线'
        and berth_name NOT LIKE '%服务区%'
        and berth_name NOT LIKE '%锚地%'
        and berth_name NOT LIKE '%停泊区%'
        and port_name like concat(concat('%',#{cityName}),'%')
    """
  }
  portCodeList = db.dm_data.camel().select(portCodeListSql);
}
var portCodeArray = [];
if(portCodeList.size() >0){
  for(item in portCodeList){
    portCodeArray.add(item.get("portCode")::string);
  }
}
var portCodeArraySize = portCodeArray.size();

var portPassengerNumSql = """
SELECT substr(report_time,0,8) as time, trim(to_char((coalesce(sum(passenger_nums), 0) / 10000), '9999999999.99')) as port_passenger_num
  FROM ch.sts_report_port_by_day
 where substr(report_time,0,8) >=
       to_char(date_trunc('month', current_date - interval '1 year'),
               'YYYY-MM')
   and substr(report_time,0,8) < to_char(current_date, 'YYYY-MM')
    <if test="portCodeArraySize > 0" >
      and port_code in
      <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
        #{item}
      </foreach>
    </if>
 group by substr(report_time,0,8)
 order by substr(report_time,0,8)
"""



//船舶艘次
var shipNumsSql = """
SELECT substr(report_time,0,8) as time, trim(to_char((coalesce(sum(ship_nums), 0) / 10000), '9999999999.99')) as ship_num
  FROM ch.sts_report_port_by_day
 where substr(report_time,0,8) >=
       to_char(date_trunc('month', current_date - interval '1 year'),
               'YYYY-MM')
   and substr(report_time,0,8) < to_char(current_date, 'YYYY-MM')
    <if test="portCodeArraySize > 0" >
      and port_code in
      <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
        #{item}
      </foreach>
    </if>
 group by substr(report_time,0,8)
 order by substr(report_time,0,8)
"""


//货物 去除1800、1900  万吨
var portcargoSql = """
    SELECT  a.ym as time,
            trim(to_char((coalesce(sum(a.port_cargo_nums), 0) / 10000), '9999999999.99')) as port_cargo
        FROM ch.sts_cargo_city_port a
            --inner join ch.d_cb_port_imp b on a.city_name = b.city_name
        where 1=1 
            and a.cargo_type_code not in ('1800','1900')
            and a.ym >= to_char((date_trunc('month', current_date)-interval '1' year),'yyyy-MM')
            and a.ym <= to_char((date_trunc('month', current_date)-interval '1' month),'yyyy-MM')
            <if test="portCodeArraySize > 0" >
              and port_code in
              <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
                #{item}
              </foreach>
            </if>
            group by a.ym
            order by a.ym
""" 
//货物 集装箱 1800 万TEU
var portContainerSql = """
    SELECT  a.ym as time,
            trim(to_char((coalesce(sum(a.port_cargo_nums), 0) / 10000), '9999999999.99')) as port_cargo
        FROM ch.sts_cargo_city_port a
            --inner join ch.d_cb_port_imp b on a.city_name = b.city_name
        where 1=1 
            and a.cargo_type_code = '1800'
            and a.ym >= to_char((date_trunc('month', current_date)-interval '1' year),'yyyy-MM')
            and a.ym <= to_char((date_trunc('month', current_date)-interval '1' month),'yyyy-MM')
            <if test="portCodeArraySize > 0" >
              and port_code in
              <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
                #{item}
              </foreach>
            </if>
            group by a.ym
            order by a.ym
""" 

var portPasswngerNum = async db.gpadmin.camel().select(portPassengerNumSql);
var shipNums = async db.gpadmin.camel().select(shipNumsSql);
var cargoSqlData = async db.gpadmin.camel().select(portcargoSql);
var portContainer = async db.gpadmin.camel().select(portContainerSql);

for(item in portPasswngerNum.get()){
    item.put("portPassengerNum",item.get("portPassengerNum")::double)
}
for(item in shipNums.get()){
    item.put("shipNum",item.get("shipNum")::double)
}
for(item in cargoSqlData.get()){
    item.put("portCargo",item.get("portCargo")::double)
}
for(item in portContainer.get()){
    item.put("portCargo",item.get("portCargo")::double)
}


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: {
          "ship":shipNums.get(),
          "cargo":cargoSqlData.get(),
          "portPasswngerNum":portPasswngerNum.get(),
          "container": portContainer.get()
        }
});