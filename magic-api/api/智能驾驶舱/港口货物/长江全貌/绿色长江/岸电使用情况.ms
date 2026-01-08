{
  "properties" : { },
  "id" : "319713631a594ead9606405ea69af761",
  "script" : null,
  "groupId" : "d451aee9c07b41f0a9f78bf1364eae04",
  "name" : "岸电使用情况",
  "createTime" : null,
  "updateTime" : 1761532193674,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/shorePowerUsage",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "3",
    "description" : "1:分月份  2：分省市 3：自年初累计",
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
  "responseBody" : "{\n    \"result\": [{\n        \"province\": \"云南\",\n        \"electric\": 0.0,\n        \"shipNum\": 2141\n    }, {\n        \"province\": \"贵州\",\n        \"electric\": 0.0,\n        \"shipNum\": 119\n    }, {\n        \"province\": \"四川\",\n        \"electric\": 0.0,\n        \"shipNum\": 4559\n    }, {\n        \"province\": \"重庆\",\n        \"electric\": 0.17,\n        \"shipNum\": 46493\n    }, {\n        \"province\": \"湖南\",\n        \"electric\": 0.02,\n        \"shipNum\": 4942\n    }, {\n        \"province\": \"湖北\",\n        \"electric\": 0.24,\n        \"shipNum\": 97063\n    }, {\n        \"province\": \"江西\",\n        \"electric\": 0.01,\n        \"shipNum\": 40417\n    }, {\n        \"province\": \"浙江\",\n        \"electric\": 0.12,\n        \"shipNum\": 101816\n    }, {\n        \"province\": \"安徽\",\n        \"electric\": 0.03,\n        \"shipNum\": 70543\n    }, {\n        \"province\": \"江苏\",\n        \"electric\": 1.2,\n        \"shipNum\": 609700\n    }, {\n        \"province\": \"上海\",\n        \"electric\": 0.5,\n        \"shipNum\": 89680\n    }],\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\"\n}",
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
          "name" : "province",
          "value" : "云南",
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
          "name" : "electric",
          "value" : "0.0",
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
          "name" : "shipNum",
          "value" : "2141",
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
    } ]
  }
}
================================
import response;


//万度  万艘次
var ymSql = """
    select index_sts_date fill_date,
            round(YDZL_NUM,2) electric,
            round(YDCB_NUM / 10000, 2) ship_num
        from dm_data.SMART_YANGTZE_TEMP_DAY
        where index_name = '岸电使用情况_月统计'
        and  INDEX_STS_DATE >=  to_char(add_months(sysdate,-12),'yyyy-mm') and INDEX_STS_DATE!=to_char(trunc(sysdate),'yyyy-mm')
        and to_char(import_time,'yyyy-MM-dd') = (select  to_char(max(import_time),'yyyy-MM-dd')
                                from dm_data.SMART_YANGTZE_TEMP_DAY
                            where index_name = '岸电使用情况_月统计')
        order by index_sts_date asc
"""
/**
//万度  万艘
var ymSql = """
  select distinct a.target_name fill_date,round(a.target_val / 10000, 2) ELECTRIC ,round(b.target_val / 10000, 2) ship_num
      from dm_data.sts_basic_info a,dm_data.sts_basic_info b
      where  a.target_name=b.target_name and a.sts_code = '113' and b.sts_code = '114'
        and a.sts_date = (select max(sts_date)
                          from dm_data.sts_basic_info
                          where sts_code = '113')
""" */

//万度  艘次
var provSql = """
    select a.item_name_cn_short province,
        nvl(b.ELECTRIC, 0) ELECTRIC,
        nvl(b.ship_num, 0) ship_num
    from dict_data.DICT_RIVER_PROVINCE a
    left join (select prov_name,
                        round(sum(ydzl_num) / 10000, 2) ELECTRIC,
                        sum(ydcb_num) ship_num
                from dm_data.SMART_YANGTZE_TEMP_DAY
                where index_name = '岸电使用情况_分省市统计'
                   -- and index_sts_date not in (to_char(sysdate, 'yyyy-MM'), to_char(add_months(sysdate, -13), 'yyyy-MM'))
                and  INDEX_STS_DATE >=  to_char(add_months(sysdate,-12),'yyyy-mm') 
                group by prov_name) b
        on a.item_name_cn_short = b.prov_name
    where a.item_name_cn_short not in ('陕西', '河南', '山东')
    order by a.orders
"""


//自年初累计
var sinceYearSql = """
  select '用电船舶艘次' as type, YDCB_NUM as num 
    from  DM_DATA.SMART_YANGTZE_TEMP_DAY  
 where index_name = '岸电使用情况_日更新'
 union all 
 select '用电总量' as type, YDZL_NUM as num 
    from  DM_DATA.SMART_YANGTZE_TEMP_DAY  
 where index_name = '岸电使用情况_日更新'
"""
/**
//万度  万艘
var provSql = """
  select 
  REGEXP_REPLACE(a.item_name_cn ,'[省市]','') province,
        nvl(b.ELECTRIC, 0) ELECTRIC,
        nvl(b.ship_num, 0) ship_num
    from dict_data.DICT_RIVER_PROVINCE a
    left join (select province,
                      round(sum(consumption) / 10000, 2) ELECTRIC,
                      round(count(1) / 1, 2) ship_num
                from AD_CHARGING_RECORD a 
                inner join AD_DEVICE b
                  on a.ad_device_id = b.id
                where a.is_recharge = '0'
                  and a.consumption > 0
                  and a.update_time >=
                      ADD_MONTHS(TRUNC(SYSDATE, 'MONTH'), -12)
                  and a.update_time <= ADD_MONTHS(TRUNC(SYSDATE, 'MONTH'), 0)
                GROUP BY province) b
      on a.code = b.province
  order by a.orders
""" */

if(code =="2"){
  var prov = db.ods_data.camel().select(provSql);
  for(item in prov){
    item.put("electric",item.get("electric")::double);
    item.put("shipNum",item.get("shipNum")::int);
  }
  return response.json({   
        result: prov,
        resultCode: 200,
        resultMsg: "查询成功"
  });
}else if(code == "1"){
  var ym = db.ods_data.camel().select(ymSql);
  for(item in ym){
    item.put("electric",item.get("electric")::double);
    item.put("shipNum",item.get("shipNum")::double);
  }
  return response.json({   
       result: ym,
       resultCode: 200,
       resultMsg: "查询成功"
  });
}else if(code == "3"){
  var sinceYear = db.ods_data.camel().select(sinceYearSql);
  var res = {};
  for(item in sinceYear){
    if(item.get("type") == "用电船舶艘次"){
      res.put("ydcb",item.get("num")::int);
    }
    if(item.get("type") == "用电总量"){
      res.put("ydzl",item.get("num")::double);
    }
  }

  return response.json({
       resultCode: 200,
       resultMsg: "查询成功",
       result:  res
    });
}

