{
  "properties" : { },
  "id" : "copy1721375982188d43835",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "船舶关系变更审核新版(备份)",
  "createTime" : 1721375887762,
  "updateTime" : null,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/auditCompanyRefShipLast_bak",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"applyId\":\"6000388347\",\r\n    \"auditComments\":\"dsadsad\",\r\n    \"data\":[\r\n        {\r\n            \"id\":\"\",\r\n            \"applyStatus\":\"1\"\r\n        }\r\n    ]\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : "",
  "requestBodyDefinition" : {
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
      "name" : "applyId",
      "value" : "6000388347",
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
      "name" : "auditComments",
      "value" : "dsadsad",
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
          "name" : "applyStatus",
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
  },
  "responseBodyDefinition" : {
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.utils.StringUtil' as StringUtil;
import 'java.lang.String' as String;
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'org.springblade.core.secure.BladeUser' as BladeUser
import log;
import response;
BladeUser user = AuthUtil.getUser();
var bladeUserId; //登录人id
var bladeAccount; //登录人账号
var bladeName; //登录人姓名
//var applyId=applyId;

var applyId = body.applyId;
var id = body.data[0].id;
var applyStatus = body.data[0].applyStatus;
if ((null == applyId || applyId == "") || (null == id || id == "") || (null == applyStatus || applyStatus == "")) {
    return response.json({
        resultCode: 500,
        resultMsg: "参数异常"
    });
}


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


//根据登录人id获取所在部门的id和名称
var getDeptSql = """   
  select bu.ty_dept_id, sx.deptname
    from bladex.blade_user bu
    left join bladex.sys_organ_foreign sx
      on bu.ty_dept_id = sx.deptid
   where id = cast(#{bladeUserId} as varchar)"""
var getDeptSqlRes = db.bladex.camel().selectOne(getDeptSql);
//部门id
var tyDeptId;
//部门名称
var deptName;
if (getDeptSqlRes != null && getDeptSqlRes != '') {
    tyDeptId = getDeptSqlRes.get("tyDeptId");
    deptName = getDeptSqlRes.get("deptName");
}
//修改主表审核状态 
var updApplySql = """
        update SC_INFORMATION_APPLY_FORM set AUDIT_STATUS='1',AUDIT_DATE=sysdate,AUDIT_COMMENTS=#{body.auditComments},
        AUDIT_NAME=#{bladeName},AUDIT_ACCOUNT = #{bladeAccount},
        audit_user_id=#{bladeUserId},AUDIT_DEPT=#{tyDeptId},AUDIT_DEPT_NAME=#{deptName}
        where id = #{body.applyId}
"""
db.transaction(() => {
    db.base_data.update(updApplySql);
});




//数据生效，过程表转移到结果表
//如果是解绑，直接在结果表做物理删除  按条解绑

//如果是变更，先将这条船的所有历史关系物理删除，然后新增一套关系
var data = body.data;
for (item in data) {
    var applyStatus = item.get("applyStatus"); //审核状态
    if (applyStatus == null || applyStatus == '') {
        return response.json({
            resultCode: 500,
            resultMsg: "数据未审核！！！"
        });
    }
    var updateUpdate = """update bds_base_data.CHANGE_REF_SHIP_prod set apply_status=#{item.applyStatus} where id=#{item.id} """
    db.base_data.update(updateUpdate);
}




var selectSql = """select * from bds_base_data.SC_INFORMATION_APPLY_FORM where id=#{body.applyId}"""
var dataFrom = db.base_data.camel().selectOne(selectSql); //查询申请主表

//var selectSql="""select * from bds_base_data.CHANGE_REF_SHIP_prod where id=#{applyId}"""
//var dataBasic=db.base_data.camel().selectOne(selectSql);//查询申请主表


if (dataFrom.get("bindFlag").equals("1")) { //如果是解绑
    var shipReg = "";

    for (item in data) { //直接在结果表做物理删除  按条解绑 公
        var applyStatusx = item.get("applyStatus"); //审核状态
        if (applyStatusx == '1') { //审核通过
            var sqlOne = """select TYPE,CARD_NAME,SHIP_REG_NO,STATUS_FLAG from CHANGE_REF_SHIP_PROD where id=#{item.id}"""
            var selectOne = db.base_data.selectOne(sqlOne)
            var TYPE = selectOne.get("TYPE");
            var CARD_NAME = selectOne.get("CARD_NAME");
            var SHIP_REG_NO = selectOne.get("SHIP_REG_NO");
            var STATUS_FLAG = selectOne.get("STATUS_FLAG");
            shipReg = SHIP_REG_NO;
            if (STATUS_FLAG == 'del') {
                var updateSql = """  update CHANGE_REF_SHIP set is_delete='1' where 1=1 
                                                ?{SHIP_REG_NO, and SHIP_REG_NO=#{SHIP_REG_NO}}
                                                ?{CARD_NAME, and CARD_NAME=#{CARD_NAME}}
                                                ?{TYPE, and TYPE=#{TYPE}}  """
                db.base_data.update(updateSql);
            }

            //数据回写到船舶基本信息表
        }
    }

    //数据回写--查看结果表数据汇聚这条船的所有人、经营人、光祖、管理人
    if (shipReg != null && shipReg != '') {
        var sqlSEle = """select t.type ,
                  regexp_replace(listagg(card_name, ',') within

                                 group(order by type),

                                                   '([^,]+)(,\1)*(,|$)',

                                                   '\1\3') as company_name

                              from bds_base_data.CHANGE_REF_SHIP t
                              where ship_reg_no=#{shipReg}
                              and is_delete=0
                              group by type"""

        var dataInk = db.base_data.camel().select(sqlSEle);
        var SHIP_OWNER = ""; //  船舶所有人   
        var SHIP_OPERATOR = ""; //  船舶经营人  
        var SHIP_MANAGER = ""; //  船舶管理人  
        var BAREBOAT_CHARTERER = ""; //  船舶承租人      
        for (item in dataInk) {
            var type = item.get("type");
            var name = item.get("companyName");
            if (type == '1') {
                SHIP_OWNER = name;
            }
            if (type == '2') {
                SHIP_OPERATOR = name;
            }
            if (type == '3') {
                SHIP_MANAGER = name;
            }
            if (type == '4') {
                BAREBOAT_CHARTERER = name;
            }

        }

        var updataShipk = """ update bds_base_data.sc_ship_basic_data set SHIP_OWNER=#{SHIP_OWNER},
              SHIP_OPERATOR=#{SHIP_OPERATOR},SHIP_MANAGER=#{SHIP_MANAGER},BAREBOAT_CHARTERER=#{BAREBOAT_CHARTERER}
               where ship_reg_no=#{shipReg}"""
        db.base_data.update(updataShipk);
    }
} else if (dataFrom.get("bindFlag").equals("0")) { //如果是关系变更--先把这条船的关联关系做物理删除，然后新增关联关系
    var kkk = 0;
    var shipReg;
    for (item in data) { //直接在结果表做物理删除  按条解绑 公
        kkk = kkk + 1;
        var applyStatusx = item.get("applyStatus"); //审核状态
        if (applyStatusx == '1') {
            var sqlOne = """select TYPE,CARD_NAME,SHIP_REG_NO,status_flag from CHANGE_REF_SHIP_PROD where id=#{item.id}"""
            var selectOne = db.base_data.selectOne(sqlOne)
            var TYPE = selectOne.get("TYPE");
            var CARD_NAME = selectOne.get("CARD_NAME");
            var SHIP_REG_NO = selectOne.get("SHIP_REG_NO");
            var STATUS_FLAG = selectOne.get("STATUS_FLAG");
            shipReg = SHIP_REG_NO;

            if (STATUS_FLAG == 'del') {
                var updateSql = """  update CHANGE_REF_SHIP set is_delete='1' where 1=1 
                                                      ?{SHIP_REG_NO, and SHIP_REG_NO=#{SHIP_REG_NO}}
                                                      ?{CARD_NAME, and CARD_NAME=#{CARD_NAME}}
                                                      ?{TYPE, and TYPE=#{TYPE}}  """
                db.base_data.update(updateSql);
            }
            if (STATUS_FLAG == 'add') {
                //将申请通过的数据转移到结果表
                var inserEnd = """ insert into bds_base_data.CHANGE_REF_SHIP (TYPE,
                                                CARD_TYPE_BIG,
                                                CARD_TYPE,
                                                CARD_NO,
                                                CARD_NAME,
                                                SHIP_REG_NO,
                                                IS_DELETE
                                                )select TYPE,
                                                CARD_TYPE_BIG,
                                                CARD_TYPE,
                                                CARD_NO,
                                                CARD_NAME,
                                                SHIP_REG_NO,
                                                0 as IS_DELETE  from bds_base_data.CHANGE_REF_SHIP_prod
                                                 where id=#{item.id}
                                               """

                db.base_data.update(inserEnd);
            }
        }

        /** if(kkk==1){
             //先将原来的关系做物理删除
             var updateSql="""  update CHANGE_REF_SHIP set is_delete='1' where 1=1 
                       ?{SHIP_REG_NO, and SHIP_REG_NO=#{SHIP_REG_NO}}
                        """                     
                       db.base_data.update(updateSql);  
         } */


    }



    //数据回写--查看结果表数据汇聚这条船的所有人、经营人、光祖、管理人
    if (shipReg != null && shipReg != '') {
        var sqlSEle = """select t.type ,
                  regexp_replace(listagg(card_name, ',') within

                                 group(order by type),

                                                   '([^,]+)(,\1)*(,|$)',

                                                   '\1\3') as company_name

                              from bds_base_data.CHANGE_REF_SHIP t
                              where ship_reg_no=#{shipReg}
                              and is_delete=0
                              group by type"""

        var dataIn = db.base_data.camel().select(sqlSEle);
        var SHIP_OWNER = ""; //  船舶所有人   
        var SHIP_OPERATOR = ""; //  船舶经营人  
        var SHIP_MANAGER = ""; //  船舶管理人  
        var BAREBOAT_CHARTERER = ""; //  船舶承租人      
        for (item in dataIn) {
            var type = item.get("type");
            var name = item.get("companyName");
            if (type == '1') {
                SHIP_OWNER = name;
            }
            if (type == '2') {
                SHIP_OPERATOR = name;
            }
            if (type == '3') {
                SHIP_MANAGER = name;
            }
            if (type == '4') {
                BAREBOAT_CHARTERER = name;
            }


        }
        var updataShip = """ update bds_base_data.sc_ship_basic_data set SHIP_OWNER=#{SHIP_OWNER},
              SHIP_OPERATOR=#{SHIP_OPERATOR},SHIP_MANAGER=#{SHIP_MANAGER},BAREBOAT_CHARTERER=#{BAREBOAT_CHARTERER}
               where ship_reg_no=#{shipReg}"""
        db.base_data.update(updataShip);
    }
}

return response.json({
    resultCode: 200,
    resultMsg: "审核成功"
});