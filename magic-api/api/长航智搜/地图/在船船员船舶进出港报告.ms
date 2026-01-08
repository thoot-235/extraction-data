{
  "properties" : { },
  "id" : "c5d4396528534427b9b8e50b99a52f46",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "在船船员船舶进出港报告",
  "createTime" : null,
  "updateTime" : 1711368729110,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/listCrewOnBoardPlat",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"basic\": {},\n        \"list\": [],\n        \"total\": 0\n    }\n}",
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
        "name" : "basic",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : "",
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
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "total",
        "value" : "0",
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

cbSql = """
     select  e.REPORT_ID,e.REG_SHIP_ID,e.SHIP_ID,e.SHIP_REG_NO,e.SHIP_FIRSTREG_NO,e.SHIP_INSPECT_NO,e.SHIP_NAME_CN,e.SHIP_NAME_EN,e.SHIP_IMO,e.MMSI,
        e.SHIP_CALLSIGN,e.REGPORT_CODE,e.FLAG_STATE_CODE,e.SHIP_REGION_TYPE,e.SHIP_TYPE_CODE,e.SHIP_GROSSTON,e.SHIP_NETTON,e.SHIP_DWT,e.MAINENGINE_POWER,
        e.SHIP_PASSENGER_NUM,e.SHIP_LENGTH,e.SHIP_BREADTH,e.SHIP_DEPTH,e.LINE_CODE,e.AREA_CODE,e.CONSTRUCTION_DATE,e.SHIP_OWNER,e.OWNER_ADDRESS,e.OWNER_CONTACT_PHONE,
        e.OWNER_CORPORATION,e.SHIP_OPERATOR,e.OPERATOR_ADDRESS,e.OPERATOR_TELEPHONE,e.OPERATOR_CORPORATION,e.BUSINESS_CODE,e.REPORT_NO,e.ORG_CODE,e.REPORT_PORT_NAME,
        e.REPORT_PORT_CODE,e.ARRIVAL_OR_LEAVE,e.ARRIVAL_REPORT_ID,e.NEXT_PORT_NAME,e.NEXT_PORT_CODE,e.REPORT_TIME,e.BID_NAME,e.MOBILE_PHONE,e.EXPECT_TIME,
        e.IF_ANCHORED,e.DRAFT_FORWARD,e.AFT_DRAFT,e.BERTH_CODE,e.BERTH_NAME,e.OTHER_QUANTITY,e.ACTUAL_CARRYING_CAPACITY,e.PORT_CARGO,e.REAL_DANGER_CARGO,
        e.PORT_DANGER_CARGO,e.ACTUAL_CAPACITY,e.PORT_PASSENGER,e.REAL_VEHICLE,e.PORT_VEHICLE,e.NUM_OF_BARGE,e.PORT_BARGE,e.REAL_CONTAINER_QAY,e.PORT_CONTAINER_QAY,
        e.LONGITUDE,e.LATITUDE,e.IF_REVOKE,e.VOYAGE_REPORT,e.FREQUENCY,e.NAVIGATION_SECTION,e.PRE_PORT_NAME,e.PRE_PORT_CODE
        ,row_number() over(order by ship_id DESC) as rownumber from RPT_SHIP_EEP_REPORT_REC e where 1=1
       and ship_id=#{shipId}  
      
        and report_time<=to_date(#{time} ,'yyyy-MM-dd')  order by report_time desc         
""";


var basic = db.biz_data.camel().selectOne(cbSql);

if(basic!=null){
          
             basic.put("ifAnchored",TagUtils.getTagNameByCode("ifAnchored",basic.get("ifAnchored")::string))
             basic.put("ifRevoke",TagUtils.getTagNameByCode("ifRevoke",basic.get("ifRevoke")::string))                 
             basic.put("arrivalOrLeave",TagUtils.getTagNameByCode("arrivalOrLeave",basic.get("arrivalOrLeave")::string))      
             basic.put("orgCode",TagUtils.getTagNameByCode("issuOrgTag",basic.get("orgCode")))             
             basic.put("offiSources",TagUtils.getTagNameByCode("isOwnTag",basic.get("offiSources")))   
           
              
        }   


 import response;
if(basic!=null&&basic!=''){
var reportId=basic.get("reportId")
if(reportId!=null&&reportId!=''){
    

       var  lastSql22="""
       select rowno, total_count, CREW_ID,REPORT_ID,SEQ_NO,CREATE_DATE,ID_CARD_NO,NAME,DUTY_CODE,CERT_TYPE,
CERT_NO,CERT_LEVEL_CODE,CERT_DUTY_CODE 
            ,  comp_duties_name, row_flg
    from (select rownum rowno, total_count, CREW_ID,REPORT_ID,SEQ_NO,CREATE_DATE,ID_CARD_NO,NAME,DUTY_CODE,CERT_TYPE,
CERT_NO,CERT_LEVEL_CODE,CERT_DUTY_CODE 
            ,  comp_duties_name, row_flg
          from (

          select total_count, CREW_ID,REPORT_ID,SEQ_NO,CREATE_DATE,ID_CARD_NO,NAME,DUTY_CODE,CERT_TYPE,
CERT_NO,CERT_LEVEL_CODE,CERT_DUTY_CODE 
            ,  comp_duties_name, row_flg from (select distinct count(ID_CARD_NO) over() total_count, T.CREW_ID,T.REPORT_ID,T.SEQ_NO,T.CREATE_DATE,T.ID_CARD_NO,T.NAME,T.DUTY_CODE,T.CERT_TYPE,
T.CERT_NO,T.CERT_LEVEL_CODE,T.CERT_DUTY_CODE 
            , d.item_name_cn comp_duties_name
            , row_number() OVER(PARTITION BY T.ID_CARD_NO ORDER BY T.CREATE_DATE desc) as row_flg  
              from RPT_ON_SHIP_CREW_REC T 
              left join dict_data.D_CB_AQJD_CERT_DUTY d 
               on T.duty_code = d.code 
             where T.report_id = '"""
             
             +reportId
             +"""'  and 1=1   order by T.crew_id asc ) a     where  a.row_flg=1
                      ) b
              where rownum <= (#{page}*#{size})) a
              where a.rowno >((#{page}-1)* #{size})
             """;
        var list=db.biz_data.camel().select(lastSql22);
        var totalCount=0;
        for(item in list){
            item.put("certDutyCode",TagUtils.getTagNameByCode("offiDutyTag",item.get("certDutyCode")))
            item.put("dutyCode",TagUtils.getTagNameByCode("offiDutyTag",item.get("dutyCode")))

        
            item.put("certType",TagUtils.getTagNameByCode("certType",item.get("certType")::string))          
            totalCount = item.get("totalCount");
        } 
        if(basic==null){
                basic={};
         }
         if(list==null){
                list=[];
         }    
        var back={
               "basic":basic,
                "list":list,
                "total":Integer.parseInt(totalCount::string) 
                
        }
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: back
            
      });

    }else{
        if(basic==null){
                basic={};
         }
      var back={
                "basic":basic,
                "list":[],
                "total":0
                
        }

      return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: back
      });
    }
}else{
      
       var back={
                "basic":{},
                "list":[],
                "total":0
                
        }
      return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: back
      });
    }




