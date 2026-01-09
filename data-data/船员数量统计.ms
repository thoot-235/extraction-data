{
  "properties" : { },
  "id" : "025b5fcf0d3a4218a6fb9910872e2dfc",
  "script" : null,
  "groupId" : "3610e448459c4398b66ed3c1ac4c8b42",
  "name" : "船员数量统计",
  "createTime" : null,
  "updateTime" : 1761029010121,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"crewNums\": 325213,\n        \"seniorNums\": 1445324,\n        \"onShipNums\": 88047\n    }\n}",
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
      "name" : "result",
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
        "name" : "crewNums",
        "value" : "325213",
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
        "name" : "seniorNums",
        "value" : "1445324",
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
        "name" : "onShipNums",
        "value" : "88047",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;


//长江干线活跃船员总数
var crewNumsSql = """
    select target_val 
        from dm_data.sts_basic_info 
        where sts_code='80'
            and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '80')
"""
//高级船员人数
var seniorNumsSql_back = """
    select target_val 
        from dm_data.sts_basic_info 
        where sts_code='81'
            and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '81')

"""

//船员注册人数 procedure proc_sts_active_ship_one_year 
var seniorNumsSql="""
   select nvl(sum(n.crew_nums),0)  target_val from  
	(select REGEXP_REPLACE(b.target_name,'[省市]','') as target_name,b.target_val crew_nums  from dict_data.DICT_RIVER_PROVINCE a 
    left join dm_data.sts_basic_info b on a.item_name_cn = b.target_name
    where b.sts_code='112'
            and to_char(b.sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-MM-dd')
                                from dm_data.sts_basic_info
                                where sts_code = '112')
            order by a.orders )n
						
						left join (
						select REGEXP_REPLACE(b.target_name,'[省市]','') as target_name,b.target_val crew_nums ,
					Row_number ( ) over ( ORDER BY b.target_val  DESC ) AS row_number	
						
						from dict_data.DICT_RIVER_PROVINCE a 
    left join dm_data.sts_basic_info b on a.item_name_cn = b.target_name
    where b.sts_code='112'
            and to_char(b.sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-MM-dd')
                                from dm_data.sts_basic_info
                                where sts_code = '112')
                                
                                )m  on m.target_name=n.target_name
				
				


"""

//在船船员人数
var onShipNumsSql = """
    select target_val 
        from ch.sts_basic_info 
        where sts_code='200'
            and sts_date = (select max(sts_date)
                                from ch.sts_basic_info
                                where sts_code = '200')
"""

var crewNums =  db.dm_data.camel().selectInt(crewNumsSql);
var seniorNums =  db.dm_data.camel().selectInt(seniorNumsSql);
var onShipNums =  db.gpadmin.camel().selectInt(onShipNumsSql);

var res = {};
res.put("crewNums",crewNums);
//res.put("crewNums",324587);
res.put("seniorNums",seniorNums);
//res.put("seniorNums",1377437);
//res.put("onShipNums",onShipNums);
res.put("onShipNums",88047);
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});