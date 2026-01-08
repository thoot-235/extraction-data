{
  "properties" : { },
  "id" : "7cc27a2e442f4ebba049f53e806a1458",
  "script" : null,
  "groupId" : "d451aee9c07b41f0a9f78bf1364eae04",
  "name" : "污染物接收概况",
  "createTime" : null,
  "updateTime" : 1721718792736,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/pollutInfo",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"result\": [{\n        \"subtotal\": \"船舶垃圾\",\n        \"workNum\": 0.0\n    }, {\n        \"subtotal\": \"生活污水\",\n        \"workNum\": 0.0\n    }, {\n        \"subtotal\": \"有害污水\",\n        \"workNum\": 0.0\n    }, {\n        \"subtotal\": \"残油废油\",\n        \"workNum\": 0.0\n    }, {\n        \"subtotal\": \"含油污水\",\n        \"workNum\": 0.0\n    }],\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\"\n}",
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
          "name" : "subtotal",
          "value" : "船舶垃圾",
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
          "name" : "workNum",
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

var sql = """
select a.diction_value SUBTOTAL,
       case
         when b.WORK_NUM is null then 0
          when b.subtotal = '船舶垃圾' then round(WORK_NUM/1000 ,2)
         else
          b.WORK_NUM
       end WORK_NUM
  from ods_hs_share.water_dict_data a
  left join (select sewage_type_name as SUBTOTAL,
                    nvl(sum(sewage_num), 0) as WORK_NUM
               from dm_data.sts_water_biz_day t
              where province_name in ('上海市',
                                      '江苏省',
                                      '安徽省',
                                      '浙江省',
                                      '江西省',
                                      '湖北省',
                                      '湖南省',
                                      '重庆市',
                                      '四川省',
                                      '贵州省',
                                      '云南省',
                                      '陕西省',
                                      '河南省',
                                      '山东省')
                and sts_date = to_char(sysdate - 1, 'yyyy-mm-dd')
              group by sewage_type_name) b
    on a.diction_value = b.SUBTOTAL
 where a.super_code = '380'
 order by b.WORK_NUM desc
"""

var ship = db.ods_data.camel().select(sql);

for(item in ship){
  item.put("workNum",item.get("workNum")::double);
}

return response.json({   
       result: ship,
       resultCode: 200,
       resultMsg: "查询成功"

   });
