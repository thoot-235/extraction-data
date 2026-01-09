{
  "properties" : { },
  "id" : "copy1721632352992d63625",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "根据船舶登记号查询船舶关系表(旧接口备份)",
  "createTime" : 1721632263205,
  "updateTime" : null,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/getRefByShipRegNo_bak",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipRegNo",
    "value" : "120115000086",
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
  "responseBody" : null,
  "description" : "",
  "requestBodyDefinition" : {
    "name" : null,
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  },
  "responseBodyDefinition" : {
    "name" : null,
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import log;
import response;
 var Sql="""select a.id, card_type,
                         type,
                         card_type_big,
                         card_no,
                         card_name,

                         b.ship_name_cn
                         
                    from bds_base_data.CHANGE_REF_SHIP a
                    left join bds_base_data.sc_ship_basic_data b
                      on a.ship_reg_no = b.ship_reg_no
                   where 1 = 1 and a.is_delete = '0' ?{shipRegNo,and  a.ship_reg_no =#{shipRegNo}} 
                  order by a.import_time desc"""      
      
       var refData=db.base_data.camel().select(Sql).group(k => k.type); 
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: refData
});