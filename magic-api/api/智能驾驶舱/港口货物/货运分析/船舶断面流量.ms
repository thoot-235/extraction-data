{
  "properties" : { },
  "id" : "6c6be9a0c9554363989645cd15ab21ea",
  "script" : null,
  "groupId" : "c41bce8c9d11400293c67cb04153e13a",
  "name" : "船舶断面流量",
  "createTime" : null,
  "updateTime" : 1751357043602,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getKeyareaShip",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"result\": [{\n        \"keyareaName\": \"宜宾仙源大桥\",\n        \"shipNum\": 15,\n        \"shipNum2\": 19\n    }, {\n        \"keyareaName\": \"合江公路大桥\",\n        \"shipNum\": 21,\n        \"shipNum2\": 23\n    }, {\n        \"keyareaName\": \"江津大桥\",\n        \"shipNum\": 28,\n        \"shipNum2\": 42\n    }, {\n        \"keyareaName\": \"朝天门大桥\",\n        \"shipNum\": 127,\n        \"shipNum2\": 133\n    }, {\n        \"keyareaName\": \"万州二桥\",\n        \"shipNum\": 153,\n        \"shipNum2\": 166\n    }, {\n        \"keyareaName\": \"奉节大桥\",\n        \"shipNum\": 175,\n        \"shipNum2\": 191\n    }, {\n        \"keyareaName\": \"巫山大桥\",\n        \"shipNum\": 212,\n        \"shipNum2\": 177\n    }, {\n        \"keyareaName\": \"三峡大坝\",\n        \"shipNum\": 158,\n        \"shipNum2\": 162\n    }, {\n        \"keyareaName\": \"夷陵大桥\",\n        \"shipNum\": 200,\n        \"shipNum2\": 155\n    }, {\n        \"keyareaName\": \"枝城大桥\",\n        \"shipNum\": 192,\n        \"shipNum2\": 206\n    }, {\n        \"keyareaName\": \"荆州大桥\",\n        \"shipNum\": 182,\n        \"shipNum2\": 199\n    }, {\n        \"keyareaName\": \"洞庭湖口下\",\n        \"shipNum\": 419,\n        \"shipNum2\": 344\n    }, {\n        \"keyareaName\": \"武汉大桥\",\n        \"shipNum\": 485,\n        \"shipNum2\": 482\n    }, {\n        \"keyareaName\": \"阳逻大桥\",\n        \"shipNum\": 651,\n        \"shipNum2\": 569\n    }, {\n        \"keyareaName\": \"黄石大桥\",\n        \"shipNum\": 594,\n        \"shipNum2\": 481\n    }, {\n        \"keyareaName\": \"九江大桥\",\n        \"shipNum\": 600,\n        \"shipNum2\": 555\n    }, {\n        \"keyareaName\": \"鄱阳湖口下\",\n        \"shipNum\": 765,\n        \"shipNum2\": 748\n    }, {\n        \"keyareaName\": \"安庆大桥\",\n        \"shipNum\": 1284,\n        \"shipNum2\": 1202\n    }, {\n        \"keyareaName\": \"铜陵大桥\",\n        \"shipNum\": 1399,\n        \"shipNum2\": 1290\n    }, {\n        \"keyareaName\": \"芜湖大桥\",\n        \"shipNum\": 1209,\n        \"shipNum2\": 1179\n    }, {\n        \"keyareaName\": \"马鞍山大桥\",\n        \"shipNum\": 1195,\n        \"shipNum2\": 1148\n    }, {\n        \"keyareaName\": \"南京大桥\",\n        \"shipNum\": 1180,\n        \"shipNum2\": 1156\n    }, {\n        \"keyareaName\": \"镇江润扬大桥\",\n        \"shipNum\": 1586,\n        \"shipNum2\": 1582\n    }, {\n        \"keyareaName\": \"江阴大桥\",\n        \"shipNum\": 1625,\n        \"shipNum2\": 1637\n    }, {\n        \"keyareaName\": \"苏通大桥\",\n        \"shipNum\": 2524,\n        \"shipNum2\": 2553\n    }, {\n        \"keyareaName\": \"太仓浏河口\",\n        \"shipNum\": 2747,\n        \"shipNum2\": 2568\n    }],\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\"\n}",
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
          "name" : "keyareaName",
          "value" : "宜宾仙源大桥",
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
          "name" : "shipNum",
          "value" : "15",
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
          "name" : "shipNum2",
          "value" : "19",
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
    } ]
  }
}
================================
import response;
/** 
var sql = """
        SELECT b.ORDERS, b.keyarea_name, nvl(A.ship_num,0) ship_num, A.statistic_date
                FROM DICT_DATA.DICT_KEYAREAS b
                left join (SELECT COUNT(DISTINCT mmsi) ship_num,
                                A.keyarea_name,
                                A.statistic_date
                        FROM SUB_BIZ_DATA.KEYAREA_STATISTIC_SHIP_INFO A
                        WHERE A.statistic_date = to_char(sysdate - 1, 'yyyy-MM-dd')
                                AND KEYAREA_ID != '5002'
                        GROUP BY A.keyarea_name, A.statistic_date) A
                ON A.keyarea_name = b.keyarea_name
                ORDER BY B.ORDERS ASC
"""*/
/**
//艘次(上个周的平均值)
var sql = """
select target_name keyarea_name,target_val ship_num
                from dm_data.sts_basic_info
                where sts_code = '116'
                and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '116')  
"""
//艘次(本个周的平均值)
var sql2 = """
select target_name keyarea_name,target_val ship_num
                from dm_data.sts_basic_info
                where sts_code = '117'
                and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '117')  
"""
 */

