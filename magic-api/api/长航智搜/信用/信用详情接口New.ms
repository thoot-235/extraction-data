{
  "properties" : { },
  "id" : "beb78d32fcbd4b40a22911c029e2fbe6",
  "script" : null,
  "groupId" : "a2c371bd05c44f67b356888b31fa69af",
  "name" : "信用详情接口New",
  "createTime" : null,
  "updateTime" : 1754449272248,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCreditDataDetailNew",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"cardNo\": \"KgSHcfIOoOryLUkVh/rkNA==\",\r\n    \"type\": \"gv36wPEJMd8qYZEUiseC2w==\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"cardNo\": \"91341800711708670T\",\n        \"seriousBreachFlag\": \"N\",\n        \"dataSource\": \"长航信用\",\n        \"bodyType\": \"公司\",\n        \"basicsNumber\": \"1000\",\n        \"deductionNumber\": \"0\",\n        \"bonusNumber\": \"100\",\n        \"safeValue\": \"1100\",\n        \"name\": \"宣城市佳兴水运有限责任公司\",\n        \"uscc\": \"\",\n        \"companyName\": \"\",\n        \"startTime\": \"\",\n        \"legalRepresentative\": \"\",\n        \"companyRegAddr\": \"\",\n        \"companyOperateAddr\": \"\",\n        \"contactTel\": \"\",\n        \"companyType\": \"\",\n        \"companyNature\": \"\",\n        \"industry\": \"\",\n        \"companyOperateScop\": \"\",\n        \"shipNum\": \"\",\n        \"rptTimes\": \"\",\n        \"activeState\": \"\",\n        \"breakDegree\": \"信用长江绿码\",\n        \"isInCompany\": \"\",\n        \"district\": \"\",\n        \"orgName\": \"\",\n        \"xyjlcs\": \"\",\n        \"docNo\": \"\",\n        \"docStartTime\": \"\",\n        \"docXyq\": \"\",\n        \"lastUpdateTime\": \"\",\n        \"delFlag\": \"\",\n        \"createBy\": \"\",\n        \"updateBy\": \"\",\n        \"updateTime\": \"\",\n        \"createTime\": \"\",\n        \"xypf\": \"\",\n        \"sfzdgz\": \"\",\n        \"sfbzcx\": \"\",\n        \"status\": \"\",\n        \"contactPerson\": \"\",\n        \"importTimeZt\": \"\",\n        \"orgCode\": \"\",\n        \"regcapital\": \"\",\n        \"registerProvince\": \"\",\n        \"registerCity\": \"\",\n        \"registerCounty\": \"\",\n        \"districtTj\": \"\",\n        \"integrity\": \"\",\n        \"ztLable\": \"\",\n        \"orgCodeSh\": \"\",\n        \"orgNameSh\": \"\",\n        \"importTime\": \"\",\n        \"shipGrosston\": \"\",\n        \"ztLableFlag\": \"否\"\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "cardNo",
      "value" : "KgSHcfIOoOryLUkVh/rkNA==",
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
      "name" : "type",
      "value" : "gv36wPEJMd8qYZEUiseC2w==",
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
        "name" : "cardNo",
        "value" : "91341800711708670T",
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
        "name" : "seriousBreachFlag",
        "value" : "N",
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
        "name" : "dataSource",
        "value" : "长航信用",
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
        "name" : "bodyType",
        "value" : "公司",
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
        "name" : "basicsNumber",
        "value" : "1000",
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
        "name" : "deductionNumber",
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
        "name" : "bonusNumber",
        "value" : "100",
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
        "name" : "safeValue",
        "value" : "1100",
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
        "name" : "name",
        "value" : "宣城市佳兴水运有限责任公司",
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
        "name" : "uscc",
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
        "name" : "companyName",
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
        "name" : "startTime",
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
        "name" : "legalRepresentative",
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
        "name" : "companyRegAddr",
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
        "name" : "companyOperateAddr",
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
        "name" : "contactTel",
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
        "name" : "companyType",
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
        "name" : "companyNature",
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
        "name" : "industry",
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
        "name" : "companyOperateScop",
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
        "name" : "shipNum",
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
        "name" : "rptTimes",
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
        "name" : "activeState",
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
        "name" : "breakDegree",
        "value" : "信用长江绿码",
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
        "name" : "isInCompany",
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
        "name" : "district",
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
        "name" : "orgName",
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
        "name" : "xyjlcs",
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
        "name" : "docNo",
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
        "name" : "docStartTime",
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
        "name" : "docXyq",
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
        "name" : "lastUpdateTime",
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
        "name" : "delFlag",
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
        "name" : "createBy",
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
        "name" : "updateBy",
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
        "name" : "updateTime",
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
        "name" : "createTime",
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
        "name" : "xypf",
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
        "name" : "sfzdgz",
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
        "name" : "sfbzcx",
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
        "name" : "status",
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
        "name" : "contactPerson",
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
        "name" : "importTimeZt",
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
        "name" : "orgCode",
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
        "name" : "regcapital",
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
        "name" : "registerProvince",
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
        "name" : "registerCity",
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
        "name" : "registerCounty",
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
        "name" : "districtTj",
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
        "name" : "integrity",
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
        "name" : "ztLable",
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
        "name" : "orgCodeSh",
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
        "name" : "orgNameSh",
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
        "name" : "importTime",
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
        "name" : "shipGrosston",
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
        "name" : "ztLableFlag",
        "value" : "否",
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
  }
}
================================
import response;
import log;
var sql="""""";
var ret=[];
import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;--正式放开
import 'com.alibaba.fastjson.JSON' as JSONA
//信用长江绿码1 信用长江蓝码2 信用长江黄码3 信用长江红码4
var cardNo=(body.cardNo==null?"":body.cardNo).replace("<em>","").replace("</em>","");
cardNo=ZzSecurityHelper.decryptAES(body.cardNo);

