{
  "properties" : { },
  "id" : "a01176c6ef354d0d9af75754da21e35b",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "问题反馈信息增加",
  "createTime" : null,
  "updateTime" : 1694505854969,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/feedbackAdd",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"annexdJson\": [],\r\n    \"dataId\": \"ID_CARD_NO\",\r\n    \"feedbackType\": \"3\",\r\n    \"fieldJson\":[\r\n         {\r\n              \"columnCn\": \"姓名\",\r\n              \"columnEn\": \"NAME\",\r\n              \"feedbackData\": \"王平平\",\r\n              \"tableNameCn\": \"605EBF75A99A0D274BBEE469AD432D77F4F00C853973DA4D58DA58707037B7E548453F1DD6A3BBE585A28F01DEACB03F\",\r\n              \"tableNameEn\": \"626C9B7072D4E2577FD95E114E9A2BE057111F01B3B00E6BF911C6A5DA546244\",\r\n              \"value\": \"王平\"\r\n         },\r\n        {\r\n             \"columnCn\": \"证件号码\",\r\n             \"columnEn\": \"ID_CARD_NO\",\r\n             \"feedbackData\": \"450324198908245820\",\r\n            \"tableNameCn\": \"605EBF75A99A0D274BBEE469AD432D77F4F00C853973DA4D58DA58707037B7E548453F1DD6A3BBE585A28F01DEACB03F\",\r\n            \"tableNameEn\": \"626C9B7072D4E2577FD95E114E9A2BE057111F01B3B00E6BF911C6A5DA546244\",\r\n            \"value\": \"450324198908245815\"\r\n        }\r\n    ]\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"msg\": \"执行成功\"\n}",
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
      "name" : "annexdJson",
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
      "name" : "dataId",
      "value" : "ID_CARD_NO",
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
      "name" : "feedbackType",
      "value" : "3",
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
      "name" : "fieldJson",
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
          "name" : "columnCn",
          "value" : "姓名",
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
          "name" : "columnEn",
          "value" : "NAME",
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
          "name" : "feedbackData",
          "value" : "王平平",
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
          "name" : "tableNameCn",
          "value" : "605EBF75A99A0D274BBEE469AD432D77F4F00C853973DA4D58DA58707037B7E548453F1DD6A3BBE585A28F01DEACB03F",
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
          "name" : "tableNameEn",
          "value" : "626C9B7072D4E2577FD95E114E9A2BE057111F01B3B00E6BF911C6A5DA546244",
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
          "name" : "value",
          "value" : "王平",
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
      } ]
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
      "value" : "执行成功",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.utils.StringUtil' as StringUtil;
import 'java.lang.String' as String;
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'org.ssssssss.magic.utils.AESUtil' as AESUtil;
import 'java.net.URLEncoder' as URLEncoder;

import log;
import response;


BladeUser user=AuthUtil.getUser();
var bladeUserId;//登录人id
var bladeAccount;//登录人账号
var bladeName;//登录人姓名
var applyId=body.applyId;

 if(user==null){
    return response.json({
    resultCode: 500,
    resultMsg: "用户登录后才能获取"
    
   });
}else{
      bladeUserId=user.getUserId();
      bladeAccount=user.getAccount();
      bladeName=user.getNickName();
}
  /**bladeUserId="111";
      bladeAccount="222";
      bladeName="张三";*/

var sqlSeralNo="""select SEQ_SERIAL_NO.nextval from dual"""//生成流水号
var id=db.base_data.selectValue(sqlSeralNo);

//主表插入
   var insertSql = """
       insert into SC_PROBLEM_APPLY_FORM
        (ID,
        FEEDBACK_TYPE,
        DATA_ID,
        FEEDBACK_ACCOUNT,
        FEEDBACK_ID,
        FEEDBACK_NAME,
        FEEDBACK_DATE,
        CREATE_DATE,
        LAST_UPDATE_DATE,
        problem_hand_status)
      values
        (
        #{id},
        #{body.feedbackType},
        #{body.dataId},
        #{bladeAccount},
        #{bladeUserId},
        #{bladeName},
        sysdate,
        sysdate,
        sysdate,
        '1')
   """;
          

//附表插入
var fieldJson= body.fieldJson;
var fieldList=[];
for(item in fieldJson){    
    var fieldMap={};
    var tableNameCnAes = item.get("tableNameCn");
    var tableNameEnAes = item.get("tableNameEn");
    var tableNameCn =  new String (AESUtil.decrypt(AESUtil.parseHexStr2Byte(tableNameCnAes),"bmtoch"),'UTF-8');
    var tableNameEn = new String(AESUtil.decrypt(AESUtil.parseHexStr2Byte(tableNameEnAes),"bmtoch"),'UTF-8');
    var columnCn=    item.get("columnCn");
    var columnEn=    item.get("columnEn");
    var datas=    item.get("value");
    var feedbackData=    item.get("feedbackData");
    //var uuid =uuid();
  fieldMap.put("id",uuid());
  fieldMap.put("apply_Id",id);
  fieldMap.put("table_Name_Cn",tableNameCn);
  fieldMap.put("table_Name_En",tableNameEn);
  fieldMap.put("column_Cn",columnCn);
  fieldMap.put("column_En",columnEn);
  fieldMap.put("datas",datas);
  fieldMap.put("feedback_Data",feedbackData);
  fieldMap.put("create_Date",new Date());
  fieldMap.put("last_Update_Date",new Date());
  fieldList.add(fieldMap);
}

//附件插入


var annexdJson= body.annexdJson;
var annexList=[];
for(item in annexdJson){
    var annexMap={};
    var annexId=    item.get("annexId");
    var annexName=    item.get("annexName");
    var annexType=    item.get("annexType");
    annexMap.put("id",uuid());
    annexMap.put("apply_Id",id);
    annexMap.put("annex_Id",annexId);
    annexMap.put("annex_Name",annexName);
    annexMap.put("annex_Type",annexType);
    annexMap.put("create_Date",new Date());
    annexList.add(annexMap);
}
 

var tx = db.transaction();  //开启事务
try{
        db.base_data.insert(insertSql);
        db.base_data.table("SC_PROBLEM_COLUMNS").batchInsert(fieldList);
        db.base_data.table("SC_PROBLEM_ANNEXS").batchInsert(annexList);
        tx.commit();    // 提交事务
}catch(e){
        tx.rollback();  // 回滚事务
}finally{
  return response.json({
              code: 200,
              msg: "执行成功",
          });
}
  