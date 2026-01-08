{
  "properties" : { },
  "id" : "copy1702007128152d88780",
  "script" : null,
  "groupId" : "ad7916198d1c4366b78002efce64e866",
  "name" : "14省市注册船舶总运力分布",
  "createTime" : null,
  "updateTime" : 1709633503009,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/registShipcapacity",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1704614512635,\n    \"executeTime\": 148\n}",
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
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1704614512635",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "148",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

//十四省市船舶总运力

var regNumsSql = """
     
select  m.item_name_cn_short as item_name_cn ,nvl(n.reg_Ship_Tran_Num,0) as reg_Ship_Tran_Num, ROW_NUMBER() OVER (ORDER BY TO_NUMBER(n.reg_Ship_Tran_Num ) desc ) AS row_num from  dict_data.DICT_RIVER_PROVINCE m
left  join 
(select to_char(round(sum(nvl(to_number(REGEXP_REPLACE(a.SHIP_DWT,
                                                      '[^0-9.]',
                                                      '')),
                             0)) / 10000,
                     1)) AS reg_Ship_Tran_Num,
       b.province_name
  FROM BDS_BASE_DATA.sc_ship_basic_data a, DICT_DATA.D_CB_HOME_PORT b

 where a.SHIP_REG_NO IN
       (SELECT SHIP_REG_NO
          FROM sub_biz_data.ship_dynamics_data
         WHERE status_flag = '1'
         and REG_PROVINCE in
               ('湖北省', '上海市', '江苏省', '安徽省', '江西省', '湖南省', '重庆市', '浙江省', '四川省',
                '贵州省', '云南省', '河南省', '陕西省', '山东省'))
   and a.REGPORT_code = b.code
 group by b.province_name) n
	on n.province_name=m.item_name_cn 
	order  by  m.orders


"""


    var regNum =  db.dm_data.camel().select(regNumsSql);

    for (item in regNum){
      item.put("regShipTranNum",item.get("regShipTranNum")::double)
    }
    
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: regNum
});