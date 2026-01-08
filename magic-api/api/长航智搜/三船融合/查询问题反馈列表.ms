{
  "properties" : { },
  "id" : "copy1691132401271d5268",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "查询问题反馈列表",
  "createTime" : null,
  "updateTime" : 1694505854716,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getFreebackMess",
  "method" : "GET",
  "parameters" : [ {
    "name" : "feedbackType",
    "value" : { },
    "description" : "类型",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "feedbackAccount",
    "value" : "",
    "description" : "反馈人账号",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "feedbackName",
    "value" : { },
    "description" : "反馈人姓名",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "status",
    "value" : { },
    "description" : "状态",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "feedbackStartDate",
    "value" : { },
    "description" : "反馈开始时间",
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
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "1",
    "description" : "",
    "required" : true,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "feedbackEndDate",
    "value" : { },
    "description" : "反馈结束时间",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "id",
    "value" : { },
    "description" : "流水号",
    "required" : false,
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
  "responseBody" : "{\n    \"resultCode\": 500,\n    \"resultMsg\": \"用户登录后才能获取\"\n}",
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
      "value" : "500",
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
      "value" : "用户登录后才能获取",
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
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'com.success.data.tag.TagUtils' as TagUtils;
import response;
import log;


BladeUser user=AuthUtil.getUser();
var bladeUserId;//登录人id
var bladeAccount;//登录人账号
var bladeName;//登录人姓名

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

//移动端我的申请只查询自己的
var account = feedbackAccount;
if(account=="myselfsaccount"){
    feedbackAccount=bladeAccount;
}

 var  sql="""select *
        from (select rownum rowno, b.*
              from (
        select id,
        (select  table_name_cn FROM  sc_table_types a where a.id=trim(b.feedback_type))apply_type ,
       feedback_Account,
       feedback_Name,
       to_char(FEEDBACK_DATE,'yyyy-mm-dd hh24:mi:ss')FEEDBACK_DATE,
       (case PROBLEM_HAND_STATUS when  '1' then '已反馈' when '2' then '已处理' else '' end) PROBLEM_HAND_STATUS,
       to_char(PROBLEM_HAND_DATE,'yyyy-mm-dd hh24:mi:ss')auPROBLEM_HAND_DATEdit_date,count(*) over() total_count,PROBLEM_HAND_REMARK
  from  SC_PROBLEM_APPLY_FORM b
    where  1=1 
  ?{id,and id  = #{id}}
  ?{feedbackType,and FEEDBACK_TYPE  in (${feedbackType})}
  ?{feedbackAccount,and feedback_Account  = #{feedbackAccount}}
  ?{feedbackName,and feedback_Name  = #{feedbackName}}
  ?{status,and PROBLEM_HAND_STATUS  = #{status}}
  ?{feedbackStartDate,and FEEDBACK_DATE >= to_date(#{feedbackStartDate},'yyyy-mm-dd hh24:mi:ss')}
  ?{feedbackEndDate,and FEEDBACK_DATE < to_date(#{feedbackEndDate},'yyyy-mm-dd hh24:mi:ss')}
 order by FEEDBACK_DATE desc
 ) b
        where rownum <= (#{page}*#{size}))
        a where a.rowno >((#{page}-1)*#{size})

"""
var res=db.base_data.camel().select(sql);
var totalCount=0;
 for(item in res){
            totalCount = item.get("totalCount");
        }   

var back={
                "list":res,
                "total":Integer.parseInt(totalCount::string) 
                
        }


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: back
	});