var type=(body.type==null?"":body.type).replace("<em>","").replace("</em>","");
type=ZzSecurityHelper.decryptAES(body.type);

var selectSql="""""";
if("ship".equals(type)){//查船舶
   selectSql="""select a.DEDUCTION_OBJECT_ID as card_No,
                     '长航信用' as data_Source,
                     '船舶' as body_Type,
                    a.SERIOUS_BREACH_FLAG,
                    a.BASICS_NUMBER,
                    a.DEDUCTION_NUMBER,
                    a.BONUS_NUMBER,
                    a.SCALE_INTERVAL as safe_Value,
                    a.DEDUCTION_OBJECT_NAME as name,
                    b.SHIP_REG_NO,
                    b.SHIP_ID,
                    b.SHIP_NAME_CN,
                    b.SHIP_NAME_EN,
                    b.MMSI,
                    b.SHIP_FIRSTREG_NO,
                    b.SHIP_INSPECT_NO,
                    b.SHIP_REGION_TYPE_NAME,
                    b.REGPORT_NAME,
                    b.ORIG_REGPORT_NAME,
                    b.SHIP_TYPE_NAME,
                    b.SHIP_BIG_TYPE,
                    b.SHIP_POWER,
                    b.SHIP_LENGTH,
                    b.SHIP_BREADTH,
                    b.SHIP_DEPTH,
                    b.SHIP_GROSSTON,
                    b.SHIP_NETTON,
                    b.SHIP_DWT,
                    b.SHIP_ENGINE_NUM,
                    b.NATION_NAME,
                    b.SHIP_CONTAINER_NUM,
                    b.SHIP_PARKING_NUM,
                    b.SHIP_PASSENGER_NUM,
                    b.SAILINGAREA_NAME,
                    b.SHIP_BUILT_DATE,
                    b.SHIP_OWNER,
                    b.SHIP_OPERATOR,
                    b.SHIP_MANAGER,
                    b.OWNER_USCC,
                    b.OPERATOR_USCC,
                    b.MANAGER_USCC,
                    b.OWNER_PHONE,
                    b.OPERATOR_PHONE,
                    b.MANAGER_PHONE,
                    b.OWNER_ADDR,
                    b.OPERATOR_ADDR,
                    b.MANAGER_ADDR,
                    b.ORG_NAME,
                    b.INSPECT_ORG_NAME,
                    b.RPT_TIMES,
                    b.ACTIVE_STATE,
                    (case when a.AQYXM='1' then '信用长江红码' 
                    when a.AQYXM='2' then '信用长江黄码'
                    when a.AQYXM='3' then '信用长江蓝码'
                    when a.AQYXM='4' then '信用长江绿码'
                    else '' end) break_Degree  ,
                    b.PRE_PORT_NAME,
                    b.SFXNY,
                    b.SFZDGX,
                    b.SFBJCX,
                    b.DEL_FLAG,
                    b.CREATE_BY,
                    b.CREATE_TIME,
                    b.UPDATE_BY,
                    b.UPDATE_TIME,
                    b.LAST_UPDATE_TIME,
                    b.XYJLCS,
                    b.XYPF,
                    b.ORIG_SHIP_NAME_CN,
                    b.STATUS,
                    b.IMPORT_TIME,
                    
                    b.ORG_CODE,
                    b.STATUS_FLAG_NAME,
                    b.PROVINCE,
                    b.REPORT_ORG_NAME,
                    b.REPORT_ORG_CODE,
                    b.INTEGRITY,
                    b.REPORT_TIME,
                    b.ZT_LABLE,
                    b.REPORT_PROVINCE,
                    b.GLSD,
                    b.ORG_CODE_SH,
                    b.ORG_NAME_SH,
                    b.DISTRICT_TJ,
                    b.GLXQ_ORG_CODE,
                    b.GLXQ_ORG_NAME,
                    b.IMPORT_TIME_ZT,
                    (case when ZT_LABLE like '诚信船舶%' then '是' else '否' end) ZT_LABLE_Flag
                from ods_hs_share.BASE_SC_ACCOUNT_GUARD a
                left join ods_hs_share.sc_ship_result b
                  on a.DEDUCTION_OBJECT_ID = b.ship_id
                and b.status = '1'
              where a.process_state = '2'
                and a.zhuti_name = '船舶'
                ?{  cardNo!=null and cardNo!='', 
                and a.DEDUCTION_OBJECT_ID = #{cardNo}}
                ?{partFlag=='1' and keyword!=null and keyword!='', 
                and a.DEDUCTION_OBJECT_NAME = #{keyword}}

                ?{partFlag!='1' and keyword!=null and keyword!='', 
                and a.DEDUCTION_OBJECT_NAME like '%'||#{keyword}||'%' }

                

              """;

}else if("person".equals(type)){//查船员
 selectSql="""select a.DEDUCTION_OBJECT_ID as card_No,
       a.SERIOUS_BREACH_FLAG,
       '长航信用' as data_Source,
        '船员' as body_Type,
       a.BASICS_NUMBER,
       a.DEDUCTION_NUMBER,
       a.BONUS_NUMBER,
        a.SCALE_INTERVAL as safe_Value ,
       a.DEDUCTION_OBJECT_NAME  as name,
       b.ID_CARD_NO,b.BIRTH_DATE,b.SEX,b.NATION,b.IDCARD_ADDRESS,b.MOBILE_PHONE,b.CREW_WFJS,b.DUTY,b.DISTRICT,
       b.ORG_NAME, (case when a.AQYXM='1' then '信用长江红码' 
                    when a.AQYXM='2' then '信用长江黄码'
                    when a.AQYXM='3' then '信用长江蓝码'
                    when a.AQYXM='4' then '信用长江绿码'
                    else '' end) break_Degree ,b.ACTIVE_STATE,b.XYPF,b.CREW_TYPE,b.SFZDGZ,b.SFBZCX,b.STATUS,b.LAST_UPDATE_TIME,b.DEL_FLAG,b.CREATE_BY,b.UPDATE_BY,b.UPDATE_TIME,b.CREATE_TIME,b.XYJLCS,b.PRE_PORT_NAME,b.IMPORT_TIME,b.ORG_CODE,b.SHIP_REGION_TYPE_NAME,b.REGISTER_PROVINCE,b.REGISTER_CITY,b.REGISTER_COUNTY,b.INTEGRITY,b.ON_IMPORT_TIME,b.ZT_LABLE,b.GLSD,b.ORG_CODE_SH,b.ORG_NAME_SH,b.DISTRICT_TJ,b.GLXQ_ORG_CODE,b.GLXQ_ORG_NAME,b.IMPORT_TIME_ZT,
                    (case when ZT_LABLE like '诚信船员%' then '是' else '否' end) ZT_LABLE_Flag
  from ods_hs_share.BASE_SC_ACCOUNT_GUARD a
  left join ods_hs_share.sc_crew_result b
    on a.DEDUCTION_OBJECT_ID = b.id_card_no
   and b.status = '1'
 where a.process_state = '2'
   and a.zhuti_name = '船员'
   ?{  cardNo!=null and cardNo!='', 
                and a.DEDUCTION_OBJECT_ID = #{cardNo}}
    ?{partFlag=='1' and keyword!=null and keyword!='', 
                and a.DEDUCTION_OBJECT_NAME = #{keyword}}

                ?{partFlag!='1' and keyword!=null and keyword!='', 
                and a.DEDUCTION_OBJECT_NAME like '%'||#{keyword}||'%' }

                """

}else if("company".equals(type)){//查船企
     selectSql="""select a.DEDUCTION_OBJECT_ID as card_No,
            a.SERIOUS_BREACH_FLAG,
             '长航信用' as data_Source,
            '公司' as body_Type,
            a.BASICS_NUMBER,
            a.DEDUCTION_NUMBER,
            a.BONUS_NUMBER,
            a.SCALE_INTERVAL as safe_Value,
            a.DEDUCTION_OBJECT_NAME  as name,
            b.USCC,b.COMPANY_NAME,b.START_TIME,b.LEGAL_REPRESENTATIVE,b.COMPANY_REG_ADDR,b.COMPANY_OPERATE_ADDR,b.CONTACT_TEL,b.COMPANY_TYPE,b.COMPANY_NATURE,b.INDUSTRY,b.COMPANY_OPERATE_SCOP,b.SHIP_NUM,b.RPT_TIMES,b.ACTIVE_STATE,(case when a.AQYXM='1' then '信用长江红码' 
                    when a.AQYXM='2' then '信用长江黄码'
                    when a.AQYXM='3' then '信用长江蓝码'
                    when a.AQYXM='4' then '信用长江绿码'
                    else '' end) break_Degree  ,b.IS_IN_COMPANY,b.DISTRICT,b.ORG_NAME,b.XYJLCS,b.DOC_NO,b.DOC_START_TIME,b.DOC_XYQ,b.LAST_UPDATE_TIME,b.DEL_FLAG,b.CREATE_BY,b.UPDATE_BY,b.UPDATE_TIME,b.CREATE_TIME,b.XYPF,b.SFZDGZ,b.SFBZCX,b.STATUS,b.CONTACT_PERSON,b.IMPORT_TIME_ZT,b.ORG_CODE,b.REGCAPITAL,b.REGISTER_PROVINCE,b.REGISTER_CITY,b.REGISTER_COUNTY,b.DISTRICT_TJ,b.INTEGRITY,b.ZT_LABLE,b.ORG_CODE_SH,b.ORG_NAME_SH,b.IMPORT_TIME,b.SHIP_GROSSTON,
                    (case when ZT_LABLE like '诚信公司%' then '是' else '否' end) ZT_LABLE_Flag
        from ods_hs_share.BASE_SC_ACCOUNT_GUARD a
        left join ods_hs_share.sc_company_result b
          on a.DEDUCTION_OBJECT_ID = b.uscc
        and b.status = '1'
      where a.process_state = '2'
        and a.zhuti_name = '公司'  
         ?{  cardNo!=null and cardNo!='', 
                and a.DEDUCTION_OBJECT_ID = #{cardNo}}
         ?{partFlag=='1' and keyword!=null and keyword!='', 
                and a.DEDUCTION_OBJECT_NAME = #{keyword}}
                 

                 
                """
}

var data=db.ods_data.camel().selectOne(selectSql);

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result:  ZzSecurityHelper.encryptAES(JSONA.toJSONString(data))
  });