{
  "properties" : { },
  "id" : "c5a36f0708b3482dbe1675822b4540ab",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "信息审核更新",
  "createTime" : null,
  "updateTime" : 1722236208341,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/submitUpd",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"applyId\": \"6000042584\",\r\n    \"auditComments\": \"测试通过\",\r\n    \"cloumns\": [\r\n        {\r\n            \"id\": \"1E5DCD42F7743A96E0630100007F3CB6\",\r\n            \"remark\": \"\",\r\n            \"auditUpdate\": \"\",\r\n            \"auditUpdateTranslate\": \"\",\r\n            \"auditStatus\": \"1\"\r\n        },\r\n        {\r\n            \"id\": \"1E5DCD42F7733A96E0630100007F3CB6\",\r\n            \"remark\": \"\",\r\n            \"auditUpdate\": \"\",\r\n            \"auditUpdateTranslate\": \"\",\r\n            \"auditStatus\": \"1\"\r\n        },\r\n        {\r\n            \"id\": \"1E5DCD42F7723A96E0630100007F3CB6\",\r\n            \"remark\": \"\",\r\n            \"auditUpdate\": \"\",\r\n            \"auditUpdateTranslate\": \"\",\r\n            \"auditStatus\": \"1\"\r\n        },\r\n        {\r\n            \"id\": \"1E5DCD42F7753A96E0630100007F3CB6\",\r\n            \"remark\": \"\",\r\n            \"auditUpdate\": \"\",\r\n            \"auditUpdateTranslate\": \"\",\r\n            \"auditStatus\": \"3\"\r\n        }\r\n    ]\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"msg\": \"执行成功\"\n}",
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
      "name" : "applyId",
      "value" : "6000042584",
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
      "name" : "auditComments",
      "value" : "测试通过",
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
      "name" : "cloumns",
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
          "value" : "1E5DCD42F7743A96E0630100007F3CB6",
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
          "name" : "remark",
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
          "name" : "auditUpdate",
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
          "name" : "auditUpdateTranslate",
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
          "name" : "auditStatus",
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
        } ]
      } ]
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
      "name" : "code",
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
      "name" : "msg",
      "value" : "执行成功",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import response;
import log;

BladeUser user = AuthUtil.getUser();
var bladeUserId; //登录人id
var bladeAccount; //登录人账号
var bladeName; //登录人姓名
var applyId = body.applyId;


if (user == null) {
    
      return response.json({
      resultCode: 500,
      resultMsg: "用户登录后才能获取"
      
     });
} else {
    bladeUserId = user.getUserId();
    bladeAccount = user.getAccount();
    bladeName = user.getNickName();
}

/**  bladeUserId="111";
      bladeAccount="222";
      bladeName="张三";*/

//根据登录人id获取所在部门的id和名称
var getDeptSql = """   
  select bu.ty_dept_id, sx.deptname
    from bladex.blade_user bu
    left join bladex.sys_organ_foreign sx
      on bu.ty_dept_id = sx.deptid
   where id = cast(#{bladeUserId} as varchar)"""
var getDeptSqlRes = db.bladex.camel().selectOne(getDeptSql);
//部门id
var tyDeptId = "";
//部门名称
var deptName = "";
if (getDeptSqlRes != null) {
    //部门id
    tyDeptId = getDeptSqlRes.get("tyDeptId");
    //部门名称
    deptName = getDeptSqlRes.get("deptName");
}


var updApplySql = """
        update SC_INFORMATION_APPLY_FORM set AUDIT_STATUS='1',AUDIT_DATE=sysdate,AUDIT_COMMENTS=#{body.auditComments},
        AUDIT_NAME=#{bladeName},AUDIT_ACCOUNT = #{bladeAccount},audit_user_id=#{bladeUserId},AUDIT_DEPT=#{tyDeptId},AUDIT_DEPT_NAME=#{deptName}
        
        where id = #{body.applyId}
"""
db.transaction(() => {
    db.base_data.update(updApplySql);
});


//AUDIT_UPDATE=#{body.auditUpdate},AUDIT_UPDATE_TRANSLATE=#{body.auditUpdateTranslate}
var columns = body.cloumns;
var columnsList = [];
for (item in columns) {
    id = item.get("id");
    remark = item.get("remark");
    auditStatus = item.get("auditStatus");
    var auditUpdate = item.get("auditUpdate");
    var auditUpdateTranslate = item.get("auditUpdateTranslate");
    columnsList.add([auditStatus, remark, auditUpdate, auditUpdateTranslate, id].toArray());
}
if (columnsList.size() > 0) {
    var updColumnSql = """update SC_INFORMATION_COLUMNS set AUDIT_STATUS=?  ,AUDIT_COMMENTS=?,
                AUDIT_UPDATE=?,AUDIT_UPDATE_TRANSLATE=? , LAST_UPDATE_DATE=sysdate
                where ID = ?""";
    db.transaction(() => {
        db.base_data.batchUpdate(updColumnSql, columnsList);
    });
}


