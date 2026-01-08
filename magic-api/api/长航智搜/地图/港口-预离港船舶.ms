{
  "properties" : { },
  "id" : "a01ac84cf63b49f0a971befee6f32c3a",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "港口-预离港船舶",
  "createTime" : null,
  "updateTime" : 1706061870940,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getLeavePortShips",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "重庆",
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
    "value" : "10",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 25,\n        \"list\": [{\n            \"estimatedTime\": \"2024-01-24 10:10:00\",\n            \"shipId\": \"CN20102172549\",\n            \"shipNameCn\": \"华丰23\",\n            \"shipNameEn\": \"HUA FENG 23\",\n            \"mmsi\": \"413866822\",\n            \"shipImo\": \"——\",\n            \"actualCarryingCapacity\": \"5780\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"果园港散货码头\",\n            \"shipGrosston\": \"5262\",\n            \"shipBreadth\": \"17.2\",\n            \"shipDepth\": \"5.6\",\n            \"draftForward\": \"4.6\",\n            \"aftDraft\": \"4.5\",\n            \"status\": \"离港\",\n            \"rowId\": \"1\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 10:25:00\",\n            \"shipId\": \"CN20174160448\",\n            \"shipNameCn\": \"交运轮渡09\",\n            \"shipNameEn\": \"JIAO YUN LUN DU 09\",\n            \"mmsi\": 413823453,\n            \"shipImo\": \"---\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"40\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"挂膀山\",\n            \"shipGrosston\": \"703\",\n            \"shipBreadth\": \"10\",\n            \"shipDepth\": \"2.5\",\n            \"draftForward\": \"1\",\n            \"aftDraft\": \"1.25\",\n            \"status\": \"离港\",\n            \"rowId\": \"2\",\n            \"longitude\": 106.574755859375,\n            \"latitude\": 29.566436767578125,\n            \"distance\": \"1.11\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 11:00:00\",\n            \"shipId\": \"CN20109398877\",\n            \"shipNameCn\": \"港盛1503\",\n            \"shipNameEn\": \"GANG SHENG 1503\",\n            \"mmsi\": 413762861,\n            \"shipImo\": \"---\",\n            \"actualCarryingCapacity\": \"2308\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江重庆大坝子锚地作业区\",\n            \"shipGrosston\": \"5545\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.3\",\n            \"draftForward\": \"2.7\",\n            \"aftDraft\": \"2.7\",\n            \"status\": \"离港\",\n            \"rowId\": \"3\",\n            \"longitude\": 106.58531901041667,\n            \"latitude\": 29.573095703125,\n            \"distance\": \"0.55\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 11:16:00\",\n            \"shipId\": \"CN20215180519\",\n            \"shipNameCn\": \"重轮救助1号\",\n            \"shipNameEn\": \"CHONG LUN JIU ZHU 1 HAO\",\n            \"mmsi\": 413865443,\n            \"shipImo\": \"---\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"挂膀山\",\n            \"shipGrosston\": \"651\",\n            \"shipBreadth\": \"10.6\",\n            \"shipDepth\": \"3.1\",\n            \"draftForward\": \"1.2\",\n            \"aftDraft\": \"1.6\",\n            \"status\": \"离港\",\n            \"rowId\": \"4\",\n            \"longitude\": 106.46285807291666,\n            \"latitude\": 29.580305989583334,\n            \"distance\": \"12.02\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 11:30:00\",\n            \"shipId\": \"CN20236688662\",\n            \"shipNameCn\": \"祥牛11\",\n            \"shipNameEn\": \"XIANG NIU 11\",\n            \"mmsi\": 413876585,\n            \"shipImo\": \"---\",\n            \"actualCarryingCapacity\": \"3800\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"果园港散货码头\",\n            \"shipGrosston\": \"3812\",\n            \"shipBreadth\": \"16.26\",\n            \"shipDepth\": \"6.6\",\n            \"draftForward\": \"3.3\",\n            \"aftDraft\": \"3.2\",\n            \"status\": \"离港\",\n            \"rowId\": \"5\",\n            \"longitude\": 106.78397623697917,\n            \"latitude\": 29.610953776041665,\n            \"distance\": \"19.75\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 11:40:00\",\n            \"shipId\": \"CN20145654304\",\n            \"shipNameCn\": \"金碧女王\",\n            \"shipNameEn\": \"JIN BI NU WANG\",\n            \"mmsi\": 413832469,\n            \"shipImo\": \"---\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"朝天门9码头\",\n            \"shipGrosston\": \"2885\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"3.6\",\n            \"draftForward\": \"1.8\",\n            \"aftDraft\": \"1.85\",\n            \"status\": \"离港\",\n            \"rowId\": \"6\",\n            \"longitude\": 106.587353515625,\n            \"latitude\": 29.56752726236979,\n            \"distance\": \"0.14\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 12:00:00\",\n            \"shipId\": \"CN20087177128\",\n            \"shipNameCn\": \"港盛1001\",\n            \"shipNameEn\": \"GANG SHENG 1001\",\n            \"mmsi\": 413762895,\n            \"shipImo\": \"--\",\n            \"actualCarryingCapacity\": \"2400\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"果园港集装箱码头\",\n            \"shipGrosston\": \"4175\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"4.8\",\n            \"draftForward\": \"2.8\",\n            \"aftDraft\": \"2.7\",\n            \"status\": \"离港\",\n            \"rowId\": \"7\",\n            \"longitude\": 106.777685546875,\n            \"latitude\": 29.612202962239582,\n            \"distance\": \"19.19\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 12:00:00\",\n            \"shipId\": \"CN20106716234\",\n            \"shipNameCn\": \"重轮集3016\",\n            \"shipNameEn\": \"CHONG LUN JI 3016\",\n            \"mmsi\": 413781327,\n            \"shipImo\": \"------\",\n            \"actualCarryingCapacity\": \"3117\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"果园港集装箱码头\",\n            \"shipGrosston\": \"5764\",\n            \"shipBreadth\": \"17.2\",\n            \"shipDepth\": \"6\",\n            \"draftForward\": \"3.1\",\n            \"aftDraft\": \"3.1\",\n            \"status\": \"离港\",\n            \"rowId\": \"8\",\n            \"longitude\": 106.76458333333333,\n            \"latitude\": 29.614900716145833,\n            \"distance\": \"18.05\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 12:00:00\",\n            \"shipId\": \"CN20083077072\",\n            \"shipNameCn\": \"重轮J3008\",\n            \"shipNameEn\": \"CHONG LUN J3008\",\n            \"mmsi\": 413772908,\n            \"shipImo\": \"---\",\n            \"actualCarryingCapacity\": \"2752\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江重庆果园港作业区\",\n            \"shipGrosston\": \"5772\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.8\",\n            \"draftForward\": \"3.6\",\n            \"aftDraft\": \"3.6\",\n            \"status\": \"离港\",\n            \"rowId\": \"9\",\n            \"longitude\": 106.7621337890625,\n            \"latitude\": 29.615116373697916,\n            \"distance\": \"17.83\"\n        }, {\n            \"estimatedTime\": \"2024-01-24 12:00:00\",\n            \"shipId\": \"CN20137126848\",\n            \"shipNameCn\": \"宜工泥502\",\n            \"shipNameEn\": \"YI GONG NI 502\",\n            \"mmsi\": 413826211,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江重庆寸滩码头1号泊位\",\n            \"shipGrosston\": \"863\",\n            \"shipBreadth\": \"10.8\",\n            \"shipDepth\": \"3.7\",\n            \"draftForward\": \"2\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"rowId\": \"10\",\n            \"longitude\": 106.60801595052084,\n            \"latitude\": 29.621856689453125,\n            \"distance\": \"6.32\"\n        }]\n    }\n}",
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
        "value" : "25",
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
        "name" : "list",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "String",
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
            "name" : "estimatedTime",
            "value" : "2024-01-24 10:10:00",
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
            "value" : "CN20102172549",
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
            "value" : "华丰23",
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
            "value" : "HUA FENG 23",
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
            "value" : "413866822",
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
            "value" : "——",
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
            "value" : "5780",
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
            "name" : "realVehicle",
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
            "value" : "果园港散货码头",
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
            "value" : "5262",
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
            "value" : "17.2",
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
            "value" : "5.6",
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
            "value" : "4.6",
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
            "value" : "4.5",
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
            "value" : "离港",
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
SELECT leave_TIME estimated_time,
       ship_id,
       ship_name_cn,
       ship_name_en,
       mmsi,
       SHIP_IMO,
       ACTUAL_CARRYING_CAPACITY,
       ACTUAL_CAPACITY,
       REAL_VEHICLE,
       REAL_DANGER_CARGO,
       BERTH_name,
       SHIP_GROSSTON,
       SHIP_BREADTH,
       SHIP_DEPTH,
       DRAFT_FORWARD,
       AFT_DRAFT,
       '离港' status
  from (select PORT_CODE,
               leave_TIME,
               ship_id,
               ship_name_cn,
               ship_name_en,
               mmsi,
               SHIP_IMO,
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
                        and ARRIVAL_OR_LEAVE = '1'
                        and if_revoke != '1'
                        and EXPECT_TIME >= sysdate
                        and EXPECT_TIME < trunc(sysdate) + 1
                ) a,
               dict_data.D_CB_PORT p
         where a.PORT_CODE = p.code
           and p.item_name_cn = #{portName})
 order by leave_TIME

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