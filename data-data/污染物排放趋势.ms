{
  "properties" : { },
  "id" : "06151e4d9c22431e9d9740ab4435798c",
  "script" : null,
  "groupId" : "d451aee9c07b41f0a9f78bf1364eae04",
  "name" : "污染物排放趋势",
  "createTime" : null,
  "updateTime" : 1735282212728,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/pollutByTime",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "1",
    "description" : "1:分月份  2：分省份  3：自年初累计",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"shwsNum\": 1134.59,\n        \"cbljNum\": 17431.43\n    }\n}",
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
        "name" : "shwsNum",
        "value" : "1134.59",
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
        "name" : "cbljNum",
        "value" : "17431.43",
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
  }
}
================================
import response;


/**
 * 130原有逻辑
 * 
//固体 吨，液体  千方
var ymSql = """
select ym times, round(nvl(gtnum,0)/1000,2) gt_num, round(nvl(ytnum,0)/1000,2) yt_num
  from dm_data.ZT_FULL_VIEW_ORG
 where index_type_code = 7
 order by ym
"""
//分省市
var provGtSql = """
  select 
  REGEXP_REPLACE(a.item_name_cn,'[省市]','')
   province, round(nvl(b.gtnum, 0)/1000,2) gt_num
    from dict_data.DICT_RIVER_PROVINCE a
    left join (select index_name, gtnum
                from dm_data.ZT_FULL_VIEW_ORG
                where index_type_code = 8
                  and ym = '固态垃圾') b
      on a.item_name_cn = b.index_name
  order by a.orders asc
"""
var provYtSql = """
  select REGEXP_REPLACE(a.item_name_cn,'[省市]','') province, round(nvl(b.ytnum, 0)/1000,2) yt_num
    from dict_data.DICT_RIVER_PROVINCE a
    left join (select index_name, ytnum
                from dm_data.ZT_FULL_VIEW_ORG
                where index_type_code = 8
                  and ym = '液态垃圾') b
      on a.item_name_cn = b.index_name
  order by a.orders asc
"""
if(code == 2){
  var provGt = async db.dm_data.camel().select(provGtSql);
  var provYt = async db.dm_data.camel().select(provYtSql);

  for(item in provGt.get()){
    item.put("gtNum",item.get("gtNum")::double);
    for(item2 in provYt.get()){
      if(item.get("province") == item2.get("province")){
        item.put("ytNum",item2.get("ytNum")::double)
      }
    }
  }
  return response.json({   
        result: provGt.get(),
        resultCode: 200,
        resultMsg: "查询成功"
  });
}
var ym =  db.dm_data.camel().select(ymSql);
for(item in ym){
  item.put("gtNum",item.get("gtNum")::double);
  item.put("ytNum",item.get("ytNum")::double);
}

return response.json({
       resultCode: 200,
       resultMsg: "查询成功",
       result: ym
});
*/
  


/////////////////////////////////////////
//以下为智慧长江同步逻辑--------------临时



//船舶垃圾  吨  近一年

var cbljYmSql = """
    select INDEX_STS_DATE times, nvl(GT_NUM, 0)  gt_num
        from DM_DATA.SMART_YANGTZE_TEMP_DAY
        where index_name = '污染物接收趋势_月统计'
       and  INDEX_STS_DATE >=  to_char(add_months(sysdate,-12),'yyyy-mm')
       -- and index_type_code = 10
        order by index_name, INDEX_STS_DATE
"""
//生活污水  千方  近一年
var shwsYmSql = """
    select INDEX_STS_DATE times,  nvl(yt_num, 0) yt_num
        from DM_DATA.SMART_YANGTZE_TEMP_DAY
        where index_name = '污染物接收趋势_月统计'
       and  INDEX_STS_DATE >=  to_char(add_months(sysdate,-12),'yyyy-mm')
        order by index_name, INDEX_STS_DATE

"""


