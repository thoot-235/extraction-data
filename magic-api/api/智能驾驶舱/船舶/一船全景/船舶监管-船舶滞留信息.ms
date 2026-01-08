{
  "properties" : { },
  "id" : "copy1704858985867d39820",
  "script" : null,
  "groupId" : "a2f8b128e2c64d9eba631714dd3787a1",
  "name" : "船舶监管-船舶滞留信息",
  "createTime" : null,
  "updateTime" : 1706001921101,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipStrandedInfo",
  "method" : "GET",
  "parameters" : [ {
    "name" : "mmsi",
    "value" : "413772205",
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
  }, {
    "name" : "size",
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
  }, {
    "name" : "code",
    "value" : "list",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"total\": 2,\n    \"result\": [{\n        \"rowno\": \"1\",\n        \"totalCount\": \"2\",\n        \"detentionNo\": \"20230910114150732120807\",\n        \"voyageId\": \"--\",\n        \"shipNo\": \"A350808000979\",\n        \"shipNameCn\": \"赣南昌货1076\",\n        \"shipNameEn\": \"GAN NAN CHANG HUO 1076\",\n        \"nationCode\": \"125\",\n        \"regportName\": \"南昌\",\n        \"shipFirstregNo\": \"350808000979  \",\n        \"shipId\": \"CN20089304041                 \",\n        \"shipImo\": \"--             \",\n        \"shipCallsign\": \"--       \",\n        \"shipTypeCode\": \"多用途船\",\n        \"shipGrosston\": \"1748\",\n        \"shipBuiltDate\": \"2008-11-05 00:00:00\",\n        \"nameOfMaster\": \"--\",\n        \"berthCode\": \"--\",\n        \"inspectDate\": \"2023-09-10\",\n        \"portCode\": \"武汉\",\n        \"detentionTime\": \"2023-09-10 11:41:50\",\n        \"detentionReason\": \"消防泵（包括应急消防泵）\",\n        \"releasePerson\": \"--\",\n        \"releaseMark\": \"是\",\n        \"releaseTime\": \"2023-09-11 11:09:58\",\n        \"dententionOffReason\": \"\",\n        \"delayTime\": \"0\",\n        \"createOperator\": \"42010319740120371X\",\n        \"approvalOrg\": \"120807\",\n        \"fscMark\": \"\",\n        \"remark\": \"\",\n        \"rownumber\": \"1\",\n        \"invsgtType\": \"\",\n        \"replyOrg\": \"\"\n    }, {\n        \"rowno\": \"2\",\n        \"totalCount\": \"2\",\n        \"detentionNo\": \"20210310104840851060107\",\n        \"voyageId\": \"--\",\n        \"shipNo\": \"A350808000979\",\n        \"shipNameCn\": \"赣南昌货1076\",\n        \"shipNameEn\": \"GAN NAN CHANG HUO 1076\",\n        \"nationCode\": \"125\",\n        \"regportName\": \"南昌\",\n        \"shipFirstregNo\": \"350808000979\",\n        \"shipId\": \"CN20089304041\",\n        \"shipImo\": \"--\",\n        \"shipCallsign\": \"--       \",\n        \"shipTypeCode\": \"多用途船\",\n        \"shipGrosston\": \"1748\",\n        \"shipBuiltDate\": \"2008-11-05 00:00:00\",\n        \"nameOfMaster\": \"--\",\n        \"berthCode\": \"--\",\n        \"inspectDate\": \"2021-03-10\",\n        \"portCode\": \"南京\",\n        \"detentionTime\": \"2021-03-10 10:48:40\",\n        \"detentionReason\": \"船舶法定检验证书（簿）\",\n        \"releasePerson\": \"--\",\n        \"releaseMark\": \"是\",\n        \"releaseTime\": \"2021-03-11 11:03:51\",\n        \"dententionOffReason\": \"\",\n        \"delayTime\": \"0\",\n        \"createOperator\": \"34050419820916061X\",\n        \"approvalOrg\": \"060107\",\n        \"fscMark\": \"\",\n        \"remark\": \"\",\n        \"rownumber\": \"2\",\n        \"invsgtType\": \"\",\n        \"replyOrg\": \"\"\n    }]\n}",
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
      "name" : "total",
      "value" : "2",
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
      "name" : "result",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
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
          "name" : "rowno",
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
          "name" : "totalCount",
          "value" : "2",
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
          "name" : "detentionNo",
          "value" : "20230910114150732120807",
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
          "name" : "voyageId",
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
          "name" : "shipNo",
          "value" : "A350808000979",
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
          "value" : "赣南昌货1076",
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
          "value" : "GAN NAN CHANG HUO 1076",
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
          "name" : "nationCode",
          "value" : "125",
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
          "name" : "regportName",
          "value" : "南昌",
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
          "name" : "shipFirstregNo",
          "value" : "350808000979",
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
          "value" : "CN20089304041",
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
          "name" : "shipCallsign",
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
          "name" : "shipTypeCode",
          "value" : "多用途船",
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
          "value" : "1748",
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
          "name" : "shipBuiltDate",
          "value" : "2008-11-05 00:00:00",
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
          "name" : "nameOfMaster",
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
          "name" : "berthCode",
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
          "name" : "inspectDate",
          "value" : "2023-09-10",
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
          "name" : "portCode",
          "value" : "武汉",
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
          "name" : "detentionTime",
          "value" : "2023-09-10 11:41:50",
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
          "name" : "detentionReason",
          "value" : "消防泵（包括应急消防泵）",
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
          "name" : "releasePerson",
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
          "name" : "releaseMark",
          "value" : "是",
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
          "name" : "releaseTime",
          "value" : "2023-09-11 11:09:58",
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
          "name" : "dententionOffReason",
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
          "name" : "delayTime",
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
          "name" : "createOperator",
          "value" : "42010319740120371X",
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
          "name" : "approvalOrg",
          "value" : "120807",
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
          "name" : "fscMark",
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
          "name" : "remark",
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
          "name" : "rownumber",
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
          "name" : "invsgtType",
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
          "name" : "replyOrg",
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
        } ]
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;



var mmsiSql="""

select  SHIP_NO,SHIP_FIRSTREG_NO  from  bds_base_data.sc_ship_basic_data  where  mmsi=#{mmsi} and  rownum=1
"""
var shipDetail=db.base_data.camel().selectOne(mmsiSql);


if(shipDetail==null){
    return response.json({
    resultCode: 200,
    resultMsg: "未查询到船舶基本信息",
    total: 0,
    result: []
    });   
}
var shipNo=shipDetail.get("shipNo");
var shipFirstRegNo=shipDetail.get("shipFirstregNo");

if((shipRegNo==null||shipRegNo=="")&&(shipFirstRegNo==null||shipFirstRegNo=="")){
return response.json({
    resultCode: 200,
    resultMsg: "未查询到船舶基本信息",
    total: 0,
    result: []
    });
}

var pageNum = page;
pageNum = pageNum != null & pageNum != '' ? pageNum : 1

var pageSize = size;
pageSize = pageSize != null & pageSize != '' ? pageSize : 10

var selectSql="""""";
if(shipNo!=null&&shipNo!=''){
     selectSql="""
   
     ?{shipNo,  and trim(e.ship_No)=#{shipNo}} 
    
    """
}
else if(shipFirstRegNo!=null&&shipFirstRegNo!=''){
    selectSql="""
    and(    
     ?{shipFirstRegNo,   trim(e.SHIP_FIRSTREG_NO)=#{shipFirstRegNo}} 
     ?{shipNo, or trim(e.ship_no)=#{shipNo}} 
    )
    """
} else{
    return response.json({
    resultCode: 200,
    resultMsg: "船舶编号或者首次船舶登记号必须传其中一个值！！！",
    total: 0,
    result: data
    });
}

var cbSql = """
select rowno,  total_count,  DETENTION_NO,VOYAGE_ID,SHIP_NO,SHIP_NAME_CN,SHIP_NAME_EN,NATION_CODE,REGPORT_NAME,SHIP_FIRSTREG_NO,SHIP_ID,SHIP_IMO,
        SHIP_CALLSIGN,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_BUILT_DATE, NAME_OF_MASTER, BERTH_CODE,
        INSPECT_DATE,PORT_CODE,DETENTION_TIME,
        DETENTION_REASON, RELEASE_PERSON,RELEASE_MARK, RELEASE_TIME
        ,DENTENTION_OFF_REASON,DELAY_TIME,CREATE_OPERATOR,APPROVAL_ORG,FSC_MARK,REMARK
        , rownumber
    from (select rownum rowno,  total_count,  DETENTION_NO,VOYAGE_ID,SHIP_NO,SHIP_NAME_CN,SHIP_NAME_EN,NATION_CODE,REGPORT_NAME,SHIP_FIRSTREG_NO,SHIP_ID,SHIP_IMO,
        SHIP_CALLSIGN,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_BUILT_DATE, NAME_OF_MASTER, BERTH_CODE,
        INSPECT_DATE,PORT_CODE,DETENTION_TIME,
        DETENTION_REASON, RELEASE_PERSON,RELEASE_MARK, RELEASE_TIME
        ,DENTENTION_OFF_REASON,DELAY_TIME,CREATE_OPERATOR,APPROVAL_ORG,FSC_MARK,REMARK
        , rownumber
          from (
    select count(DETENTION_NO) over() total_count,
        e.DETENTION_NO,nvl(e.VOYAGE_ID,'--') VOYAGE_ID,e.SHIP_NO,e.SHIP_NAME_CN,e.SHIP_NAME_EN,e.NATION_CODE,e.REGPORT_NAME,e.SHIP_FIRSTREG_NO,e.SHIP_ID,e.SHIP_IMO,
        e.SHIP_CALLSIGN,e.SHIP_TYPE_CODE,e.SHIP_GROSSTON,e.SHIP_BUILT_DATE,nvl(e.name_of_master,'--') NAME_OF_MASTER,nvl2(e.BERTH_CODE,dt.item_name_cn,'--') BERTH_CODE,to_char(e.INSPECT_DATE,'yyyy-MM-dd')
        INSPECT_DATE,e.PORT_CODE,e.DETENTION_TIME,
        e.DETENTION_REASON,nvl2(e.RELEASE_PERSON,dd.item_name_cn,'--') RELEASE_PERSON,
         case when e.RELEASE_MARK is null  and e.RELEASE_TIME<sysdate then '1'
         when e.RELEASE_MARK is null  and e.RELEASE_TIME>sysdate then '0'   
         else e.RELEASE_MARK
        end 
        RELEASE_MARK
        , case when to_char(e.RELEASE_TIME,'yyyy-MM-dd')='1900-01-01'
        then '--' when to_char(e.RELEASE_TIME,'yyyy-MM-dd')!='1900-01-01'
        then to_char(e.RELEASE_TIME,'yyyy-MM-dd HH:mm:ss') end RELEASE_TIME
        ,e.DENTENTION_OFF_REASON,e.DELAY_TIME,e.CREATE_OPERATOR,e.APPROVAL_ORG,e.FSC_MARK,e.REMARK
        ,row_number() over(order by DETENTION_NO DESC) as rownumber from bds_biz_data.SHP_DENTENTION_FSC e  left join dict_data.D_CB_BERTHS dt on e.berth_code=dt.code
        Left join dict_data.D_CY_RBAC_USER dd on e.release_person=dd.code
        where e.delete_flag='0'
        
                     """+selectSql+"""
                      ) b
              where rownum <= (#{pageNum}*#{pageSize})) a
              where a.rowno >((#{pageNum}-1)* #{pageSize})  
              order by  INSPECT_DATE desc
                     """

var data = db.base_data.camel().select(cbSql);
var totalCount = 0;
for (item in data) {
    item.put("invsgtType", TagUtils.getTagNameByCode("releaseMark", item.get("invsgtType")))
    item.put("nationCode", TagUtils.getTagNameByCode("nationalityTag", item.get("nationCode")))
    item.put("shipTypeCode", TagUtils.getTagNameByCode("shipClassTag", item.get("shipTypeCode")))
    item.put("portCode", TagUtils.getTagNameByCode("portListTag", item.get("portCode")))
    item.put("replyOrg", TagUtils.getTagNameByCode("issuOrgTag", item.get("replyOrg")))
    item.put("releaseMark", TagUtils.getTagNameByCode("releaseMark", item.get("releaseMark")))
    var detentionReasonback="";
    if(item.get("detentionReason")!=null &&item.get("detentionReason")!=''){
        var s=item.get("detentionReason");
        var ss=TagUtils.getTagNameByCode("detentionReasonDictTag",s);
        if(s==ss){
        var detentionReason=item.get("detentionReason").toString().split(",")
       
       for(it in detentionReason){
          detentionReasonback+=TagUtils.getTagNameByCode("detentionReasonTag", it)+";"
           
       }
        }
        else {
            detentionReasonback=ss;
        }
      
    }
    item.put("detentionReason", detentionReasonback)
   
    
    totalCount = item.get("totalCount");

}

if (data == null) {
    data = [];
}
if(code=="nums"){
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
     result: {"nums":Integer.parseInt(totalCount::string)}
});
}else if (code=="list"){
    
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    total: Integer.parseInt(totalCount::string),
    result: data
});
}else{
  return response.json({
    resultCode: 200,
    resultMsg: "请输入正确请求参数【code】",
    total: 0,
    result: []
    });
}

