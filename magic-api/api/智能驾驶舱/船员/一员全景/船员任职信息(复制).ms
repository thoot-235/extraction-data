{
  "properties" : { },
  "id" : "copy1749517170712d49266",
  "script" : null,
  "groupId" : "429bf27232e44bdbae1a46ea3dcc6609",
  "name" : "船员任职信息(复制)",
  "createTime" : null,
  "updateTime" : 1749722658659,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCrewDuty_copy",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"idCardNo\": \"FXtN7UWYnjkbNKiyP+54CshLHbufzumOhzLoZ4Hxshw=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"idCardNo\": \"\",\n        \"name\": \"葛德翔\",\n        \"offiduty\": \"三副  \",\n        \"offishipnamecn\": \"中海016\",\n        \"mmsi\": \"413555910\",\n        \"shipId\": \"CN20152604213\",\n        \"servIssuDate\": \"2010/06/30\"\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
      "name" : "idCardNo",
      "value" : "FXtN7UWYnjkbNKiyP+54CshLHbufzumOhzLoZ4Hxshw=",
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
        "name" : "idCardNo",
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
        "name" : "name",
        "value" : "葛德翔",
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
        "name" : "offiduty",
        "value" : "三副",
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
        "name" : "offishipnamecn",
        "value" : "中海016",
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
        "name" : "mmsi",
        "value" : "413555910",
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
        "value" : "CN20152604213",
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
        "name" : "servIssuDate",
        "value" : "2010/06/30",
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
  }
}
================================
import org.springblade.common.utils.ZzSecurityHelper
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import log;
import response;
import 'org.springblade.core.secure.BladeUser' as BladeUser
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import org.springblade.common.utils.ZzSecurityHelper

//过滤字段
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import request;


log.info('==============开始时间：' + now()::string)
var idCardNo = (body.idCardNo == null ? "" : body.idCardNo).replace("<em>", "").replace("</em>", "");
if (idCardNo == null || idCardNo == "") {
    return response.json({
        resultCode: 200,
        resultMsg: "idCardNo不能为空"
    });
}
log.info("------------------------idCardNo---------------------------" + idCardNo);
idCardNo = ZzSecurityHelper.decryptAES(idCardNo);


var crewDutySql = """
select a.id_card_no,a.name,c.item_name_cn offiDuty,b.ship_name_cn offiShipNameCn, b.mmsi,b.ship_id from ch.c_cb_ship_eep_report_rec b, ch.c_cb_on_ship_crew_rec a ,ch.d_cy_cert_duty_code c
where a.report_id=b.report_id and  a.duty_Code=c.code and a.id_card_no = #{idCardNo} and b.report_time >=current_date-60
order by b.report_time desc limit 1
"""



var bookSql = """
select 
       case
         when to_char(ISSU_DATE, 'yyyy-mm-dd') = '1900-01-01' then
          '--'
         else
          to_char(ISSU_DATE, 'yyyy/mm/dd')
       end as serv_ISSU_DATE 
  from bds_base_data.CREW_CERT_SERVICEBOOK
 where delete_flag = '0'
   and id_card_no =#{idCardNo}
"""

var book = db.ods_data.camel().selectOne(bookSql);

var crewDuty = db.gpadmin.camel().selectOne(crewDutySql);
log.info('===============crewDuty完成时间：' + now()::string)
log.info("crewDuty11111111111111111111" + crewDuty);

var res={}
res.put("idCardNo",crewDuty.get("idCardNo"));
res.put("name",crewDuty.get("name"));
res.put("offiduty",crewDuty.get("offiduty"));
res.put("offishipnamecn",crewDuty.get("offishipnamecn"));
res.put("mmsi",crewDuty.get("mmsi"));
res.put("shipId",crewDuty.get("shipId"));
res.put("servIssuDate",book.get("servIssuDate"));

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: res
});
