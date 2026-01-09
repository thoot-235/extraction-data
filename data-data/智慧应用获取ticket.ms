{
  "properties" : { },
  "id" : "c6e72ce1b2db4e96b12bd74d7fffd3c7",
  "script" : null,
  "groupId" : "2617acd8a59b4b858be8913ba63b1f30",
  "name" : "智慧应用获取ticket",
  "createTime" : null,
  "updateTime" : 1764037831027,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSmartAppTic",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"uid\":\"4462EF58CCC42892E0630100007F3CC6\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": \"https://sso.cjhy.com.cn:5432/jsp/public/loginbymn.jsp?ticket=87SHK/9kciwQlVexg9tqAxuPD4jn43Oq17odRP6+FdgGSaxmofqs5EQPA6W60sWmsLxGghnssMjSs0DofBGtbA==&url=http%3A%2F%2F172.17.171.161%3A8081%2FYZ-SEBS-WEB%2F\"\n}",
  "description" : "",
  "requestBodyDefinition" : {
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
      "name" : "uid",
      "value" : "4462EF58CCC42892E0630100007F3CC6",
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
      "value" : "https://sso.cjhy.com.cn:5432/jsp/public/loginbymn.jsp?ticket=87SHK/9kciwQlVexg9tqAxuPD4jn43Oq17odRP6+FdgGSaxmofqs5EQPA6W60sWmsLxGghnssMjSs0DofBGtbA==&url=http%3A%2F%2F172.17.171.161%3A8081%2FYZ-SEBS-WEB%2F",
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
  }
}
================================
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import org.ssssssss.magic.utils.SM4;
import org.springblade.core.secure.BladeUser;
import java.net.URLEncoder;
import java.util.Date;
import log;
import response;
//统一门户地址
var loginUrl = "https://sso.cjhy.com.cn:5432/jsp/public/loginbymn.jsp?ticket=";
var appkey = "&A722C63DB8EC8625AF6CF71CB8C2D939&"

var uid = body.uid;
if(uid == null || uid == ""){
        return response.json({
                resultCode: 500,
                resultMsg: "请输入uid",
                result: null
        });
}
//根据uid查询智慧应用相对应的系统url、用户名
var smartAppSql = """
        select smart_app_url, login_name from bds_base_data.cockpit_smart_app where id = #{uid}
"""

var smartApp = db.base_data.camel().selectOne(smartAppSql);
var loginName = "";
loginName = smartApp.get("loginName") ::string;
var smartAppUrl = "";
smartAppUrl = smartApp.get("smartAppUrl") ::string;
smartAppUrl = URLEncoder.encode(smartAppUrl, "UTF-8");
var date = new Date();
var zero = date.getTime();
var ticket = loginName + appkey + zero;
log.info("ticket-------------"+ticket);
ticket = SM4.getInstance().encrypt(ticket);
var url = loginUrl+ticket + "&url="+smartAppUrl

return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: url
    });
