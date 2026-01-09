{
  "properties" : { },
  "id" : "bec71d70b1d042e89b52ac5984670aac",
  "script" : null,
  "groupId" : "8a28188438b44a14951177035a25241b",
  "name" : "获取个人定制标签",
  "createTime" : null,
  "updateTime" : 1691749539695,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getLabelByUserId",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"msg\": \"查询成功\",\n    \"data\": [{\n        \"id\": \"1565302320521814017\",\n        \"labelName\": \"查船舶\",\n        \"labelValue\": \"ship\",\n        \"labelUrl\": \"/portal/shipList\",\n        \"labelApi\": \"/blade-search-prod/es/getShipDataList\",\n        \"labelRequestType\": \"GET\",\n        \"labelFixed\": \"1\",\n        \"labelSort\": \"1\"\n    }, {\n        \"id\": \"1575460223588683777\",\n        \"labelName\": \"查船员\",\n        \"labelValue\": \"crew\",\n        \"labelUrl\": \"/portal/crewList\",\n        \"labelApi\": \"/blade-search-prod/es/getCrewDataList\",\n        \"labelRequestType\": \"GET\",\n        \"labelFixed\": \"1\",\n        \"labelSort\": \"2\"\n    }, {\n        \"id\": \"1589448892888637441\",\n        \"labelName\": \"查企业\",\n        \"labelValue\": \"company\",\n        \"labelUrl\": \"/portal/companyList\",\n        \"labelApi\": \"/blade-search-prod/es/getCompanyDataList\",\n        \"labelRequestType\": \"GET\",\n        \"labelFixed\": \"1\",\n        \"labelSort\": \"3\"\n    }]\n}",
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
      "name" : "code",
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
      "name" : "msg",
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
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
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
          "name" : "id",
          "value" : "1565302320521814017",
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
          "name" : "labelName",
          "value" : "查船舶",
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
          "name" : "labelValue",
          "value" : "ship",
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
          "name" : "labelUrl",
          "value" : "/portal/shipList",
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
          "name" : "labelApi",
          "value" : "/blade-search-prod/es/getShipDataList",
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
          "name" : "labelRequestType",
          "value" : "GET",
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
          "name" : "labelFixed",
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
          "name" : "labelSort",
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
        } ]
      } ]
    } ]
  }
}
================================
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import response;
import 'org.springblade.core.secure.BladeUser' as  BladeUser
BladeUser user=AuthUtil.getUser();
var sql=""" """;
if(user==null){
     sql=""" select *
                from FRAME.permissions_Searchlabel_dict
               where label_name in ('查船舶', '查船员', '查企业') order by label_sort"""
}else{
   userId=user.getUserId();
    sql = """
      select *
        from (select *
                from (select a.*
                        from FRAME.permissions_Searchlabel_dict a
                      inner join frame.PERMISSIONS_DICT_user b
                          on a.id = b.dictid where 1=1 and userid='"""+userId+"""'
                      order by a.label_sort)
              union (select *
                      from FRAME.permissions_Searchlabel_dict
                    where label_name in ('查船舶', '查船员', '查企业')))
      order by label_sort
    """
}
var basic = db.frame.camel().select(sql);
if (basic == null) {
    basic = [];
}

return response.json({
    code: 200,
    msg: "查询成功",
    data: basic
});