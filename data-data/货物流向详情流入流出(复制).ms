{
  "properties" : { },
  "id" : "copy1708477120373d37633",
  "script" : null,
  "groupId" : "c41bce8c9d11400293c67cb04153e13a",
  "name" : "货物流向详情流入流出(复制)",
  "createTime" : 1708477120839,
  "updateTime" : null,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/getCargoFlowDirectionDetailInAndOut_copy",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "WUHAN",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"outTotal\": [],\n        \"inTotal\": [],\n        \"outGsh\": [],\n        \"inGsh\": [],\n        \"outWxp\": [],\n        \"inWxp\": [],\n        \"outJzx\": [],\n        \"inJzx\": []\n    }\n}",
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
      "name" : "result",
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
        "name" : "outTotal",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "inTotal",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "outGsh",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "inGsh",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "outWxp",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "inWxp",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "outJzx",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "inJzx",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;


//分货类统计流出
var outSql = """
  select orders, port_name_o, port_name_d, line, case when good_type = '干散货类' then '干散货' when good_type = '散装液货危险品' then '危险品' else '集装箱' end good_type, num
    from dm_data.STS_PORT_FLOW_DIRECTION
   where code_type = '2'
     and flow_flag = '1'
     and good_type != '其他'
     and port_name = (select port_cn_name from DICT_DATA.D_CB_PORT_IMP where port_pinyin = #{portName})
     and import_time = (select max(import_time)
                          from dm_data.STS_PORT_FLOW_DIRECTION
                         where code_type = '2'
                           and flow_flag = '1'
                           and good_type != '其他'
                           and port_name = (select port_cn_name from DICT_DATA.D_CB_PORT_IMP where port_pinyin = #{portName}))
   order by good_type, orders
"""
//分货类统计流入
var inSql = """
  select orders, port_name_o, port_name_d, line,case when good_type = '干散货类' then '干散货' when good_type = '散装液货危险品' then '危险品' else '集装箱' end good_type, num
    from dm_data.STS_PORT_FLOW_DIRECTION
   where code_type = '2'
     and flow_flag = '0'
     and good_type != '其他'
     and port_name = (select port_cn_name from DICT_DATA.D_CB_PORT_IMP where port_pinyin = #{portName})
     and import_time = (select max(import_time)
                          from dm_data.STS_PORT_FLOW_DIRECTION
                         where code_type = '2'
                           and flow_flag = '0'
                           and good_type != '其他'
                           and port_name = (select port_cn_name from DICT_DATA.D_CB_PORT_IMP where port_pinyin = #{portName}))
   order by good_type, orders
"""
//总货运量流出
var outTotalSql = """
  select orders, port_name_o, port_name_d, line, num
    from dm_data.STS_PORT_FLOW_DIRECTION
  where code_type = '5'
    and flow_flag = '1'
        
    and port_name = (select port_cn_name
                        from DICT_DATA.D_CB_PORT_IMP
                      where port_pinyin = #{portName})
    and import_time =
        (select max(import_time)
            from dm_data.STS_PORT_FLOW_DIRECTION
          where code_type = '5'
            and flow_flag = '1'
                
            and port_name = (select port_cn_name
                                from DICT_DATA.D_CB_PORT_IMP
                              where port_pinyin = #{portName}))
  order by orders
"""
//总货运量流入
var inTotalSql = """
  select orders, port_name_o, port_name_d, line, num
    from dm_data.STS_PORT_FLOW_DIRECTION
  where code_type = '5'
    and flow_flag = '0'
        
    and port_name = (select port_cn_name
                        from DICT_DATA.D_CB_PORT_IMP
                      where port_pinyin = #{portName})
    and import_time =
        (select max(import_time)
            from dm_data.STS_PORT_FLOW_DIRECTION
          where code_type = '5'
            and flow_flag = '0'
                
            and port_name = (select port_cn_name
                                from DICT_DATA.D_CB_PORT_IMP
                              where port_pinyin = #{portName}))
  order by orders
"""

var outShipNums = async  db.dm_data.camel().select(outSql);
var inShipNums = async db.dm_data.camel().select(inSql);
var outTotal = async  db.dm_data.camel().select(outTotalSql);
var inTotal = async db.dm_data.camel().select(inTotalSql);



for(item in outShipNums.get()){
item.put("num",item.get("num")::double);
}
for(item in inShipNums.get()){
item.put("num",item.get("num")::double);
}
for(item in outTotal.get()){
item.put("num",item.get("num")::double);
item.put("goodType","货运总量");
}
for(item in inTotal.get()){
item.put("num",item.get("num")::double);
item.put("goodType","货运总量");
}


//将干散货、危险品、集装箱 分成流入流出
var gshOut=[];
var gshIn=[];

var wxpOut=[];
var wxpIn=[];

var jzxOut=[];
var jzxIn=[];

 for(item in inShipNums.get()){
   if(item.get("goodType")=="干散货"){
     gshIn.add(item);
   }
   if(item.get("goodType")=="危险品"){
     wxpIn.add(item);
   }
   if(item.get("goodType")=="集装箱"){
     jzxIn.add(item);
   }

}

 for(item in outShipNums.get()){
   if(item.get("goodType")=="干散货"){
     gshOut.add(item);
   }
   if(item.get("goodType")=="危险品"){
     wxpOut.add(item);
   }
   if(item.get("goodType")=="集装箱"){
     jzxOut.add(item);
   }

}

var res = {};
//res.put("outShipNums",outShipNums.get());
//res.put("inShipNums",inShipNums.get());
res.put("outTotal",outTotal.get());
res.put("inTotal",inTotal.get());

res.put("outGsh",gshOut);
res.put("inGsh",gshIn);

res.put("outWxp",wxpOut);
res.put("inWxp",wxpIn);

res.put("outJzx",jzxOut);
res.put("inJzx",jzxIn);

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});