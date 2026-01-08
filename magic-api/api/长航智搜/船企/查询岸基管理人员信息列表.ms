{
  "properties" : { },
  "id" : "43acc484daff403c91f2ad9cc92d1b7c",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "查询岸基管理人员信息列表",
  "createTime" : null,
  "updateTime" : 1693552388980,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShoreBaseMangerMess",
  "method" : "GET",
  "parameters" : [ {
    "name" : "belongCompany",
    "value" : "9134032166793694XU",
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
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "1",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "10",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"list\": [],\n        \"total\": 0\n    }\n}",
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
        "children" : [ ]
      }, {
        "name" : "total",
        "value" : "0",
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
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import log;
import response;
 
var sql = """select *
        from (select rownum rowno, b.*
              from (
  select id_card_no,
       name,
       sex,
       shore_based_manage_class,
       duty,
       phone,
       address,count(*) over() total_count
    FROM BDS_BASE_DATA.COMPANY_SHORE_BASED_MANAGE_PER
  WHERE   belong_company = #{belongCompany}
  ) b
        where rownum <= (#{page}*#{size}))
        a where a.rowno >((#{page}-1)*#{size})
"""
var basic = db.base_data.camel().select(sql);
if (basic.size()>0) {
    for (item in basic) {
    item.put("shoreBasedManageClassCn", TagUtils.getTagNameByCode("basedManageClassTag", item.get("shoreBasedManageClass")));
    item.put("sexCn", TagUtils.getTagNameByCode("sexTag", item.get("sex")));
    totalCount = item.get("totalCount");
     //脱敏处理
    item.put("idCardNoT", DesensitizationUtil.idCardNum(item.get("idCardNo")))
    }
}
var  back={};
if(basic.size()>0){
        back.put("list",basic)
        back.put("total",Integer.parseInt(totalCount::string) )
}else{
        back.put("list",[])
        back.put("total",0)
}
 


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: back
	});