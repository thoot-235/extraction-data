{
  "properties" : { },
  "id" : "0b67a4cfbc23481692cdb165a8bd1820",
  "script" : null,
  "groupId" : "0700e32d7c4049b9b521694c26cbcb71",
  "name" : "移动端无数据菜单数据查询",
  "createTime" : null,
  "updateTime" : 1711539337214,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getMenus",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n\"idCardNo\":\"75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=\",\r\n\"code\":\"\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 0,\n    \"message\": \"参数[code]为必填项\",\n    \"data\": {},\n    \"executeTime\": 2\n}",
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
      "name" : "idCardNo",
      "value" : "75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=",
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
      "name" : "code",
      "value" : "",
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
      "name" : "code",
      "value" : "0",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "message",
      "value" : "参数[code]为必填项",
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
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "2",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
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
import response;
import java.util.HashSet;
import response;
import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;
//idCardNo = (idCardNo == null ? "" : idCardNo).replace("<em>", "").replace("</em>", "");

var code=(body.code==null?"":body.code).replace("<em>","").replace("</em>","");
code=ZzSecurityHelper.decryptAES(body.code);
if(code==null || code==''){
    return  response.json({
        "code": 0,
        "message": "参数[code]为必填项",
        "data": {},      
        "executeTime": 2
    });
}

code=(body.code==null?"":body.code).replace("<em>","").replace("</em>","");

var menulist=new HashSet();
var list=new HashSet();
if("company"==type){
var  sql="""
                           select biz_codes from bds_base_data.company_info_all where uscc=#{code} 
"""
list=["公司符合证明信息","关联船舶","事故信息","行政处罚","信用信息"];
var res=db.base_data.selectValue(sql);
if(res!=null&&res!=''){
  
    var arr=res.split(";");

    for (item in arr){
       if("03"==item){
          menulist.add("关联船舶");
        }
         if("04"==item){
          menulist.add("公司符合证明信息");
        }
        else if("05"==item){
         menulist.add("行政处罚");
        }
        else if("06"==item){
         menulist.add("事故信息");
        }
        else if("07"==item){
         menulist.add("信用信息");
        }
    }

    

    
   if(menulist!=null&&menulist.size()>0){
     list.removeAll(menulist);
   }
  

  }
}
else if("crew"==type){
    list=["证书信息","培训信息","考试信息","违法信息","任解职信息","信用信息","载员核查"];
var  sql="""
     select biz_codes  from dm_data.CREW_LABELS where CREW_ID=#{code}
"""
var res=db.base_data.selectValue(sql);

if(res!=null&&res!=''){
    var arr=res.split(";");
    for (item in arr){
        if("01"==item||"02"==item||"03"==item||"06"==item||"07"==item||"08"==item||"09"==item||"10"==item){
            menulist.add("证书信息");
        }
        else if("04"==item){
          menulist.add("培训信息");
        }
        else if("05"==item){
         menulist.add("考试信息");
        }
        else if("11"==item){
         menulist.add("任解职信息");
        }
        else if("12"==item){
         menulist.add("违法信息");
        }
        else if("13"==item){
         menulist.add("信用信息");
        }
        else if("14"==item){
         menulist.add("载员核查");
        }
    }
    if(menulist!=null&&menulist.size()>0){
     list.removeAll(menulist);
   }
  }

}
else if("ship"==type){
var  sql="""
      select  biz_codes from 
 (
              SELECT 
                            biz_codes,
                            row_number() over(PARTITION BY ship_no ORDER BY operate_time DESC) rn
                  FROM SUB_BIZ_DATA.SHIP_DYNAMICS_DATA 
                  where ship_no=#{code} )
              WHERE rn = 1
"""
list=["关联企业","进出港报告","进出口查验","危货申报","船舶水污染","安全监督","行政处罚","信用信息","事故信息","证书信息","配员证书"];
var res=db.base_data.selectValue(sql);
if(res!=null&&res!=''){
    var arr=res.split(";");
    for (item in arr){
        if("01"==item||"02"==item){
            menulist.add("进出港报告");
        }
        else if("03"==item||"04"==item){
          menulist.add("进出口查验");
        }
        else if("05"==item||"06"==item){
         menulist.add("危货申报");
        }
        else if("07"==item||"08"==item){
         menulist.add("船舶水污染");
        }
        else if("09"==item||"10"==item||"11"==item){
         menulist.add("安全监督");
        }
        else if("16"==item){
         menulist.add("行政处罚");
        }
        else if("17"==item){
         menulist.add("信用信息");
        }
         else if("18"==item){
         menulist.add("事故信息");
        }
         else if("20"==item){
         menulist.add("证书信息");
        }
        else if("21"==item){
         menulist.add("配员证书");
        }
         else if("23"==item){
         menulist.add("关联企业");
        }
       
    }
     if(menulist!=null&&menulist.size()>0){
     list.removeAll(menulist);
   }
  }

}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: list
});