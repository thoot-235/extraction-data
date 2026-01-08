{
  "properties" : { },
  "id" : "1c842805bb454e24a16ec3e5a04feca4",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询危货申报数据",
  "createTime" : null,
  "updateTime" : 1693552389665,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getDangerCarriage",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipId",
    "value" : "CN20099436517",
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
    "name" : "beginTime",
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
    "name" : "endTime",
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
    "name" : "page",
    "value" : "1",
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
    "name" : "size",
    "value" : "10",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [],\n        \"total\": 0\n    }\n}",
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
    "dataType" : "String",
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
import lombok.experimental.var
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;
shipId=(shipId==null?"":shipId).replace("<em>","").replace("</em>","");

var pageNum = page;
pageNum = pageNum != null & pageNum != '' ? pageNum : 1

var pageSize = size;
pageSize = pageSize != null & pageSize != '' ? pageSize : 10

var pageStart = """ select *
        from (select rownum rowno, b.*
              from (""";
var pageEnd = """ ) b
        where rownum <= ( #{pageNum} * #{pageSize})) a
        where a.rowno > ( ( #{pageNum} - 1 ) * #{pageSize} )""";

var Sql = """select a.CARRY_ID,
        a.APPLY_ID,
        a.APPLY_NO DECLARE_NO,
        a.DECLARER_ID,
        a.DECLARER_NAME,
        a.DECLARER_CERT_NO,
        a.COMP_NAME,
        replace(to_char(a.APPLY_DATE,'yyyy-mm-dd'),'1900-01-01','--') DECLARE_DATE,
        a.DECLARE_WAY_CODE DECLARE_TYPE_CODE,
        a.DECLARE_ACCOUNT,
        a.DECLARE_TYPE_CODE DECLARE_TYPE,
        a.DECLARE_TYPE_NAME,
        replace(rpad(a.MSA_ORG_CODE, 6), ' ', '0') MSA_ORG_CODE,
        replace(rpad(a.ORG_CODE, 6), ' ', '0') ORG_CODE,
        b.arrive_or_depart,
        b.ad_port_code,
        b.ad_port_name,
        count(*) OVER() total_count
        from DGR_CARRY a, DGR_CARRY_VOY b
        where a.CARRY_ID = b.carry_id 
    
        ?{shipId,and a.SHIP_ID = #{shipId}}
        ?{beginTime,and to_char(a.APPLY_DATE,'yyyy-mm-dd') >= #{beginTime}}
        ?{endTime,and to_char(a.APPLY_DATE,'yyyy-mm-dd') <= #{endTime}}
        order by a.APPLY_DATE desc
        """;

var list = db.biz_data.camel().select(pageStart + Sql + pageEnd);
var totalCount = 0;
for (item in list) {
    item.put("arriveOrDepart", TagUtils.getTagNameByCode("arrivalOrLeave", item.get("arriveOrDepart")));
    item.put("msaOrgCodeCn", TagUtils.getTagNameByCode("issuOrgTag", item.get("msaOrgCode")));

    var _code=item.get("orgCode");
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
         item.put("orgCode", TagUtils.getTagNameByCode("issuOrgTag", _codeCn));
    }
   
    totalCount = item.get("totalCount");
}

if (list == null) {
    list = [];
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