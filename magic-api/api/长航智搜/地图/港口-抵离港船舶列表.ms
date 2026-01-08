{
  "properties" : { },
  "id" : "5286cca9724c48ed84d5dd57bd5e7849",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "港口-抵离港船舶列表",
  "createTime" : null,
  "updateTime" : 1706061427110,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getPortShips",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "上海",
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
    "value" : "5",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 1191,\n        \"list\": [{\n            \"estimatedTime\": \"2024-01-23 23:00:00\",\n            \"shipId\": \"CN20119333000\",\n            \"shipNameCn\": \"明珠99\",\n            \"shipNameEn\": \"MING ZHU 99\",\n            \"mmsi\": \"413294210\",\n            \"shipImo\": \"--\",\n            \"arrivalOrLeave\": \"0\",\n            \"status\": \"进港\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"上海黄浦大都会游艇码头\",\n            \"shipGrosston\": \"47\",\n            \"shipBreadth\": \"5.01\",\n            \"shipDepth\": \"2.83\",\n            \"draftForward\": \"1\",\n            \"aftDraft\": \"1\",\n            \"rowId\": \"1\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 01:05:00\",\n            \"shipId\": \"CN19908658234\",\n            \"shipNameCn\": \"沪拖5\",\n            \"shipNameEn\": \"HU TUO 5\",\n            \"mmsi\": 413839301,\n            \"shipImo\": \"--\",\n            \"arrivalOrLeave\": \"0\",\n            \"status\": \"进港\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"上海杨浦朱家门东码头\",\n            \"shipGrosston\": \"281\",\n            \"shipBreadth\": \"8.8\",\n            \"shipDepth\": \"3.6\",\n            \"draftForward\": \"2\",\n            \"aftDraft\": \"3.6\",\n            \"rowId\": \"2\",\n            \"longitude\": 121.56649576822916,\n            \"latitude\": 31.28988037109375,\n            \"distance\": \"8.73\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 01:06:00\",\n            \"shipId\": \"CN20108500744\",\n            \"shipNameCn\": \"苏通达机5118\",\n            \"shipNameEn\": \"SU TONG DA JI 5118\",\n            \"mmsi\": \"413772097\",\n            \"shipImo\": \"\",\n            \"arrivalOrLeave\": \"0\",\n            \"status\": \"进港\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"上海闵行柘中公司码头\",\n            \"shipGrosston\": \"266\",\n            \"shipBreadth\": \"7.8\",\n            \"shipDepth\": \"2.95\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"0.8\",\n            \"rowId\": \"3\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 01:21:00\",\n            \"shipId\": \"CN20067367313\",\n            \"shipNameCn\": \"阜宁机05619\",\n            \"shipNameEn\": \"FU NING JI 05619\",\n            \"mmsi\": \"413764451\",\n            \"shipImo\": \"\",\n            \"arrivalOrLeave\": \"0\",\n            \"status\": \"进港\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"上海闵行上港集团龙吴分公司7号泊位\",\n            \"shipGrosston\": \"275\",\n            \"shipBreadth\": \"8\",\n            \"shipDepth\": \"2.8\",\n            \"draftForward\": \"0.5\",\n            \"aftDraft\": \"0.5\",\n            \"rowId\": \"4\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 01:49:00\",\n            \"shipId\": \"CN20126757020\",\n            \"shipNameCn\": \"永顺祥\",\n            \"shipNameEn\": \"YONG SHUN XIANG\",\n            \"mmsi\": 413792597,\n            \"shipImo\": \"\",\n            \"arrivalOrLeave\": \"0\",\n            \"status\": \"进港\",\n            \"actualCarryingCapacity\": \"2300\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"上海吴淞吴淞锚地10号\",\n            \"shipGrosston\": \"3484\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"6\",\n            \"draftForward\": \"2.6\",\n            \"aftDraft\": \"3\",\n            \"rowId\": \"5\",\n            \"longitude\": 121.57462565104167,\n            \"latitude\": 31.401153564453125,\n            \"distance\": \"4.59\"\n        }]\n    }\n}",
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
      "defaultValue" : null,
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
      "defaultValue" : null,
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
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "total",
        "value" : "1191",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "list",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
        "defaultValue" : null,
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
            "name" : "estimatedTime",
            "value" : "2024-01-23 23:00:00",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "shipId",
            "value" : "CN20119333000",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "shipNameCn",
            "value" : "明珠99",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "shipNameEn",
            "value" : "MING ZHU 99",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "mmsi",
            "value" : "413294210",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "shipImo",
            "value" : "--",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "arrivalOrLeave",
            "value" : "0",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "status",
            "value" : "进港",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "actualCarryingCapacity",
            "value" : "",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "actualCapacity",
            "value" : "0",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "realVehicle",
            "value" : "0",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "realDangerCargo",
            "value" : "",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "berthName",
            "value" : "上海黄浦大都会游艇码头",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "shipGrosston",
            "value" : "47",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "shipBreadth",
            "value" : "5.01",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "shipDepth",
            "value" : "2.83",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "draftForward",
            "value" : "1",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "aftDraft",
            "value" : "1",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "rowId",
            "value" : "1",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
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
import response;
var sql="""
select leave_TIME estimated_time,
       ship_id,
       ship_name_cn,
       ship_name_en,
       mmsi,
       SHIP_IMO,
       ARRIVAL_OR_LEAVE,
       status,
       ACTUAL_CARRYING_CAPACITY,
       ACTUAL_CAPACITY,
       REAL_VEHICLE,
       REAL_DANGER_CARGO,
       BERTH_name,
       SHIP_GROSSTON,
       SHIP_BREADTH,
       SHIP_DEPTH,
       DRAFT_FORWARD,
       AFT_DRAFT
  from (select PORT_CODE,
               leave_TIME,
               ship_id,
               ship_name_cn,
               ship_name_en,
               mmsi,
               SHIP_IMO,
               ARRIVAL_OR_LEAVE,
               case
                 when ARRIVAL_OR_LEAVE = '0' then
                  '进港'
                 else
                  '离港'
               end status,
               ACTUAL_CARRYING_CAPACITY,
               ACTUAL_CAPACITY,
               REAL_VEHICLE,
               REAL_DANGER_CARGO,
               BERTH_name,
               SHIP_GROSSTON,
               SHIP_BREADTH,
               SHIP_DEPTH,
               DRAFT_FORWARD,
               AFT_DRAFT
          from (select REPORT_PORT_CODE PORT_CODE，to_CHAR(EXPECT_TIME, 'YYYY-MM-DD HH24:MI:SS') leave_TIME,
                       ship_id,
                       ship_name_cn,
                       ship_name_en,
                       mmsi,
                       SHIP_IMO,
                       ARRIVAL_OR_LEAVE,
                       ACTUAL_CARRYING_CAPACITY,
                       ACTUAL_CAPACITY,
                       REAL_VEHICLE,
                       REAL_DANGER_CARGO,
                       BERTH_name,
                       SHIP_GROSSTON,
                       SHIP_BREADTH,
                       SHIP_DEPTH,
                       DRAFT_FORWARD,
                       AFT_DRAFT
                  from bds_biz_data.RPT_SHIP_EEP_REPORT_REC
                 where DELETE_FLAG = '0'
                        and if_revoke != '1'
                        and EXPECT_TIME >= sysdate
                        and EXPECT_TIME < trunc(sysdate) + 1
                ) a,
               (select *
                  from dict_data.D_CB_PORT
                 where item_name_cn = #{portName}) p
         where a.PORT_CODE = p.code
        
        )
 order by to_number(ARRIVAL_OR_LEAVE), leave_TIME

"""
var  ret=db.biz_data.camel().page(sql);


var list=ret.list;
var list2;  
if(list!=null&&list!=""){
        var idList=[];
        for(itData in list){//查询预进港所有船舶，然后去pg库查询实时位置
                if(itData.get("mmsi")!=null&&itData.get("mmsi")!=""){
                        idList.add(Integer.decode(itData.get("mmsi")))
                }
              
        }
        if(idList.size()>=1){
               
                        var sqlLon="""select longitude,latitude,mmsi, 
                         round(cast(public.ST_Distance(public.geography(public.ST_MakePoint          
                                      ("longitude","latitude")),
                                        public.geography(public.ST_MakePoint(b.lon , b.lat )))/1000  as numeric),2) as distance
                                        from  ais_pos_new_all a  left join SEARCH_GK_QQGKQD  b on 1=1
                                        where  1=1 and a.mmsi in                                  
                                                <foreach collection="idList"  open="(" separator="," close=")" item="item">
                                                #{item}
                                                </foreach> and  b.gkzwmc=#{portName}  """;
                                        list2=db.ais.camel().select(sqlLon);
                
            if(list2!=null&&list!=null)  {
                for(item in list){
                                for(item2 in list2){
                                    if(item.get("mmsi")!=null&&item2.get("mmsi")!=null){
                                                 if(item.get("mmsi").toString().equals(item2.get("mmsi").toString())){     
                                                                    item.putAll(item2);
                                                                    }
                                                }
                                }
                            }  
            }  
                
               
        }
        
}
var dataBack={
    "total":ret.total,
    "list":list
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: dataBack 

});