//昨日
var yesSql = """
        select case when a.keyarea_name='南京长江大桥' then '南京大桥' 
        else a.keyarea_name end as keyarea_name, nvl(b.ship_num, 0) ship_num
                FROM dict_data.DICT_KEYAREAS a
                left join (select keyarea_name, sum(ship_num) as ship_num
                        from ods_hs_share.tr_jt_keyarea_statistic
                        where statistic_date = to_char(trunc(sysdate)-1,'yyyy-MM-dd')
                        group by keyarea_name) b
                on a.keyarea_name = b.keyarea_name
                ORDER BY a.orders ASC
"""
//前日
var beYesSql = """
        select case when a.keyarea_name='南京长江大桥' then '南京大桥' 
        else a.keyarea_name end as keyarea_name, nvl(b.ship_num, 0) ship_num
                FROM dict_data.DICT_KEYAREAS a
                left join (select keyarea_name, sum(ship_num) as ship_num
                        from ods_hs_share.tr_jt_keyarea_statistic
                        where statistic_date = to_char(trunc(sysdate)-2,'yyyy-MM-dd')
                        group by keyarea_name) b
                on a.keyarea_name = b.keyarea_name
                ORDER BY a.orders ASC
"""

/**
var ship = db.biz_data.camel().select(sql);
var ship2 = db.biz_data.camel().select(sql2);
for(item in ship){
  item.put("shipNum",item.get("shipNum")::int);
  for(item2 in ship2){
          if(item.get("keyareaName") == item2.get("keyareaName")){
                  item.put("shipNum2",item2.get("shipNum")::int);
          }
  }
} */
var yes = db.biz_data.camel().select(yesSql);
var beYes = db.biz_data.camel().select(beYesSql);
for(item in yes){
  item.put("shipNum",item.get("shipNum")::int);
  for(item2 in beYes){
          if(item.get("keyareaName") == item2.get("keyareaName")){
                  item.put("shipNum2",item2.get("shipNum")::int);
          }
  }
}
return response.json({   
       result: yes,
     /*  result:[{
        "keyareaName": "宜宾仙源大桥",
        "shipNum": 15,
        "shipNum2": 19
    }, {
        "keyareaName": "合江公路大桥",
        "shipNum": 21,
        "shipNum2": 23
    }, {
        "keyareaName": "江津大桥",
        "shipNum": 28,
        "shipNum2": 42
    }, {
        "keyareaName": "朝天门大桥",
        "shipNum": 127,
        "shipNum2": 133
    }, {
        "keyareaName": "万州二桥",
        "shipNum": 153,
        "shipNum2": 166
    }, {
        "keyareaName": "奉节大桥",
        "shipNum": 175,
        "shipNum2": 191
    }, {
        "keyareaName": "巫山大桥",
        "shipNum": 212,
        "shipNum2": 177
    }, {
        "keyareaName": "三峡大坝",
        "shipNum": 158,
        "shipNum2": 162
    }, {
        "keyareaName": "夷陵大桥",
        "shipNum": 200,
        "shipNum2": 155
    }, {
        "keyareaName": "枝城大桥",
        "shipNum": 192,
        "shipNum2": 206
    }, {
        "keyareaName": "荆州大桥",
        "shipNum": 182,
        "shipNum2": 199
    }, {
        "keyareaName": "洞庭湖口下",
        "shipNum": 419,
        "shipNum2": 344
    }, {
        "keyareaName": "武汉大桥",
        "shipNum": 485,
        "shipNum2": 482
    }, {
        "keyareaName": "阳逻大桥",
        "shipNum": 651,
        "shipNum2": 569
    }, {
        "keyareaName": "黄石大桥",
        "shipNum": 594,
        "shipNum2": 481
    }, {
        "keyareaName": "九江大桥",
        "shipNum": 600,
        "shipNum2": 555
    }, {
        "keyareaName": "鄱阳湖口下",
        "shipNum": 765,
        "shipNum2": 748
    }, {
        "keyareaName": "安庆大桥",
        "shipNum": 1284,
        "shipNum2": 1202
    }, {
        "keyareaName": "铜陵大桥",
        "shipNum": 1399,
        "shipNum2": 1290
    }, {
        "keyareaName": "芜湖大桥",
        "shipNum": 1209,
        "shipNum2": 1179
    }, {
        "keyareaName": "马鞍山大桥",
        "shipNum": 1195,
        "shipNum2": 1148
    }, {
        "keyareaName": "南京大桥",
        "shipNum": 1180,
        "shipNum2": 1156
    }, {
        "keyareaName": "镇江润扬大桥",
        "shipNum": 1586,
        "shipNum2": 1582
    }, {
        "keyareaName": "江阴大桥",
        "shipNum": 1625,
        "shipNum2": 1637
    }, {
        "keyareaName": "苏通大桥",
        "shipNum": 2524,
        "shipNum2": 2553
    }, {
        "keyareaName": "太仓浏河口",
        "shipNum": 2747,
        "shipNum2": 2568
    }],*/
       resultCode: 200,
       resultMsg: "查询成功"
});
