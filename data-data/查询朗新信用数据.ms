{
  "properties" : { },
  "id" : "f423115b7ff6496e989e2257bd36a750",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询朗新信用数据",
  "createTime" : null,
  "updateTime" : 1693552389798,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getGatherIllwgalPage",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
    "value" : "1",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "4",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "shipName",
    "value" : "鸿兴999",
    "description" : "",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"totalCount\": \"2\",\n            \"foundTime\": \"\",\n            \"foundPerson\": \"\",\n            \"happenTime\": \"\",\n            \"happenAddr\": \"\",\n            \"accDesc\": \"2022年06月18日1600时左右，忠县海事处新生执法大队执法人员谭继伟、杜金在忠县新生码头巡航检查时，发现船舶“鸿兴999“轮大副牟德祥临水作业未穿救生衣，船长王超君未按照水上交通安全和防治船舶污染操作规则操纵、控制和管理船舶，该行为违反了《中华人民共和国船员条例》第十六条第（三）项。\",\n            \"actShip\": \"鸿兴999\",\n            \"dataSource\": \"动态执法\"\n        }, {\n            \"rowno\": \"2\",\n            \"totalCount\": \"2\",\n            \"foundTime\": \"\",\n            \"foundPerson\": \"\",\n            \"happenTime\": \"\",\n            \"happenAddr\": \"\",\n            \"accDesc\": \"2022年9月23日1730时，云阳海事处执法人员通过电子巡查发现：“重庆鸿富船务有限公司”所属船舶“鸿兴999”轮在故陵水道下行时，在大河坝至谭家院子段走上行航路，存在未按照规定的航路或者航行规则航行行为，未造成紧迫局面，其行为违反了《中华人民共和国内河交通安全管理条例》第十六条、《中华人民共和国内河避碰规则》（修订本）第八条。\",\n            \"actShip\": \"鸿兴999\",\n            \"dataSource\": \"动态执法\"\n        }],\n        \"total\": 2\n    }\n}",
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
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "list",
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
            "name" : "rowno",
            "value" : "1",
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
            "name" : "totalCount",
            "value" : "2",
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
            "name" : "foundTime",
            "value" : "",
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
            "name" : "foundPerson",
            "value" : "",
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
            "name" : "happenTime",
            "value" : "",
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
            "name" : "happenAddr",
            "value" : "",
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
            "name" : "accDesc",
            "value" : "2022年06月18日1600时左右，忠县海事处新生执法大队执法人员谭继伟、杜金在忠县新生码头巡航检查时，发现船舶“鸿兴999“轮大副牟德祥临水作业未穿救生衣，船长王超君未按照水上交通安全和防治船舶污染操作规则操纵、控制和管理船舶，该行为违反了《中华人民共和国船员条例》第十六条第（三）项。",
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
            "name" : "actShip",
            "value" : "鸿兴999",
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
            "name" : "dataSource",
            "value" : "动态执法",
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
        "name" : "total",
        "value" : "2",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;

var cbSql;
shipNameEn=(shipNameEn==null?"":shipNameEn).replace("<em>","").replace("</em>","");

cbSql = """
select rowno, total_count, 
 FOUND_TIME,
 FOUND_PERSON,
 HAPPEN_TIME,
 HAPPEN_ADDR,
 ACC_DESC ,
 act_ship ,
 DATA_SOURCE
    from (select rownum rowno, count(act_ship) over() total_count,  FOUND_TIME,FOUND_PERSON,HAPPEN_TIME,HAPPEN_ADDR,ACC_DESC ,act_ship ,DATA_SOURCE
                from (
                    
                    select distinct FOUND_TIME,FOUND_PERSON,HAPPEN_TIME,HAPPEN_ADDR,ACC_DESC ,act_ship ,
                    (case when DATA_SOURCE='1' then '动态执法'
                        when DATA_SOURCE='2' then '海事通'
                        when DATA_SOURCE='3' then '综合执法' 
                        else '' end ) DATA_SOURCE from ods_hs_share.gather_illegal_act_info  where 
                    act_ship=#{shipName}
                
                  ) b
              where rownum <= (#{page}*#{size})) a
              where a.rowno >((#{page}-1)* #{size})   
""";

import response
var list=db.biz_data.camel().select(cbSql);
        var totalCount=0;
        for(item in list){
             

            totalCount = item.get("totalCount");
        }     
        var back={
                "list":list,
                "total":Integer.parseInt(totalCount::string) 
                
        }
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: back
            
      });
 




