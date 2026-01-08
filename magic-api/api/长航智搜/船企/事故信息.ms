{
  "properties" : { },
  "id" : "e8ce9bfc7779496d9409daa311507f38",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "事故信息",
  "createTime" : null,
  "updateTime" : 1727406165981,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getAccidentShipInfo",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyName",
    "value" : "江苏林海海运有限公司",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"id\": \"1ed3f584d42e4946aa3041db501ebff2\",\n        \"shipNameCn\": \"新林海6\",\n        \"acciTime\": \"2019-04-14\",\n        \"acciName\": \"04.14新林海6与怀安江集碰撞\",\n        \"acciType\": \"1\",\n        \"adminOrgCode\": \"060104\",\n        \"acciSummary\": \"2019年4月14日怀安县怀安船务有限责任公司所属船舶“怀安江集”（南京至上海航次）在南京川田船厂修理完成横越下水过程中，与正常下水的江苏林海海运有限公司所属船舶“新林海6”（安徽至宁波航次）于4月14日1000时左右在南京草鞋峡水道二桥1号红浮附近水域发生碰撞，造成两船船体不同程度的损害的事故，事故未有沉船和人员伤亡。\\r\\n\",\n        \"acciLocDesc\": \"南京草鞋峡水道二桥1号红 浮附近水域\",\n        \"acciPriReasonAnalysis\": \"“怀安江集”轮在二桥水域由北岸横越进入下行通道分道过程中，受突发大风的影响，未保持正规了望，与对方船未统一会让意图，未主动避让在顺航道正常航行的船舶；违反了《中华人民共和国内河避碰规则》第九条第一款、《长江江苏段船舶定线制规定（2013）》第二十九条之规定。“新林海6”在沿下水通航分道行驶过程中，未注意横越船动态，未提前采取有效措施协助避让。违反了《长江江苏段船舶定线制规定（2013）》第二十五条之规定。\\r\\n\",\n        \"acciEmergencyResponse\": \"接到指挥中心通知后，“海巡06216”于1130时抵达现场，对事故船舶进行了现场勘查。\",\n        \"acciRemark\": \"\",\n        \"acciTypeCn\": \"碰撞\",\n        \"adminOrgCn\": \"新生圩海事处\"\n    }, {\n        \"id\": \"1ed3f584d42e4946aa3041db501ebff2\",\n        \"shipNameCn\": \"新林海6\",\n        \"acciTime\": \"2019-04-14\",\n        \"acciName\": \"04.14新林海6与怀安江集碰撞\",\n        \"acciType\": \"1\",\n        \"adminOrgCode\": \"060104\",\n        \"acciSummary\": \"2019年4月14日怀安县怀安船务有限责任公司所属船舶“怀安江集”（南京至上海航次）在南京川田船厂修理完成横越下水过程中，与正常下水的江苏林海海运有限公司所属船舶“新林海6”（安徽至宁波航次）于4月14日1000时左右在南京草鞋峡水道二桥1号红浮附近水域发生碰撞，造成两船船体不同程度的损害的事故，事故未有沉船和人员伤亡。\\r\\n\",\n        \"acciLocDesc\": \"南京草鞋峡水道二桥1号红 浮附近水域\",\n        \"acciPriReasonAnalysis\": \"“怀安江集”轮在二桥水域由北岸横越进入下行通道分道过程中，受突发大风的影响，未保持正规了望，与对方船未统一会让意图，未主动避让在顺航道正常航行的船舶；违反了《中华人民共和国内河避碰规则》第九条第一款、《长江江苏段船舶定线制规定（2013）》第二十九条之规定。“新林海6”在沿下水通航分道行驶过程中，未注意横越船动态，未提前采取有效措施协助避让。违反了《长江江苏段船舶定线制规定（2013）》第二十五条之规定。\\r\\n\",\n        \"acciEmergencyResponse\": \"接到指挥中心通知后，“海巡06216”于1130时抵达现场，对事故船舶进行了现场勘查。\",\n        \"acciRemark\": \"\",\n        \"acciTypeCn\": \"碰撞\",\n        \"adminOrgCn\": \"新生圩海事处\"\n    }]\n}",
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
          "name" : "id",
          "value" : "1ed3f584d42e4946aa3041db501ebff2",
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
          "value" : "新林海6",
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
          "value" : "2019-04-14",
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
          "value" : "04.14新林海6与怀安江集碰撞",
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
          "name" : "adminOrgCode",
          "value" : "060104",
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
          "value" : "2019年4月14日怀安县怀安船务有限责任公司所属船舶“怀安江集”（南京至上海航次）在南京川田船厂修理完成横越下水过程中，与正常下水的江苏林海海运有限公司所属船舶“新林海6”（安徽至宁波航次）于4月14日1000时左右在南京草鞋峡水道二桥1号红浮附近水域发生碰撞，造成两船船体不同程度的损害的事故，事故未有沉船和人员伤亡。\\r\\n",
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
          "value" : "南京草鞋峡水道二桥1号红 浮附近水域",
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
          "value" : "“怀安江集”轮在二桥水域由北岸横越进入下行通道分道过程中，受突发大风的影响，未保持正规了望，与对方船未统一会让意图，未主动避让在顺航道正常航行的船舶；违反了《中华人民共和国内河避碰规则》第九条第一款、《长江江苏段船舶定线制规定（2013）》第二十九条之规定。“新林海6”在沿下水通航分道行驶过程中，未注意横越船动态，未提前采取有效措施协助避让。违反了《长江江苏段船舶定线制规定（2013）》第二十五条之规定。\\r\\n",
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
          "value" : "接到指挥中心通知后，“海巡06216”于1130时抵达现场，对事故船舶进行了现场勘查。",
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
          "name" : "acciTypeCn",
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
          "name" : "adminOrgCn",
          "value" : "新生圩海事处",
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
import response;
companyName=(companyName==null?"":companyName).replace("<em>","").replace("</em>","");
var  sql="""
select distinct d.ID,t.ship_name_cn,
       case
         when to_char(d.ACCI_TIME, 'yyyy-MM-dd') = '1900-01-01' then
          '--'
         else
          to_char(d.ACCI_TIME, 'yyyy-MM-dd')
       end ACCI_TIME,
       d.ACCI_NAME,
       d.ACCI_TYPE,
       rpad(d.ADMIN_ORG_CODE, 6, 0) ADMIN_ORG_CODE,
       d.ACCI_SUMMARY,
       d.acci_Loc_Desc,
       d.ACCI_PRI_REASON_ANALYSIS,
       d.ACCI_EMERGENCY_RESPONSE,
       d.ACCI_REMARK
  from bds_biz_data.acci_ship              t,
       ods_hs_share.trans_mgt_company_ship t2,
       bds_base_data.company_info_all      t1,
       bds_biz_data.ACCI_BASIC_DATA        d
 where t.ship_id = t2.ship_id
   and t1.company_name = t2.company_name
   and d.delete_flag = '0'
   and d.ID = t.ACCIDENT_INFO_ID
   and t1.company_name = #{companyName}

"""
var res=db.biz_data.camel().select(sql);
 for(a in res){
                a.put("acciTypeCn",TagUtils.getTagNameByCode("accidentTypesTag",a.get("acciType")));//事故种类
               //事故辖区多级机构处理
                var _code=a.get("adminOrgCode");
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
                a.put("adminOrgCn", TagUtils.getTagNameByCode("issuOrgTag", _codeCn));
            }
            }


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
	});