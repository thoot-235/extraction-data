{
  "properties" : { },
  "id" : "d95c4653318f4cffb3c995b2e38c49fd",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "船舶滞留次数",
  "createTime" : null,
  "updateTime" : 1717548539282,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/queryShipStranded",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipFirstRegNo",
    "value" : "270313000327",
    "description" : "船舶登记号",
    "required" : false,
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
    "name" : "shipNo",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"total\": 1,\n    \"result\": [{\n        \"rowno\": \"1\",\n        \"totalCount\": \"1\",\n        \"detentionNo\": \"20140527152218898290702\",\n        \"voyageId\": \"--\",\n        \"shipNo\": \"A270313000327\",\n        \"shipNameCn\": \"兴隆1918\",\n        \"shipNameEn\": \"XING LONG 1918\",\n        \"nationCode\": \"125\",\n        \"regportName\": \"扬州\",\n        \"shipFirstregNo\": \"270313000327  \",\n        \"shipId\": \"\",\n        \"shipImo\": \"               \",\n        \"shipCallsign\": \"         \",\n        \"shipTypeCode\": \"散货船\",\n        \"shipGrosston\": \"5168\",\n        \"shipBuiltDate\": \"2013-05-15 00:00:00\",\n        \"nameOfMaster\": \"--\",\n        \"berthCode\": \"\",\n        \"inspectDate\": \"2014-05-27\",\n        \"portCode\": \"松江\",\n        \"detentionTime\": \"2014-05-27 15:22:00\",\n        \"detentionReason\": \"未承担应承担的费用、也未提供适当的担保;\",\n        \"releasePerson\": \"\",\n        \"releaseMark\": \"是\",\n        \"releaseTime\": \"2023-05-25 05:05:25\",\n        \"dententionOffReason\": \"\",\n        \"delayTime\": \"190\",\n        \"createOperator\": \"29070200018\",\n        \"approvalOrg\": \"290702\",\n        \"fscMark\": \"\",\n        \"remark\": \"欠费1次\",\n        \"rownumber\": \"1\",\n        \"invsgtType\": \"\",\n        \"replyOrg\": \"\"\n    }]\n}",
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
      "value" : "1",
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
          "name" : "rowno",
          "value" : "1",
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
          "name" : "totalCount",
          "value" : "1",
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
          "name" : "detentionNo",
          "value" : "20140527152218898290702",
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
          "name" : "voyageId",
          "value" : "--",
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
          "name" : "shipNo",
          "value" : "A270313000327",
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
          "name" : "shipNameCn",
          "value" : "兴隆1918",
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
          "name" : "shipNameEn",
          "value" : "XING LONG 1918",
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
          "name" : "nationCode",
          "value" : "125",
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
          "name" : "regportName",
          "value" : "扬州",
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
          "name" : "shipFirstregNo",
          "value" : "270313000327",
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
          "name" : "shipId",
          "value" : "",
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
          "name" : "shipImo",
          "value" : "",
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
          "name" : "shipCallsign",
          "value" : "",
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
          "name" : "shipTypeCode",
          "value" : "散货船",
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
          "name" : "shipGrosston",
          "value" : "5168",
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
          "name" : "shipBuiltDate",
          "value" : "2013-05-15 00:00:00",
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
          "name" : "nameOfMaster",
          "value" : "--",
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
          "name" : "berthCode",
          "value" : "",
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
          "name" : "inspectDate",
          "value" : "2014-05-27",
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
          "name" : "portCode",
          "value" : "松江",
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
          "name" : "detentionTime",
          "value" : "2014-05-27 15:22:00",
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
          "name" : "detentionReason",
          "value" : "未承担应承担的费用、也未提供适当的担保;",
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
          "name" : "releasePerson",
          "value" : "",
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
          "name" : "releaseMark",
          "value" : "是",
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
          "name" : "releaseTime",
          "value" : "2023-05-25 05:05:25",
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
          "name" : "dententionOffReason",
          "value" : "",
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
          "name" : "delayTime",
          "value" : "190",
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
          "name" : "createOperator",
          "value" : "29070200018",
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
          "name" : "approvalOrg",
          "value" : "290702",
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
          "name" : "fscMark",
          "value" : "",
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
          "name" : "remark",
          "value" : "欠费1次",
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
          "name" : "rownumber",
          "value" : "1",
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
          "name" : "invsgtType",
          "value" : "",
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
          "name" : "replyOrg",
          "value" : "",
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
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

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
        ,DENTENTION_OFF_REASON,DELAY_TIME,APPROVAL_ORG,FSC_MARK,REMARK
        , rownumber
    from (select rownum rowno,  total_count,  DETENTION_NO,VOYAGE_ID,SHIP_NO,SHIP_NAME_CN,SHIP_NAME_EN,NATION_CODE,REGPORT_NAME,SHIP_FIRSTREG_NO,SHIP_ID,SHIP_IMO,
        SHIP_CALLSIGN,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_BUILT_DATE, NAME_OF_MASTER, BERTH_CODE,
        INSPECT_DATE,PORT_CODE,DETENTION_TIME,
        DETENTION_REASON, RELEASE_PERSON,RELEASE_MARK, RELEASE_TIME
        ,DENTENTION_OFF_REASON,DELAY_TIME,APPROVAL_ORG,FSC_MARK,REMARK
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
        ,e.DENTENTION_OFF_REASON,e.DELAY_TIME,e.APPROVAL_ORG,e.FSC_MARK,e.REMARK
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
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    total: Integer.parseInt(totalCount::string),
    result: data
});