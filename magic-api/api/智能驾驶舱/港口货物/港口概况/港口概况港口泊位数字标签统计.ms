{
  "properties" : { },
  "id" : "0a7e1493576b45d499d42cbdc6f158b3",
  "script" : null,
  "groupId" : "31f4df5e696c4ddf8ab61b4768f1f03a",
  "name" : "港口概况港口泊位数字标签统计",
  "createTime" : null,
  "updateTime" : 1749090733980,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getPortOverviewStatisticsc",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"mainPortNum\": \"27\",\n        \"portNum\": \"4768\",\n        \"dangerBerthNum\": \"102\",\n        \"produceBerthNum\": \"10590\"\n    }\n}",
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
        "name" : "mainPortNum",
        "value" : "27",
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
        "name" : "portNum",
        "value" : "4768",
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
        "name" : "dangerBerthNum",
        "value" : "102",
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
        "name" : "produceBerthNum",
        "value" : "10590",
        "description" : "",
        "required" : false,
        "dataType" : "String",
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


var sql = """
select a.main_port_num,b.port_num ,c.danger_berth_num,d.produce_berth_num from 
(select count(*)  main_port_num from dict_data.d_cb_port_imp ) a 
left join 
 (select sum(wharfnum) + 403 port_num
                  from (select count(0) as wharfnum, z.areaid2
                          from (select distinct a.WHARF_NAME,
                                                a.PROVINCE_CODE as areaid2
                                  from sub_base_data.adhc_port_new a
                                 WHERE EXISTS (select *
                                          from sub_base_data.ADHC_BERTH_NEW b
                                         WHERE a.WHARF_ID = b.WHARF_ID
                                           and b.ISDEL = '0'
                                           and b.HC_STATUS = '2'
                                           and b.BERTH_TYPE != 'B11'
                                           AND b.SH_STATUS = '9'
                                           and b.sh_code in ('1','9'))
                                   and a.ISLQ = '1'
                                   and a.ISDEL = '0') z
                         group by z.areaid2)) b on 1=1
left join (
select count(1) danger_berth_num from (select a.WHARF_ID,
       a.WHARF_NAME,
       b.BERTH_ID,
       b.BERTH_NAME,
       b.COORDINATE
  from sub_base_data.adhc_port_new a
  left join sub_base_data.ADHC_BERTH_NEW b
    on a.WHARF_ID = b.WHARF_ID
 where a.ISLQ = '1'
   and a.ISDEL = '0'
   and b.ISDEL = '0'
   and b.HC_STATUS = '2'
   and b.SH_STATUS = '9'
   and b.BERTH_TYPE = 'B11' 
   and b.sh_code in ('1','9')
 order by b.COORDINATE)
)c  on 1=1
left join (
select sum(berthjbadssnum) + 807  produce_berth_num
                  from (select count(0) as berthjbadssnum,
                               d.PROVINCE_CODE as areaid2
                          from (select a.PROVINCE_CODE
                                  from sub_base_data.adhc_port_new a
                                 inner join sub_base_data.ADHC_BERTH_NEW b
                                    on a.WHARF_ID = b.WHARF_ID
                                 where a.ISLQ = '1'
                                   and a.ISDEL = '0'
                                   and b.ISDEL = '0'
                                   and b.HC_STATUS = '2'
                                   and b.FACILITY_NUMBE != '0'
                                   and b.BERTH_TYPE != 'B11'
                                   AND b.SH_STATUS = '9'
                                   and b.sh_code in ('1','9')
                                union all
                                select a.PROVINCE_CODE
                                  from sub_base_data.adhc_port_new a
                                 inner join sub_base_data.ADHC_BERTH_NEW b
                                    on a.WHARF_ID = b.WHARF_ID
                                 where a.ISLQ = '1'
                                   and a.ISDEL = '0'
                                   and b.ISDEL = '0'
                                   and b.HC_STATUS = '2'
                                   and b.FACILITY_NUMBE = '0'
                                   and b.FLAG_BIT in ('标准设备共用',
                                                      '改造设备共用',
                                                      '简易设备',
                                                      '移动电源')
                                   and b.BERTH_TYPE != 'B11'
                                   AND b.SH_STATUS = '9'
                                   and b.sh_code in ('1','9')) d
                         group by d.PROVINCE_CODE)
)d  on 1=1         

"""

var shipNums =  db.ods_data.camel().selectOne(sql);
//shipNums.put("produceBerthNum", 10082);
//shipNums.put("portNum", 4401);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});