//1船舶垃圾  吨   分省市
var cbljProvSql = """
select REGEXP_REPLACE(a.item_name_cn, '[省市]', '') province,
          nvl(num,0) cblj_num
  from dict_data.DICT_RIVER_PROVINCE a
  left join (select sum(gt_num) num ,prov_name
               from dm_data.SMART_YANGTZE_TEMP_DAY
              where  index_name='污染物接收趋势_分省市统计'
               and  INDEX_STS_DATE >=  to_char(add_months(sysdate,-12),'yyyy-mm')
              group by prov_name) b
    on a.item_name_cn_short = b.prov_name
    where a.item_name_cn_short not in ('山东','河南','陕西')
 order by a.orders asc
"""
//2生活污水  千方   分省市
var shwsProvSql = """
select REGEXP_REPLACE(a.item_name_cn, '[省市]', '') province,
          nvl(num,0) gt_num
  from dict_data.DICT_RIVER_PROVINCE a
  left join (select sum(yt_num) num ,prov_name
               from dm_data.SMART_YANGTZE_TEMP_DAY
              where  index_name='污染物接收趋势_分省市统计'
               and  INDEX_STS_DATE >=  to_char(add_months(sysdate,-12),'yyyy-mm')
              group by prov_name) b
    on a.item_name_cn_short = b.prov_name
    where a.item_name_cn_short not in ('山东','河南','陕西')
 order by a.orders asc
"""
//3含油污水  千方   分省市
var hywsProvSql = """
select REGEXP_REPLACE(a.item_name_cn, '[省市]', '') province,
        round(nvl(num, 0) / 1000, 2) gt_num
  from dict_data.DICT_RIVER_PROVINCE a
  left join ( 
 select sum(GARBAGE_NUM) num ,prov_name
               from dm_data.SMART_YANGTZE_TEMP_DAY
              where  index_name='污染物接收趋势_分省市统计1'
               and  INDEX_STS_DATE >=  to_char(add_months(sysdate,-12),'yyyy-mm')
              and GARBAGE_TYPE='含油污水'
              group by prov_name) b
    on a.item_name_cn_short = b.prov_name
    where a.item_name_cn_short not in ('山东','河南','陕西')
 order by a.orders asc
"""
//4残油废油  千方   分省市
var cyfyProvSql = """
select REGEXP_REPLACE(a.item_name_cn, '[省市]', '') province,
          round(nvl(num, 0) / 1000, 2)  gt_num
  from dict_data.DICT_RIVER_PROVINCE a
  left join ( select sum(GARBAGE_NUM) num ,prov_name
               from dm_data.SMART_YANGTZE_TEMP_DAY
              where  index_name='污染物接收趋势_分省市统计1'
               and  INDEX_STS_DATE >=  to_char(add_months(sysdate,-12),'yyyy-mm')
              and GARBAGE_TYPE='残油废油'
              group by prov_name) b
    on a.item_name_cn_short = b.prov_name
    where a.item_name_cn_short not in ('山东','河南','陕西')
 order by a.orders asc
"""
//5有害污水  千方   分省市
var yhwsProvSql = """
select REGEXP_REPLACE(a.item_name_cn, '[省市]', '') province,
          round(nvl(num, 0) / 1000, 2) gt_num
  from dict_data.DICT_RIVER_PROVINCE a
  left join (select sum(GARBAGE_NUM) num ,prov_name
               from dm_data.SMART_YANGTZE_TEMP_DAY
              where  index_name='污染物接收趋势_分省市统计1'
               and  INDEX_STS_DATE >=  to_char(add_months(sysdate,-12),'yyyy-mm')
              and GARBAGE_TYPE='洗舱水'
              group by prov_name) b
    on a.item_name_cn_short = b.prov_name
    where a.item_name_cn_short not in ('山东','河南','陕西')
 order by a.orders asc
"""


//自年初累计
var sinceYearSql = """
  select '生活污水' as type, YT_NUM as num 
    from  DM_DATA.SMART_YANGTZE_TEMP_DAY  
 where index_name = '污染物接收趋势_日更新'
 union all 
 select '船舶垃圾' as type, GT_NUM as num 
    from  DM_DATA.SMART_YANGTZE_TEMP_DAY  
 where index_name = '污染物接收趋势_日更新'
"""


if(code == 2){
  var cbljProv = async db.dm_data.camel().select(cbljProvSql);
  var shwsProv = async db.dm_data.camel().select(shwsProvSql);
  var hywsProv = async db.dm_data.camel().select(hywsProvSql);
  var cyfyProv = async db.dm_data.camel().select(cyfyProvSql);
  var yhwsProv = async db.dm_data.camel().select(yhwsProvSql);

  for(item in cbljProv.get()){
    item.put("gtNum",item.get("cbljNum")::double);
    //去掉原有cbljNum项用gtNum代替
    item.remove("cbljNum");
    for(item2 in shwsProv.get()){
      if(item.get("province") == item2.get("province")){
        item.put("ytNum",item2.get("gtNum")::double)
      }
    }
    /*for(item2 in hywsProv.get()){
      if(item.get("province") == item2.get("province")){
        item.put("hywsNum",item2.get("gtNum")::double)
      }
    }
    for(item2 in cyfyProv.get()){
      if(item.get("province") == item2.get("province")){
        item.put("cyfyNum",item2.get("gtNum")::double)
      }
    }
    for(item2 in yhwsProv.get()){
      if(item.get("province") == item2.get("province")){
        item.put("yhwsNum",item2.get("gtNum")::double)
      }
    }*/
  }
  return response.json({
       resultCode: 200,
       resultMsg: "查询成功",
       result: cbljProv.get()
});

}
if(code == 1){
    var cbljYm = async db.dm_data.camel().select(cbljYmSql);
    var shwsYm = async db.dm_data.camel().select(shwsYmSql);
    for(item in cbljYm.get()){
        item.put("gtNum",item.get("gtNum")::double);
        for(item2 in shwsYm.get()){
            if(item.get("times") == item2.get("times")){
                item.put("ytNum",item2.get("ytNum")::double)
            }
        }
    }
      return response.json({
       resultCode: 200,
       resultMsg: "查询成功",
       result:  cbljYm.get()
});
    
}

if(code == 3){
  var sinceYear = db.ods_data.camel().select(sinceYearSql);
  var res = {};
  for(item in sinceYear){
    if(item.get("type") == "船舶垃圾"){
      res.put("cbljNum",item.get("num")::double);
    }
    if(item.get("type") == "生活污水"){
      res.put("shwsNum",item.get("num")::double);
    }
  }

  return response.json({
       resultCode: 200,
       resultMsg: "查询成功",
       result:  res
    });

}
