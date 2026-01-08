{
  "properties" : { },
  "id" : "861c378fa2774b81b66d390e35dac6be",
  "script" : null,
  "groupId" : "39ce103c23184972a79a5498216c3525",
  "name" : "获取设标数航标数",
  "createTime" : null,
  "updateTime" : 1703674691257,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getNavigationMarkNum",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"success\": \"查询成功\",\n    \"data\": {\n        \"numberSb\": 7458,\n        \"numberHb\": 5389,\n        \"numberSw\": [{\n            \"swzId\": \"重庆\",\n            \"dqsw\": \"1.34\"\n        }, {\n            \"swzId\": \"南京\",\n            \"dqsw\": \"1.77\"\n        }, {\n            \"swzId\": \"汉口\",\n            \"dqsw\": \"2.34\"\n        }, {\n            \"swzId\": \"茅坪\",\n            \"dqsw\": \"167.62\"\n        }],\n        \"numberLl\": [{\n            \"swzId\": \"大通\",\n            \"ckll\": \"13000\"\n        }, {\n            \"swzId\": \"葛洲坝出库\",\n            \"ckll\": \"13100\"\n        }, {\n            \"swzId\": \"三峡入库\",\n            \"ckll\": \"10600\"\n        }, {\n            \"swzId\": \"向家坝\",\n            \"ckll\": \"1300\"\n        }]\n    }\n}",
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
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "numberSb",
        "value" : "7458",
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
        "name" : "numberHb",
        "value" : "5389",
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
        "name" : "numberSw",
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
            "name" : "swzId",
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
            "name" : "dqsw",
            "value" : "1.34",
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
        "name" : "numberLl",
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
            "name" : "swzId",
            "value" : "大通",
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
            "name" : "ckll",
            "value" : "13000",
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


//获取设标数
var number_sb = """
    select count(1) number_sb from ods_hs_share.hb_hbjcxx where scbj = '0' and hb_sbzt in ('2','4') 
"""

//获取航标数
var number_hb = """
    select count(1) number_hb from ods_hs_share.hb_hbjcxx where scbj = '0' and hb_zdybq  like '%13%' and hb_sbzt in ('2','4') 
"""

//获取水位
var number_sw = """
    select a.sw_name,a.dqsw,b.days from (
    select case when swz_id='CQ_ff808081693411820169371570d30002' then '重庆'
when swz_id='YC_ff8080816dfb873a016e11503c060004' then '茅坪'
  when swz_id='WH_de122f5f54c64fd0a976ddcfa0dad1bc' then '汉口'
    when swz_id='NJ_402881144fb122f5014fb12fddfa0010' then '南京' else '' end  sw_name,dqsw,mm from （
select swz_id,dqsw, ROW_NUMBER() over(partition by swz_id order by gxsj desc) mm from sz_rgszscsw where swz_id in ('CQ_ff808081693411820169371570d30002',
'YC_ff8080816dfb873a016e11503c060004','WH_de122f5f54c64fd0a976ddcfa0dad1bc','NJ_402881144fb122f5014fb12fddfa0010')
） where mm <6 ) a,(select to_char(sysdate - level+1 , 'yyyy-mm-dd') days,rownum rm
                  from dual
                connect by level <= 5) b where b.rm = a.mm
"""

//获取流量
var number_ll = """
    select a.ll_name,a.ckll,b.days from (
    select case when swz_id='YB_ff80808172920f390172c1599f18156f' then '向家坝'
when swz_id='WH_ad340471269c4e15b62bad4af674f7c0' then '三峡入库'
  when swz_id='WH_2dfa089538834e1c85fa5cf5dc5f827e' then '葛洲坝出库'
    when swz_id='NJ_321321321321321321312' then '大通' else '' end  ll_name ,ckll,mm from （
select swz_id,ckll, ROW_NUMBER() over(partition by swz_id order by gxsj desc) mm from sz_lljl where swz_id in ('YB_ff80808172920f390172c1599f18156f',
'WH_ad340471269c4e15b62bad4af674f7c0','WH_2dfa089538834e1c85fa5cf5dc5f827e','NJ_321321321321321321312')
） where mm<6 ) a,(select to_char(sysdate - level+1 , 'yyyy-mm-dd') days,rownum rm
                  from dual
                connect by level <= 5) b where b.rm = a.mm
"""

//获取设标数
var sbNum = db.ods_data.camel().selectOne(number_sb);
//获取航标数
var nbNum = db.ods_data.camel().selectOne(number_hb);
//获取水位
var swNum = db.ods_data.camel().select(number_sw);
//获取流量
var llNum = db.ods_data.camel().select(number_ll);
var res = {};
res.put("numberSb",sbNum.get("numberSb")::int);
res.put("numberHb",nbNum.get("numberHb")::int);
res.put("numberSw",swNum);
res.put("numberLl",llNum);

return res;