var sql = """
        select 
         a.TABLE_NAME_EN,a.COLUMN_EN,a.DATAS,
        (case when AUDIT_UPDATE is not null and AUDIT_UPDATE <>' ' then AUDIT_UPDATE else UPDATE_DATA end) UPDATE_DATA,
        a.AUDIT_STATUS,a.pk_primary,a.pk_primary_value,lower(a.field_type) field_type,translate_column_en,
        (case when AUDIT_UPDATE_TRANSLATE is not null and AUDIT_UPDATE_TRANSLATE <>' ' 
        then AUDIT_UPDATE_TRANSLATE else translate_data end)  translate_data ,         
         (case when AUDIT_UPDATE is not null and AUDIT_UPDATE <>' ' then #{bladeName}
          else b.apply_name end) operator_code,
            (case when AUDIT_UPDATE is not null and AUDIT_UPDATE <>' ' then '审核人员修正'
          else '用户自主更新' end) update_by
           from SC_INFORMATION_COLUMNS a left join bds_base_data.sc_information_apply_form b on a.apply_id=b.id
           where a.APPLY_ID =#{applyId}  and a.audit_status in ('1','3')
"""
var resList = db.base_data.camel().select(sql);
var field = "";
var value = "";

if (resList.size() > 0) {
    var add = false;
    var addTable;
    var i = 0;
    for (item in resList) {
        var updSql = """""";
        var updateData = item.get("updateData");
        var tableName = item.get("tableNameEn");
        var columnEn = item.get("columnEn");
        var pkPrimary = item.get("pkPrimary");
        var pkPrimaryValue = item.get("pkPrimaryValue");
        var fieldType = item.get("fieldType");
        var translateColumnEn = item.get("translateColumnEn");
        var translateData = item.get("translateData");
        var updateBy = item.get("updateBy");
        var operatorCode = item.get("operatorCode");

        var pkPrimaryArr = [];
        if (pkPrimary != null && pkPrimary != "") {
            pkPrimaryArr = pkPrimary.split("&&");
        }
        var pkPrimaryValueArr = [];
        if (pkPrimaryValue != null && pkPrimaryValue != "") {
            pkPrimaryValueArr = pkPrimaryValue.split("&&");
        }
        var where = "";
        var i = 0;
        for (item2 in pkPrimaryArr) {
            where = where + " and " + pkPrimaryArr[i] + " = '" + pkPrimaryValueArr[i] + "'";
            i++;
        }
        log.info("pkPrimaryArrpkPrimaryArr==" + pkPrimaryArr);
        //如果是船企，单独处理标志位问题
        if (tableName.equals("BDS_BASE_DATA.COMPANY_INFO_ALL")) {
            var updSql = """update BDS_BASE_DATA.COMPANY_INFO_ALL set source_dept='1' where  1=1 ${where}  """
            db.base_data.update(updSql);
        }
        //判断当前数据存在主键并且‘转换字段名’字段不为空的情况下（说明有字段更新），进行表字段更新
        if (!"".equals(translateColumnEn) && translateColumnEn != null && pkPrimaryValue != null && !"".equals(pkPrimaryValue)) {
            updSql = """
                                update  ${tableName}  set ${translateColumnEn} = #{translateData} ,LAST_UPDATE_DATE=sysdate,
                                update_by=#{updateBy},operator_Code=#{operatorCode}  where   1=1 ${where}
                        """
            db.base_data.update(updSql);
        }
        //判断当前数据存在主键并且‘修改后字段值’字段不为空的情况下（说明有字段更新），进行表字段更新，时间和非时间类型两种更新方法
        if (!"".equals(updateData) && updateData != null && fieldType != 'date' && pkPrimaryValue != null && !"".equals(pkPrimaryValue)) {
            updSql = """
                                update  ${tableName}  set ${columnEn} = #{updateData}   where   1=1 ${where}
                        """
            db.base_data.update(updSql);
        } else if (!"".equals(updateData) && updateData != null && 'date'.equals(fieldType) &&
            pkPrimaryValue != null && !"".equals(pkPrimaryValue)) {
            updSql = """
                update ${tableName}  set ${columnEn} = to_date(#{updateData},'yyyy-mm-dd hh24:mi:ss'),LAST_UPDATE_DATE=sysdate,update_by=#{updateBy},operator_Code=#{operatorCode}  where   1=1 ${where}
            """
            db.base_data.update(updSql);
            //判断主键为空并且有数据的情况下为新增数据，进行新增操作
        } else if ("".equals(pkPrimaryValue) || pkPrimaryValue == null) {
            addTable = tableName;
            add = true;
            if (i != resList.size() - 1) {
                field = field + columnEn + ","
                if ('date'.equals(fieldType)) {
                    value = value + "to_date('" + updateData + "','yyyy-mm-dd hh24:mi:ss'),"
                } else {
                    value = value + "'" + updateData + "',"
                }
                //如果‘转换字段名’字段不为空，则拼接到插入语句中
                if (!"".equals(translateColumnEn) && translateColumnEn != null) {
                    field = field + translateColumnEn + ","
                    value = value + "'" + translateData + "',"
                }
            } else {
                field = field + columnEn
                if ('date'.equals(fieldType)) {
                    value = value + "to_date('" + updateData + "','yyyy-mm-dd hh24:mi:ss')"
                } else {
                    value = value + "'" + updateData + "'"
                }
                //如果‘转换字段名’字段不为空，则拼接到插入语句中
                if (!"".equals(translateColumnEn) && translateColumnEn != null) {
                    field = field + translateColumnEn
                    value = value + "'" + translateData
                }
            }
            i++;
        }
    }
    var sqlSert = """ insert into ${addTable}(${field}) values(${value})""";
    if (add) {
        db.base_data.insert(sqlSert)
    }


    return response.json({
        code: 200,
        msg: "执行成功",
    });
}
return response.json({
    code: 200,
    msg: "执行成功",
});