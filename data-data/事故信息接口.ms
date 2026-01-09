{
  "properties" : { },
  "id" : "bb7bb3d73bb64ea9884f4b2f285d1ade",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "事故信息接口",
  "createTime" : null,
  "updateTime" : 1693552389526,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/listAccidentShip",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipNameCn",
    "value" : "赣武宁货3314",
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
    "value" : "GAN WU NING HUO 3314",
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
    "value" : "350315000046",
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
    "value" : "CN20099436517",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"totalCount\": \"1\",\n            \"acciSummary\": \"2018年11月5日0345时，“长江之福”（集装箱船，武汉至上海，吃水3.4米，最低配员6人，实际在船9人）冒雾航行下水至武穴2号红浮附近，与在该水域锚泊的“苏宿货1756”轮发生碰撞，“长江之福”船球鼻首破损，无进水，“苏宿货1756“轮在航道外沉没，船上两人获救，无人员伤亡，不碍航。\",\n            \"acciTime\": \"2018-11-05\",\n            \"acciName\": \"\",\n            \"ifAbroad\": \"1\",\n            \"acciType\": \"碰撞\",\n            \"adminOrgCode\": \"九江武穴海事处\",\n            \"acciLocDesc\": \"武穴1号红浮至2号红浮间航道外\",\n            \"acciGrade\": \"小事故\",\n            \"shipInjury\": \"0\",\n            \"shipDeath\": \"0\",\n            \"shipLoss\": \"0\",\n            \"acciPriReasonAnalysis\": \"”长江之福“轮下水冒雾航行，未能及时发现锚泊船“苏宿货1756”轮，导致碰撞。\",\n            \"acciEmergencyResponse\": \"1、立即派出”海巡12220艇“赶赴现场开展事故调查处理，因大雾0630时赶到现场；2、通知航道部门前往沉船区域扫测定位；3、发布航行警告，提醒过往船舶避开事故水域；4、联系武穴打捞公司派船前往事故水域开展沉船打捞工作；5、0530时，武穴、新洲水道发布禁航令，禁止上下水船舶通行，0955时解禁。\",\n            \"acciRemark\": \"\",\n            \"nationality\": \"\"\n        }],\n        \"total\": 1\n    }\n}",
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
        "name" : "list",
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
            "name" : "acciSummary",
            "value" : "2018年11月5日0345时，“长江之福”（集装箱船，武汉至上海，吃水3.4米，最低配员6人，实际在船9人）冒雾航行下水至武穴2号红浮附近，与在该水域锚泊的“苏宿货1756”轮发生碰撞，“长江之福”船球鼻首破损，无进水，“苏宿货1756“轮在航道外沉没，船上两人获救，无人员伤亡，不碍航。",
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
            "name" : "acciTime",
            "value" : "2018-11-05",
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
            "name" : "acciName",
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
            "name" : "ifAbroad",
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
            "name" : "acciType",
            "value" : "碰撞",
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
            "name" : "adminOrgCode",
            "value" : "九江武穴海事处",
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
            "name" : "acciLocDesc",
            "value" : "武穴1号红浮至2号红浮间航道外",
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
            "name" : "acciGrade",
            "value" : "小事故",
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
            "name" : "shipInjury",
            "value" : "0",
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
            "name" : "shipDeath",
            "value" : "0",
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
            "name" : "shipLoss",
            "value" : "0",
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
            "name" : "acciPriReasonAnalysis",
            "value" : "”长江之福“轮下水冒雾航行，未能及时发现锚泊船“苏宿货1756”轮，导致碰撞。",
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
            "name" : "acciEmergencyResponse",
            "value" : "1、立即派出”海巡12220艇“赶赴现场开展事故调查处理，因大雾0630时赶到现场；2、通知航道部门前往沉船区域扫测定位；3、发布航行警告，提醒过往船舶避开事故水域；4、联系武穴打捞公司派船前往事故水域开展沉船打捞工作；5、0530时，武穴、新洲水道发布禁航令，禁止上下水船舶通行，0955时解禁。",
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
            "name" : "acciRemark",
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
            "name" : "nationality",
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
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;

var cbSql;

cbSql = """
select rownum rowno, total_count,acci_Summary,to_char(acci_Time,'yyyy-MM-dd') acci_Time,acci_Name,if_Abroad,acci_Type, rpad(ADMIN_ORG_CODE, 6, 0) admin_Org_Code,acci_Loc_Desc
    ,acci_Grade,ship_Injury,ship_Death,ship_Loss,ACCI_PRI_REASON_ANALYSIS,ACCI_EMERGENCY_RESPONSE,ACCI_REMARK
          from (
                select count(pb.ID) over() total_count,pb.acci_Summary,pb.acci_Time,pb.acci_Name,
                pb.if_Abroad,pb.acci_Type,
				pb.admin_Org_Code,pb.acci_Loc_Desc,
                                pb.acci_Grade,p.ship_Injury,p.ship_Death,p.ship_Loss,pb.ACCI_PRI_REASON_ANALYSIS,pb.ACCI_EMERGENCY_RESPONSE,pb.ACCI_REMARK
                from ACCI_BASIC_DATA pb
        left join    ACCI_SHIP p on pb.id=p.ACCIDENT_INFO_ID
                where 1=1  
                ?{shipNameCn,and p.ship_name_cn =#{shipNameCn}}
                ?{shipId,or p.SHIP_ID =#{shipId}}
                ?{shipNameEn,or p.ship_name_en =#{shipNameEn}}
                
                and pb.delete_flag='0'
                and p.delete_flag='0'
                order by pb.acci_Time desc) b  
""";

if(shipId!=null&&shipId!=''){
  cbSql = """
select rownum rowno, total_count,acci_Summary,to_char(acci_Time,'yyyy-MM-dd') acci_Time,acci_Name,if_Abroad,acci_Type, rpad(ADMIN_ORG_CODE, 6, 0) admin_Org_Code,acci_Loc_Desc
    ,acci_Grade,ship_Injury,ship_Death,ship_Loss,ACCI_PRI_REASON_ANALYSIS,ACCI_EMERGENCY_RESPONSE,ACCI_REMARK
          from (
                select count(pb.ID) over() total_count,pb.acci_Summary,pb.acci_Time,pb.acci_Name,
                pb.if_Abroad,pb.acci_Type,
				pb.admin_Org_Code,pb.acci_Loc_Desc,
                                pb.acci_Grade,p.ship_Injury,p.ship_Death,p.ship_Loss,pb.ACCI_PRI_REASON_ANALYSIS,pb.ACCI_EMERGENCY_RESPONSE,pb.ACCI_REMARK
                from ACCI_BASIC_DATA pb
        left join    ACCI_SHIP p on pb.id=p.ACCIDENT_INFO_ID
                where 1=1  
                 ?{shipId,and p.SHIP_ID =#{shipId}}
                ?{shipNameCn,or p.ship_name_cn =#{shipNameCn}}
               
                ?{shipNameEn,or p.ship_name_en =#{shipNameEn}}
                
                and pb.delete_flag='0'
                and p.delete_flag='0'
                order by pb.acci_Time desc) b  
""";
}else{

  if(shipNameCn!=null){
    cbSql = """
select rownum rowno, total_count,acci_Summary,to_char(acci_Time,'yyyy-MM-dd') acci_Time,acci_Name,if_Abroad,acci_Type, rpad(ADMIN_ORG_CODE, 6, 0) admin_Org_Code,acci_Loc_Desc
    ,acci_Grade,ship_Injury,ship_Death,ship_Loss,ACCI_PRI_REASON_ANALYSIS,ACCI_EMERGENCY_RESPONSE,ACCI_REMARK
          from (
                select count(pb.ID) over() total_count,pb.acci_Summary,pb.acci_Time,pb.acci_Name,
                pb.if_Abroad,pb.acci_Type,
				pb.admin_Org_Code,pb.acci_Loc_Desc,
                                pb.acci_Grade,p.ship_Injury,p.ship_Death,p.ship_Loss,pb.ACCI_PRI_REASON_ANALYSIS,pb.ACCI_EMERGENCY_RESPONSE,pb.ACCI_REMARK
                from ACCI_BASIC_DATA pb
        left join    ACCI_SHIP p on pb.id=p.ACCIDENT_INFO_ID
                where 1=1  
                ?{shipNameCn,and p.ship_name_cn =#{shipNameCn}}
                ?{shipId,or p.SHIP_ID =#{shipId}}
                ?{shipNameEn,or p.ship_name_en =#{shipNameEn}}
                
                and pb.delete_flag='0'
                and p.delete_flag='0'
                order by pb.acci_Time desc) b  
""";
}




if((shipNameCn==null||shipNameCn=='')&&shipNameEn!=null&&shipNameEn!=''){
    cbSql = """
select rownum rowno, total_count,acci_Summary,to_char(acci_Time,'yyyy-MM-dd') acci_Time,acci_Name,if_Abroad,acci_Type, rpad(ADMIN_ORG_CODE, 6, 0) admin_Org_Code,acci_Loc_Desc
    ,acci_Grade,ship_Injury,ship_Death,ship_Loss,ACCI_PRI_REASON_ANALYSIS,ACCI_EMERGENCY_RESPONSE,ACCI_REMARK
          from (
                select count(pb.ID) over() total_count,pb.acci_Summary,pb.acci_Time,pb.acci_Name,
                pb.if_Abroad,pb.acci_Type,
				pb.admin_Org_Code,pb.acci_Loc_Desc,
                                pb.acci_Grade,p.ship_Injury,p.ship_Death,p.ship_Loss,pb.ACCI_PRI_REASON_ANALYSIS,pb.ACCI_EMERGENCY_RESPONSE,pb.ACCI_REMARK
                from ACCI_BASIC_DATA pb
        left join    ACCI_SHIP p on pb.id=p.ACCIDENT_INFO_ID
                where 1=1  
                 ?{shipNameEn,and p.ship_name_en =#{shipNameEn}}

                 ?{shipId,or p.SHIP_ID =#{shipId}}
                ?{shipNameCn,or p.ship_name_cn =#{shipNameCn}}
               
                
                and pb.delete_flag='0'
                and p.delete_flag='0'
                order by pb.acci_Time desc) b  
""";
}

}




import response
var list = db.biz_data.camel().select(cbSql);
var totalCount = 0;
for (item in list) {
    item.put("acciType", TagUtils.getTagNameByCode("accidentTypesTag", item.get("acciType")))
    var adminOrgCode =item.get("adminOrgCode");
    if (adminOrgCode != null && adminOrgCode.length() < 6) {
        String to = "";
        val y = 6 - adminOrgCode.length();
        val k = 0;
        for (k in range(0, y - 1)) {
            to += "0";
            ++k;
        }
        adminOrgCode += to;
    }
       var _code=item.get("adminOrgCode")
    
            if(_code!=null){
                _codeCn=TagUtils.getTagNameByCode("issuOrgTag", _code);
                if(_code==_codeCn){
                    _code=_code.substring(0,4)+'00';
                    _codeCn=TagUtils.getTagNameByCode("issuOrgTag", _code);
                if(_code==_codeCn){
                        _code=_code.substring(0,2)+'0000';
                    _codeCn=TagUtils.getTagNameByCode("issuOrgTag", _code);
                }
                
                }
                item.put("adminOrgCode", TagUtils.getTagNameByCode("issuOrgTag", _codeCn));
            }
    
   // item.put("adminOrgCode", TagUtils.getTagNameByCode("issuOrgTag", adminOrgCode))
    item.put("acciGrade", TagUtils.getTagNameByCode("accidentLevelTag", item.get("acciGrade")))
    item.put("nationality", TagUtils.getTagNameByCode("nationalityTag", item.get("nationality")))
    if (item.get("shipTypeCode") != null) {
        item.put("shipTypeCode", TagUtils.getTagNameByCode("shipClassTag", item.get("shipTypeCode")::string.length() <= 2 ?
            item.get("shipTypeCode") + "00" : item.get("shipTypeCode")))
    }
    totalCount = item.get("totalCount");
}
var back = {
    "list": list,
    "total": Integer.parseInt(totalCount::string)
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back
});