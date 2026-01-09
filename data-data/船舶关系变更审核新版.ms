{
  "properties" : { },
  "id" : "420c91b6268544d4935af25684e32031",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "船舶关系变更审核新版",
  "createTime" : null,
  "updateTime" : 1722236303731,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/auditCompanyRefShipLast",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"applyId\": \"6000042162\",\r\n    \"auditComments\": \"\",\r\n    \"data\": [\r\n        {\r\n            \"id\": \"1D929F681C52ED2AE0630100007F9E42\",\r\n            \"applyStatus\": 1\r\n        }\r\n    ]\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"审核成功\"\n}",
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
      "value" : "6000042162",
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
          "value" : "1D929F681C52ED2AE0630100007F9E42",
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
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
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
      "value" : "审核成功",
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
//如果是解绑，直接在结果表做逻辑删除  按条解绑

//如果是变更，先将这条船的所有历史关系逻辑删除，然后新增一套关系
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

    for (item in data) { //直接在结果表做逻辑删除  按条解绑 公
        var applyStatusx = item.get("applyStatus"); //审核状态
        if (applyStatusx == '1') { //审核通过
            var sqlOne = """select  TYPE,
                                    case
                                      when type = '1' then
                                        '所有人'
                                      when type = '2' then
                                        '经营人'
                                      when type = '3' then
                                        '管理人'
                                      when type = '4' then
                                        '承租人'
                                    end as REF_NAME,
                                    CARD_NAME,
                                    SHIP_REG_NO,
                                    STATUS_FLAG
                                from CHANGE_REF_SHIP_PROD where id=#{item.id}"""
            var selectOne = db.base_data.selectOne(sqlOne)
            var TYPE = selectOne.get("TYPE");
            var REF_NAME = selectOne.get("REF_NAME");
            var CARD_NAME = selectOne.get("CARD_NAME");
            var SHIP_REG_NO = selectOne.get("SHIP_REG_NO");
            var STATUS_FLAG = selectOne.get("STATUS_FLAG");
            shipReg = SHIP_REG_NO;
            if (STATUS_FLAG == 'del') {
                //var updateSql = """  update CHANGE_REF_SHIP set is_delete='1' where 1=1 
                //                                ?{SHIP_REG_NO, and SHIP_REG_NO=#{SHIP_REG_NO}}
                //                                ?{CARD_NAME, and CARD_NAME=#{CARD_NAME}}
                //                                ?{TYPE, and TYPE=#{TYPE}}  """
                var updateSql = """  update comp_ship_ref_new set is_delete='1',update_time = sysdate where 1=1 and  is_delete= '0'
                                                ?{SHIP_REG_NO, and SHIP_REG_NO=#{SHIP_REG_NO}}
                                                ?{CARD_NAME, and comp_name=#{CARD_NAME}}
                                                ?{TYPE, and ref_code=#{TYPE}}
                                                ?{REF_NAME, and ref_name=#{REF_NAME}}  """
                db.base_data.update(updateSql);
            }

            //数据回写到船舶基本信息表
        }
    }

    //数据回写--查看结果表数据汇聚这条船的所有人、经营人、光祖、管理人
    if (shipReg != null && shipReg != '') {
        //var sqlSEle = """select t.type ,
        //          regexp_replace(listagg(card_name, ',') within
        //
        //                         group(order by type),
        //
        //                                           '([^,]+)(,\1)*(,|$)',
        //
        //                                           '\1\3') as company_name
        //
        //                      from bds_base_data.CHANGE_REF_SHIP t
        //                      where ship_reg_no=#{shipReg}
        //                      and is_delete=0
        //                      group by type"""
        var sqlSEle = """select t.ref_code as type,
                                regexp_replace(listagg(comp_name , ',') within
                                                
                                                group(order by card_type ),
                                                
                                                '([^,]+)(,\1)*(,|$)',
                                                
                                                '\1\3') as company_name

                            from bds_base_data.comp_ship_ref_new t
                          where ship_reg_no = #{shipReg}
                            and is_delete = '0'
                          group by ref_code"""
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
} else if (dataFrom.get("bindFlag").equals("0")) { //如果是关系变更--先把这条船的关联关系做逻辑删除，然后新增关联关系
    var kkk = 0;
    var shipReg;
    for (item in data) { //直接在结果表做逻辑删除  按条解绑 公
        kkk = kkk + 1;
        var applyStatusx = item.get("applyStatus"); //审核状态
        if (applyStatusx == '1') {
            var sqlOne = """select  TYPE,
                                    case
                                      when type = '1' then
                                        '所有人'
                                      when type = '2' then
                                        '经营人'
                                      when type = '3' then
                                        '管理人'
                                      when type = '4' then
                                        '承租人'
                                    end as REF_NAME,
                                    CARD_NAME,
                                    SHIP_REG_NO,
                                    STATUS_FLAG
                                from CHANGE_REF_SHIP_PROD where id=#{item.id}"""
            var selectOne = db.base_data.selectOne(sqlOne)
            var TYPE = selectOne.get("TYPE");
            var REF_NAME = selectOne.get("REF_NAME");
            var CARD_NAME = selectOne.get("CARD_NAME");
            var SHIP_REG_NO = selectOne.get("SHIP_REG_NO");
            var STATUS_FLAG = selectOne.get("STATUS_FLAG");
            shipReg = SHIP_REG_NO;

            if (STATUS_FLAG == 'del') {
                //var updateSql = """  update CHANGE_REF_SHIP set is_delete='1' where 1=1 
                //                                      ?{SHIP_REG_NO, and SHIP_REG_NO=#{SHIP_REG_NO}}
                //                                      ?{CARD_NAME, and CARD_NAME=#{CARD_NAME}}
                //                                      ?{TYPE, and TYPE=#{TYPE}}  """
                var updateSql = """  update comp_ship_ref_new set is_delete='1' ,update_time = sysdate where 1=1 and is_delete = '0'
                                                      ?{SHIP_REG_NO, and SHIP_REG_NO=#{SHIP_REG_NO}}
                                                      ?{CARD_NAME, and comp_name=#{CARD_NAME}}
                                                      ?{TYPE, and ref_code=#{TYPE}}
                                                      ?{REF_NAME, and ref_name=#{REF_NAME}}  """
                db.base_data.update(updateSql);
            }
            if (STATUS_FLAG == 'add') {
                //将申请通过的数据转移到结果表
                //var inserEnd = """ insert into bds_base_data.CHANGE_REF_SHIP (TYPE,
                //                                CARD_TYPE_BIG,
                //                                CARD_TYPE,
                //                                CARD_NO,
                //                                CARD_NAME,
                //                                SHIP_REG_NO,
                //                                IS_DELETE
                //                                )select TYPE,
                //                                CARD_TYPE_BIG,
                //                                CARD_TYPE,
                //                                CARD_NO,
                //                                CARD_NAME,
                //                                SHIP_REG_NO,
                //                                0 as IS_DELETE  from bds_base_data.CHANGE_REF_SHIP_prod
                //                                 where id=#{item.id}
                //                               """
                var inserEnd = """ insert into bds_base_data.comp_ship_ref_new
                                                (ship_reg_no,
                                                comp_uscc,
                                                comp_name,
                                                card_type_big,
                                                card_type,
                                                ref_code,
                                                ref_name,
                                                is_change)
                                                select ship_reg_no,
                                                        card_no as comp_uscc,
                                                        card_name as comp_name,
                                                        card_type_big,
                                                        card_type,
                                                        type as ref_code,
                                                        case
                                                        when type = '1' then
                                                            '所有人'
                                                        when type = '2' then
                                                            '经营人'
                                                        when type = '3' then
                                                            '管理人'
                                                        when type = '4' then
                                                            '承租人'
                                                        end as ref_name,
                                                        '1' as is_change
                                                    from bds_base_data.CHANGE_REF_SHIP_prod
                                                where id = #{item.id}
                """
                db.base_data.update(inserEnd);
            }
        }

        /** if(kkk==1){
             //先将原来的关系做逻辑删除
             var updateSql="""  update CHANGE_REF_SHIP set is_delete='1' where 1=1 
                       ?{SHIP_REG_NO, and SHIP_REG_NO=#{SHIP_REG_NO}}
                        """                     
                       db.base_data.update(updateSql);  
         } */


    }



    //数据回写--查看结果表数据汇聚这条船的所有人、经营人、光祖、管理人
    if (shipReg != null && shipReg != '') {
        var sqlSEle = """select t.ref_code as type,
                                regexp_replace(listagg(comp_name , ',') within
                                                
                                                group(order by card_type ),
                                                
                                                '([^,]+)(,\1)*(,|$)',
                                                
                                                '\1\3') as company_name

                            from bds_base_data.comp_ship_ref_new t
                          where ship_reg_no = #{shipReg}
                            and is_delete = '0'
                          group by ref_code"""

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