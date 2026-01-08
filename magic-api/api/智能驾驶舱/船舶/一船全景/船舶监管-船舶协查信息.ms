{
  "properties" : { },
  "id" : "copy1704859023683d79768",
  "script" : null,
  "groupId" : "a2f8b128e2c64d9eba631714dd3787a1",
  "name" : "船舶监管-船舶协查信息",
  "createTime" : null,
  "updateTime" : 1736844175909,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipCooperationInfo",
  "method" : "GET",
  "parameters" : [ {
    "name" : "mmsi",
    "value" : "413829235",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"total\": 2,\n    \"result\": [{\n        \"rowno\": \"1\",\n        \"totalCount\": \"2\",\n        \"applyNo\": \"20151201192004757121200\",\n        \"shipNo\": \"A280215000272\",\n        \"shipNameCn\": \"宝伟6号\",\n        \"shipNameEn\": \"BAO WEI 6 HAO\",\n        \"nationCode\": \"125\",\n        \"regportCode\": \"阜阳\",\n        \"shipRegNo\": \"280215000272\",\n        \"shipFirstregNo\": \"280215000272\",\n        \"shipId\": \"\",\n        \"shipImo\": \"\",\n        \"shipCardNo\": \"\",\n        \"shipTypeCode\": \"干货船\",\n        \"shipGrosston\": \"7184\",\n        \"shipBuiltDate\": \"2015-04-24 00:00:00\",\n        \"shipOwner\": \"颍上县第二航运有限责任公司\",\n        \"shipOperatorCn\": \"颍上县第二航运有限责任公司\",\n        \"regportOrgCode\": \"280200\",\n        \"regportOrgName\": \"\",\n        \"submitUnit\": \"芜湖海事局\",\n        \"trusteeUnit\": \"121200,010001,010002,010003,010006,010008,010010,060100,060300,060400,060600,060700,060900,061100,060200,120700,120800,120900,121000,121100,121200\",\n        \"invsgtType\": \"非上报\",\n        \"invsgtPeriod\": \"12个月\",\n        \"invsgtReason\": \"2015年11月30日0856时，无视芜湖交管中心发布的大雾禁航航行警告，在白茆水道冒雾航行。\",\n        \"invsgtDemand\": \"上级协查\",\n        \"statusFlag\": \"2\",\n        \"auditComment\": \"\",\n        \"submitUnitContact\": \"芜湖海事局\",\n        \"submitUnitTel\": \"0553-3716075\",\n        \"replyDate\": \"2015-12-06 12:12:00\",\n        \"replyOrg\": \"芜湖海事局\",\n        \"replyContact\": \"唐百元\",\n        \"replyContactTel\": \"0553-3716075\",\n        \"replyContent\": \"该船已到芜湖交管中心接受处理，处罚案号：2015121000000155\",\n        \"releaseDate\": \"2015-12-06\",\n        \"releaseDesc\": \"该船已到芜湖交管中心接受处理，处罚案号：2015121000000155\",\n        \"remark\": \"\",\n        \"rownumber\": \"1\",\n        \"flag\": \"1\",\n        \"releaseMark\": \"是\"\n    }, {\n        \"rowno\": \"2\",\n        \"totalCount\": \"2\",\n        \"applyNo\": \"20150604163548160121105\",\n        \"shipNo\": \"A280215000272\",\n        \"shipNameCn\": \"宝伟6号\",\n        \"shipNameEn\": \"BAO WEI 6 HAO\",\n        \"nationCode\": \"125\",\n        \"regportCode\": \"阜阳\",\n        \"shipRegNo\": \"280215000272\",\n        \"shipFirstregNo\": \"280215000272\",\n        \"shipId\": \"\",\n        \"shipImo\": \"\",\n        \"shipCardNo\": \"\",\n        \"shipTypeCode\": \"干货船\",\n        \"shipGrosston\": \"7184\",\n        \"shipBuiltDate\": \"2015-04-24 00:00:00\",\n        \"shipOwner\": \"颍上县第二航运有限责任公司\",\n        \"shipOperatorCn\": \"颍上县第二航运有限责任公司\",\n        \"regportOrgCode\": \"280200\",\n        \"regportOrgName\": \"\",\n        \"submitUnit\": \"安庆枞阳海事处\",\n        \"trusteeUnit\": \"121105,060100,060300,060400,060600,060700,060900,061000,061100,061200,060200,170000,120100,120500,120600,120700,120800,120900,121000,121100,121200\",\n        \"invsgtType\": \"非上报\",\n        \"invsgtPeriod\": \"12个月\",\n        \"invsgtReason\": \"该新建船舶下水后未按规定办理船舶出港签证手续，擅自驶离建造船厂\",\n        \"invsgtDemand\": \"上级协查\",\n        \"statusFlag\": \"2\",\n        \"auditComment\": \"\",\n        \"submitUnitContact\": \"枞阳海事处\",\n        \"submitUnitTel\": \"05562589481\",\n        \"replyDate\": \"2015-06-05 12:06:00\",\n        \"replyOrg\": \"安庆枞阳海事处\",\n        \"replyContact\": \"\",\n        \"replyContactTel\": \"\",\n        \"replyContent\": \"该船已于2015年6月5日接受处理\",\n        \"releaseDate\": \"2015-06-05\",\n        \"releaseDesc\": \"该船已于2015年6月5日接受处理\",\n        \"remark\": \"\",\n        \"rownumber\": \"2\",\n        \"flag\": \"1\",\n        \"releaseMark\": \"是\"\n    }]\n}",
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
    }, {
      "name" : "result",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
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
          "name" : "applyNo",
          "value" : "20151201192004757121200",
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
          "value" : "A280215000272",
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
          "name" : "shipNameCn",
          "value" : "宝伟6号",
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
          "name" : "shipNameEn",
          "value" : "BAO WEI 6 HAO",
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
          "name" : "nationCode",
          "value" : "125",
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
          "name" : "regportCode",
          "value" : "阜阳",
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
          "name" : "shipRegNo",
          "value" : "280215000272",
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
          "name" : "shipFirstregNo",
          "value" : "280215000272",
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
          "name" : "shipId",
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
          "name" : "shipImo",
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
          "name" : "shipCardNo",
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
          "name" : "shipTypeCode",
          "value" : "干货船",
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
          "name" : "shipGrosston",
          "value" : "7184",
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
          "name" : "shipBuiltDate",
          "value" : "2015-04-24 00:00:00",
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
          "name" : "shipOwner",
          "value" : "颍上县第二航运有限责任公司",
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
          "name" : "shipOperatorCn",
          "value" : "颍上县第二航运有限责任公司",
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
          "name" : "regportOrgCode",
          "value" : "280200",
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
          "name" : "regportOrgName",
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
          "name" : "submitUnit",
          "value" : "芜湖海事局",
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
          "name" : "trusteeUnit",
          "value" : "121200,010001,010002,010003,010006,010008,010010,060100,060300,060400,060600,060700,060900,061100,060200,120700,120800,120900,121000,121100,121200",
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
          "name" : "invsgtType",
          "value" : "非上报",
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
          "name" : "invsgtPeriod",
          "value" : "12个月",
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
          "name" : "invsgtReason",
          "value" : "2015年11月30日0856时，无视芜湖交管中心发布的大雾禁航航行警告，在白茆水道冒雾航行。",
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
          "name" : "invsgtDemand",
          "value" : "上级协查",
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
          "name" : "statusFlag",
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
          "name" : "auditComment",
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
          "name" : "submitUnitContact",
          "value" : "芜湖海事局",
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
          "name" : "submitUnitTel",
          "value" : "0553-3716075",
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
          "name" : "replyDate",
          "value" : "2015-12-06 12:12:00",
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
          "name" : "replyOrg",
          "value" : "芜湖海事局",
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
          "name" : "replyContact",
          "value" : "唐百元",
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
          "name" : "replyContactTel",
          "value" : "0553-3716075",
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
          "name" : "replyContent",
          "value" : "该船已到芜湖交管中心接受处理，处罚案号：2015121000000155",
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
          "name" : "releaseDate",
          "value" : "2015-12-06",
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
          "name" : "releaseDesc",
          "value" : "该船已到芜湖交管中心接受处理，处罚案号：2015121000000155",
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
          "name" : "remark",
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
          "name" : "rownumber",
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
          "name" : "flag",
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
          "name" : "releaseMark",
          "value" : "是",
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





var mmsiSql="""

select  SHIP_REG_NO,SHIP_FIRSTREG_NO,ship_id  from  bds_base_data.sc_ship_basic_data  where  mmsi=#{mmsi} and  rownum=1
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
var shipRegNo=shipDetail.get("shipRegNo");
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
pageNum= pageNum!=null&pageNum!=''? pageNum :1

var pageSize = size;
pageSize= pageSize!=null&pageSize!=''? pageSize :10

var selectSql="""""";
if(shipFirstRegNo!=null&&shipFirstRegNo!=''){
    selectSql="""
    and(    
     ?{shipFirstRegNo,  trim(SHIP_FIRSTREG_NO)=#{shipFirstRegNo}} 
     ?{shipRegNo, or trim(ship_reg_no)=#{shipRegNo}} 
    )
    """
}else if(shipRegNo!=null&&shipRegNo!=''){
     selectSql="""
    and(
     ?{shipRegNo, trim(ship_reg_no)=#{shipRegNo}} 
     ?{shipFirstRegNo, or trim(SHIP_FIRSTREG_NO)=#{shipFirstRegNo}} 
    )
    """
}else{
    return response.json({
    resultCode: 200,
    resultMsg: "船舶登记号或者首次船舶登记号必须传其中一个值！！！",
    total: 0,
    result: data
    });
}
var cbSql = """

select rowno, total_count, APPLY_NO,SHIP_NO,SHIP_NAME_CN,SHIP_NAME_EN,NATION_CODE,REGPORT_CODE,SHIP_REG_NO,SHIP_FIRSTREG_NO,SHIP_ID,SHIP_IMO,
        SHIP_CARD_NO,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_BUILT_DATE,SHIP_OWNER,SHIP_OPERATOR_CN,REGPORT_ORG_CODE,REGPORT_ORG_NAME,SUBMIT_UNIT,
        TRUSTEE_UNIT,INVSGT_TYPE,INVSGT_PERIOD,INVSGT_REASON,INVSGT_DEMAND,STATUS_FLAG,AUDIT_COMMENT,SUBMIT_UNIT_CONTACT,SUBMIT_UNIT_TEL, REPLY_DATE,
        REPLY_ORG,REPLY_CONTACT,REPLY_CONTACT_TEL,REPLY_CONTENT,RELEASE_DATE,RELEASE_DESC,REMARK,rownumber ,flag
    from (select rownum rowno, total_count, APPLY_NO,SHIP_NO,SHIP_NAME_CN,SHIP_NAME_EN,NATION_CODE,REGPORT_CODE,SHIP_REG_NO,SHIP_FIRSTREG_NO,SHIP_ID,SHIP_IMO,
        SHIP_CARD_NO,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_BUILT_DATE,SHIP_OWNER,SHIP_OPERATOR_CN,REGPORT_ORG_CODE,REGPORT_ORG_NAME,SUBMIT_UNIT,
        TRUSTEE_UNIT,INVSGT_TYPE,INVSGT_PERIOD,INVSGT_REASON,INVSGT_DEMAND,STATUS_FLAG,AUDIT_COMMENT,SUBMIT_UNIT_CONTACT,SUBMIT_UNIT_TEL, REPLY_DATE,
        REPLY_ORG,REPLY_CONTACT,REPLY_CONTACT_TEL,REPLY_CONTENT,RELEASE_DATE,RELEASE_DESC,REMARK,rownumber,flag 
          from (
              
     select count(APPLY_NO) over() total_count,
        e.APPLY_NO,e.SHIP_NO,e.SHIP_NAME_CN,e.SHIP_NAME_EN,e.NATION_CODE,e.REGPORT_CODE,e.SHIP_REG_NO,e.SHIP_FIRSTREG_NO,e.SHIP_ID,e.SHIP_IMO,
        e.SHIP_CARD_NO,e.SHIP_TYPE_CODE,e.SHIP_GROSSTON,e.SHIP_BUILT_DATE,e.SHIP_OWNER,e.SHIP_OPERATOR_CN,e.REGPORT_ORG_CODE,e.REGPORT_ORG_NAME,e.SUBMIT_UNIT,
        e.TRUSTEE_UNIT,e.INVSGT_TYPE,e.INVSGT_PERIOD,e.INVSGT_REASON,e.INVSGT_DEMAND,e.STATUS_FLAG,e.AUDIT_COMMENT,e.SUBMIT_UNIT_CONTACT,e.SUBMIT_UNIT_TEL,
        e.SUBMIT_UNIT_FAX,to_char(e.ISSUE_DATE,'yyyy-MM-dd') ISSUE_DATE,to_char(e.EXPIRE_DATE,'yyyy-MM-dd') EXPIRE_DATE,
        case when to_char(e.REPLY_DATE,'yyyy-MM-dd')='1900-01-01' then '' when
        to_char(e.REPLY_DATE,'yyyy-MM-dd')!='1900-01-01' then to_char(e.REPLY_DATE,'yyyy-MM-dd HH:mm:ss') end
        REPLY_DATE,
        e.REPLY_ORG,e.REPLY_CONTACT,e.REPLY_CONTACT_TEL,e.REPLY_CONTENT,
        case when to_char(e.RELEASE_DATE,'yyyy-MM-dd')='1900-01-01' then '' when
        to_char(e.RELEASE_DATE,'yyyy-MM-dd')!='1900-01-01' then to_char(e.RELEASE_DATE,'yyyy-MM-dd') end RELEASE_DATE,
        e.RELEASE_DESC,e.REMARK
        ,row_number() over(order by APPLY_NO DESC) as rownumber,
          case  when 
           release_desc is not null then '1'
         else
           case  when  RELEASE_DATE is   null or RELEASE_DATE ='' or to_char(RELEASE_DATE,'yyyy')='1990' then '0'
          else '1' end 
       end flag
        
         from SHP_ASSIST_INVESTIGATION e where 1=1 and delete_flag='0' 
                     """+selectSql+"""

                     ) b
              where rownum <= (#{pageNum}*#{pageSize})) a
              where a.rowno >((#{pageNum}-1)* #{pageSize})  
              order by flag asc ,RELEASE_DATE desc  
                     """



var data =  db.biz_data.camel().select(cbSql);
var totalCount=0;
 for(item in data){
             item.put("invsgtType",TagUtils.getTagNameByCode("invsgtType",item.get("invsgtType")))
             item.put("invsgtPeriod",TagUtils.getTagNameByCode("invsgtPeriod",item.get("invsgtPeriod")))  
             item.put("nationCode",TagUtils.getTagNameByCode("nationalityTag",item.get("nationCode"))) 
             item.put("shipTypeCode",TagUtils.getTagNameByCode("shipClassTag",item.get("shipTypeCode"))) 
             item.put("regportCode",TagUtils.getTagNameByCode("shipRegportTag",item.get("regportCode"))) 
             item.put("replyOrg",TagUtils.getTagNameByCode("issuOrgTag",item.get("replyOrg")))  
             item.put("submitUnit",TagUtils.getTagNameByCode("issuOrgTag",item.get("submitUnit")))  
             item.put("releaseMark",TagUtils.getTagNameByCode("releaseMark",item.get("flag")))  
              item.put("invsgtDemand",TagUtils.getTagNameByCode("invsgtDemandTag",item.get("invsgtDemand")))
             totalCount = item.get("totalCount");

        }  

if(data==null){
    data=[];
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


   