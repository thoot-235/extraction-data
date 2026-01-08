{
  "properties" : { },
  "id" : "ab45f383321b4884960921d306b627bf",
  "script" : null,
  "groupId" : "f5998905462549148b80f5b1041a25ae",
  "name" : "干散货指数",
  "createTime" : null,
  "updateTime" : 1725328564150,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getDryBulkIndex",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"indexProp\": \"2022-12\",\n        \"zhIndexValue\": 701.1,\n        \"mtIndexValue\": 694.3,\n        \"fjskIndexValue\": 920.0,\n        \"jskIndexValue\": 494.1,\n        \"kjclIndexValue\": 1412.5\n    }, {\n        \"indexProp\": \"2023-01\",\n        \"zhIndexValue\": 710.6,\n        \"mtIndexValue\": 751.1,\n        \"fjskIndexValue\": 813.3,\n        \"jskIndexValue\": 532.5,\n        \"kjclIndexValue\": 1285.9\n    }, {\n        \"indexProp\": \"2023-02\",\n        \"zhIndexValue\": 699.2,\n        \"mtIndexValue\": 757.5,\n        \"fjskIndexValue\": 792.4,\n        \"jskIndexValue\": 514.8,\n        \"kjclIndexValue\": 1253.9\n    }, {\n        \"indexProp\": \"2023-03\",\n        \"zhIndexValue\": 691.6,\n        \"mtIndexValue\": 704.5,\n        \"fjskIndexValue\": 840.9,\n        \"jskIndexValue\": 487.9,\n        \"kjclIndexValue\": 1376.0\n    }, {\n        \"indexProp\": \"2023-04\",\n        \"zhIndexValue\": 688.5,\n        \"mtIndexValue\": 684.4,\n        \"fjskIndexValue\": 855.5,\n        \"jskIndexValue\": 477.7,\n        \"kjclIndexValue\": 1422.5\n    }, {\n        \"indexProp\": \"2023-05\",\n        \"zhIndexValue\": 657.4,\n        \"mtIndexValue\": 653.8,\n        \"fjskIndexValue\": 849.7,\n        \"jskIndexValue\": 464.7,\n        \"kjclIndexValue\": 1317.6\n    }, {\n        \"indexProp\": \"2023-06\",\n        \"zhIndexValue\": 628.3,\n        \"mtIndexValue\": 637.2,\n        \"fjskIndexValue\": 794.2,\n        \"jskIndexValue\": 446.0,\n        \"kjclIndexValue\": 1235.3\n    }, {\n        \"indexProp\": \"2023-07\",\n        \"zhIndexValue\": 644.8,\n        \"mtIndexValue\": 687.0,\n        \"fjskIndexValue\": 830.2,\n        \"jskIndexValue\": 475.7,\n        \"kjclIndexValue\": 1134.9\n    }, {\n        \"indexProp\": \"2023-08\",\n        \"zhIndexValue\": 630.9,\n        \"mtIndexValue\": 659.0,\n        \"fjskIndexValue\": 822.6,\n        \"jskIndexValue\": 476.9,\n        \"kjclIndexValue\": 1101.4\n    }, {\n        \"indexProp\": \"2023-09\",\n        \"zhIndexValue\": 630.5,\n        \"mtIndexValue\": 630.3,\n        \"fjskIndexValue\": 845.3,\n        \"jskIndexValue\": 458.3,\n        \"kjclIndexValue\": 1205.1\n    }, {\n        \"indexProp\": \"2023-10\",\n        \"zhIndexValue\": 621.1,\n        \"mtIndexValue\": 615.2,\n        \"fjskIndexValue\": 881.1,\n        \"jskIndexValue\": 424.1,\n        \"kjclIndexValue\": 1256.2\n    }, {\n        \"indexProp\": \"2023-11\",\n        \"zhIndexValue\": 602.4,\n        \"mtIndexValue\": 596.2,\n        \"fjskIndexValue\": 929.8,\n        \"jskIndexValue\": 391.0,\n        \"kjclIndexValue\": 1243.0\n    }]\n}",
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
          "name" : "indexProp",
          "value" : "2022-12",
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
          "name" : "zhIndexValue",
          "value" : "701.1",
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
          "name" : "mtIndexValue",
          "value" : "694.3",
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
          "name" : "fjskIndexValue",
          "value" : "920.0",
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
          "name" : "jskIndexValue",
          "value" : "494.1",
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
          "name" : "kjclIndexValue",
          "value" : "1412.5",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

/**
var Sql = """select substr(a1.index_prop, 0, 7) index_prop,
       a1.index_value zh_index_value,
       a2.index_value mt_index_value,
       a3.index_value fjsk_index_value,
       a4.index_value jsk_index_value,
       a5.index_value kjcl_index_value
  from (select index_group, index_prop, index_value, INDEX_TYPE
          from (select *
                  from (select m.month index_prop,
                               nvl(index_group, '综合') index_group,
                               nvl(index_value, 0) index_value,
                               nvl(INDEX_TYPE, 'GSH') INDEX_TYPE,
                               ROW_NUMBER() over(partition by m.month order by index_value desc) mm
                          from (SELECT TO_CHAR(ADD_MONTHS(sysdate, 0 - LEVEL),
                                               'YYYY-MM') || '-01' AS month
                                  FROM dual
                                CONNECT BY LEVEL <= 12) m
                          left join sub_base_data.IDX_INDEX_CALC_RESULT
                            on index_prop = m.month
                           and INDEX_TYPE = 'GSH'
                           and index_group = '综合')
                 where mm <= 1)
         order by index_prop) a1
  left join (select index_group, index_prop, index_value, INDEX_TYPE
               from (select *
                       from (select m.month index_prop,
                                    nvl(index_group, '煤炭') index_group,
                                    nvl(index_value, 0) index_value,
                                    nvl(INDEX_TYPE, 'GSH') INDEX_TYPE,
                                    ROW_NUMBER() over(partition by m.month order by index_value desc) mm
                               from (SELECT TO_CHAR(ADD_MONTHS(sysdate,
                                                               0 - LEVEL),
                                                    'YYYY-MM') || '-01' AS month
                                       FROM dual
                                     CONNECT BY LEVEL <= 12) m
                               left join sub_base_data.IDX_INDEX_CALC_RESULT
                                 on index_prop = m.month
                                and INDEX_TYPE = 'GSH'
                                and index_group = '煤炭')
                      where mm <= 1)
              order by index_prop) a2
    on a1.index_prop = a2.index_prop
  left join (select index_group, index_prop, index_value, INDEX_TYPE
               from (select *
                       from (select m.month index_prop,
                                    nvl(index_group, '非金属矿') index_group,
                                    nvl(index_value, 0) index_value,
                                    nvl(INDEX_TYPE, 'GSH') INDEX_TYPE,
                                    ROW_NUMBER() over(partition by m.month order by index_value desc) mm
                               from (SELECT TO_CHAR(ADD_MONTHS(sysdate,
                                                               0 - LEVEL),
                                                    'YYYY-MM') || '-01' AS month
                                       FROM dual
                                     CONNECT BY LEVEL <= 12) m
                               left join sub_base_data.IDX_INDEX_CALC_RESULT
                                 on index_prop = m.month
                                and INDEX_TYPE = 'GSH'
                                and index_group = '非金属矿')
                      where mm <= 1)
              order by index_prop) a3
    on a1.index_prop = a3.index_prop
  left join (select index_group, index_prop, index_value, INDEX_TYPE
               from (select *
                       from (select m.month index_prop,
                                    nvl(index_group, '金属矿石') index_group,
                                    nvl(index_value, 0) index_value,
                                    nvl(INDEX_TYPE, 'GSH') INDEX_TYPE,
                                    ROW_NUMBER() over(partition by m.month order by index_value desc) mm
                               from (SELECT TO_CHAR(ADD_MONTHS(sysdate,
                                                               0 - LEVEL),
                                                    'YYYY-MM') || '-01' AS month
                                       FROM dual
                                     CONNECT BY LEVEL <= 12) m
                               left join sub_base_data.IDX_INDEX_CALC_RESULT
                                 on index_prop = m.month
                                and INDEX_TYPE = 'GSH'
                                and index_group = '金属矿石')
                      where mm <= 1)
              order by index_prop) a4
    on a1.index_prop = a4.index_prop
  left join (select index_group, index_prop, index_value, INDEX_TYPE
               from (select *
                       from (select m.month index_prop,
                                    nvl(index_group, '矿建材料') index_group,
                                    nvl(index_value, 0) index_value,
                                    nvl(INDEX_TYPE, 'GSH') INDEX_TYPE,
                                    ROW_NUMBER() over(partition by m.month order by index_value desc) mm
                               from (SELECT TO_CHAR(ADD_MONTHS(sysdate,
                                                               0 - LEVEL),
                                                    'YYYY-MM') || '-01' AS month
                                       FROM dual
                                     CONNECT BY LEVEL <= 12) m
                               left join sub_base_data.IDX_INDEX_CALC_RESULT
                                 on index_prop = m.month
                                and INDEX_TYPE = 'GSH'
                                and index_group = '矿建材料')
                      where mm <= 1)
              order by index_prop) a5
    on a1.index_prop = a5.index_prop
where a1.index_value !=0 
      and  a2.index_value  !=0 
      and a3.index_value  !=0 
      and a4.index_value  !=0 
      and a5.index_value  !=0 
""";
var list = db.sub_base_data.camel().select(Sql); */

//最新12期数据
var sql = """
select a.* from (
    select substr(time,0,7) index_prop,
        zh_index_value,
        mt_index_value ,
        fjsk_index_value ,
        jsk_index_value,kjcl_index_value  
    from dm_data.STS_DATA_APPLIED_INDEX
    where type = '4' and zh_index_value != 0 --and time >= '2020-06'
    order by time desc) a
where rownum <=12 order by a.index_prop 
"""
var list = db.dm_data.camel().select(sql);

for(item in list){
    item.put("zhIndexValue", item.get("zhIndexValue")::double);
    item.put("mtIndexValue", item.get("mtIndexValue")::double);
    item.put("fjskIndexValue", item.get("fjskIndexValue")::double);
    item.put("jskIndexValue", item.get("jskIndexValue")::double);
    item.put("kjclIndexValue", item.get("kjclIndexValue")::double);
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: list
});