{
  "properties" : { },
  "id" : "09b953854d5d460e94715cfd9684c11a",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "航运指数之干散货指数",
  "createTime" : null,
  "updateTime" : 1742194420313,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/shipIndexDryBulkIndex",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"indexProp\": \"2022-01-01\",\n        \"zhIndexValue\": \"0\",\n        \"mtIndexValue\": \"732\",\n        \"fjskIndexValue\": \"992\",\n        \"jskIndexValue\": \"536\",\n        \"kjclIndexValue\": \"1696\"\n    }, {\n        \"indexProp\": \"2022-02-01\",\n        \"zhIndexValue\": \"783\",\n        \"mtIndexValue\": \"736\",\n        \"fjskIndexValue\": \"969\",\n        \"jskIndexValue\": \"552\",\n        \"kjclIndexValue\": \"1679\"\n    }, {\n        \"indexProp\": \"2022-03-01\",\n        \"zhIndexValue\": \"797\",\n        \"mtIndexValue\": \"671\",\n        \"fjskIndexValue\": \"1082\",\n        \"jskIndexValue\": \"580\",\n        \"kjclIndexValue\": \"1793\"\n    }, {\n        \"indexProp\": \"2022-04-01\",\n        \"zhIndexValue\": \"747\",\n        \"mtIndexValue\": \"667\",\n        \"fjskIndexValue\": \"941\",\n        \"jskIndexValue\": \"537\",\n        \"kjclIndexValue\": \"1645\"\n    }, {\n        \"indexProp\": \"2022-05-01\",\n        \"zhIndexValue\": \"719\",\n        \"mtIndexValue\": \"687\",\n        \"fjskIndexValue\": \"925\",\n        \"jskIndexValue\": \"505\",\n        \"kjclIndexValue\": \"1507\"\n    }, {\n        \"indexProp\": \"2022-06-01\",\n        \"zhIndexValue\": \"696\",\n        \"mtIndexValue\": \"668\",\n        \"fjskIndexValue\": \"885\",\n        \"jskIndexValue\": \"501\",\n        \"kjclIndexValue\": \"1423\"\n    }, {\n        \"indexProp\": \"2022-07-01\",\n        \"zhIndexValue\": \"0\",\n        \"mtIndexValue\": \"0\",\n        \"fjskIndexValue\": \"0\",\n        \"jskIndexValue\": \"0\",\n        \"kjclIndexValue\": \"0\"\n    }, {\n        \"indexProp\": \"2022-08-01\",\n        \"zhIndexValue\": \"0\",\n        \"mtIndexValue\": \"0\",\n        \"fjskIndexValue\": \"0\",\n        \"jskIndexValue\": \"0\",\n        \"kjclIndexValue\": \"0\"\n    }, {\n        \"indexProp\": \"2022-09-01\",\n        \"zhIndexValue\": \"0\",\n        \"mtIndexValue\": \"0\",\n        \"fjskIndexValue\": \"0\",\n        \"jskIndexValue\": \"0\",\n        \"kjclIndexValue\": \"0\"\n    }, {\n        \"indexProp\": \"2022-10-01\",\n        \"zhIndexValue\": \"0\",\n        \"mtIndexValue\": \"0\",\n        \"fjskIndexValue\": \"0\",\n        \"jskIndexValue\": \"0\",\n        \"kjclIndexValue\": \"0\"\n    }, {\n        \"indexProp\": \"2022-11-01\",\n        \"zhIndexValue\": \"0\",\n        \"mtIndexValue\": \"0\",\n        \"fjskIndexValue\": \"0\",\n        \"jskIndexValue\": \"0\",\n        \"kjclIndexValue\": \"0\"\n    }, {\n        \"indexProp\": \"2022-12-01\",\n        \"zhIndexValue\": \"0\",\n        \"mtIndexValue\": \"0\",\n        \"fjskIndexValue\": \"0\",\n        \"jskIndexValue\": \"0\",\n        \"kjclIndexValue\": \"0\"\n    }]\n}",
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
      "name" : "data",
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
          "value" : "2022-01-01",
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
          "value" : "0",
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
          "name" : "mtIndexValue",
          "value" : "732",
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
          "name" : "fjskIndexValue",
          "value" : "992",
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
          "name" : "jskIndexValue",
          "value" : "536",
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
          "name" : "kjclIndexValue",
          "value" : "1696",
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
import response;
import java.util.Random;

var Sql = """select a1.index_prop,
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
                          from (select to_char(sysdate, 'yyyy-') ||
                                       LPAD(rownum, 2, '0') || '-01' month
                                  from dual
                                connect by level < 13) m
                          left join sub_base_data.CHJ_INDEX_RESULT_NEW
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
                               from (select to_char(sysdate, 'yyyy-') ||
                                            LPAD(rownum, 2, '0') || '-01' month
                                       from dual
                                     connect by level < 13) m
                               left join sub_base_data.CHJ_INDEX_RESULT_NEW
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
                               from (select to_char(sysdate, 'yyyy-') ||
                                            LPAD(rownum, 2, '0') || '-01' month
                                       from dual
                                     connect by level < 13) m
                               left join sub_base_data.CHJ_INDEX_RESULT_NEW
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
                               from (select to_char(sysdate, 'yyyy-') ||
                                            LPAD(rownum, 2, '0') || '-01' month
                                       from dual
                                     connect by level < 13) m
                               left join sub_base_data.CHJ_INDEX_RESULT_NEW
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
                               from (select to_char(sysdate, 'yyyy-') ||
                                            LPAD(rownum, 2, '0') || '-01' month
                                       from dual
                                     connect by level < 13) m
                               left join sub_base_data.CHJ_INDEX_RESULT_NEW
                                 on index_prop = m.month
                                and INDEX_TYPE = 'GSH'
                                and index_group = '矿建材料')
                      where mm <= 1)
              order by index_prop) a5
    on a1.index_prop = a5.index_prop
""";
var list = db.sub_base_data.camel().select(Sql);
if (list == null){
  list = [];
}
var count = 10000;
for (item in list) {
  item.put("zhIndexValue",item.get("zhIndexValue")=='0'?String.valueOf(new Random().nextInt(count)):item.get("zhIndexValue"));
  item.put("mtIndexValue",item.get("mtIndexValue")=='0'?String.valueOf(new Random().nextInt(count)):item.get("mtIndexValue"));
  item.put("fjskIndexValue",item.get("fjskIndexValue")=='0'?String.valueOf(new Random().nextInt(count)):item.get("fjskIndexValue"));
  item.put("jskIndexValue",item.get("jskIndexValue")=='0'?String.valueOf(new Random().nextInt(count)):item.get("jskIndexValue"));
  item.put("kjclIndexValue",item.get("kjclIndexValue")=='0'?String.valueOf(new Random().nextInt(count)):item.get("kjclIndexValue"));
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});