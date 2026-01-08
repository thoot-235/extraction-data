{
  "properties" : { },
  "id" : "66587319424845b89e6732356e3ca7d3",
  "script" : null,
  "groupId" : "8cfab9687d1a495288b389b5545384b5",
  "name" : "船舶船籍港分布",
  "createTime" : null,
  "updateTime" : 1764041068778,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/shipNumsByRegport",
  "method" : "GET",
  "parameters" : [ {
    "name" : "propulsiveCode",
    "value" : "",
    "description" : "1:电池  2：LNG  3：甲醇 4:氢燃料 5 其他",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": []\n}",
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
      "children" : [ ]
    } ]
  }
}
================================
import response;

//正式接入数据太少，后期接入数据正常后，可用dc_battery_ship
/*    select province_name, count(1) nums
        from (select b.province_name
                from dc_battery_ship a
                inner join (select item_name_cn as port, province_name
                            from dict_data.D_CB_HOME_PORT) b
                    on a.port = b.port)
        group by province_name
*/
/**
var sql = """

    select pro_name as province_name, count(1) nums
      from DM_DATA.DC_BATTERY_SHIP_CJGX
     group by pro_name
     order by decode(pro_name,
                     '云南省',
                     1,
                     '贵州',
                     2,
                     '四川省',
                     3,
                     '重庆市',
                     4,
                     '湖南省',
                     5,
                     '湖北省',
                     6,
                     '江西省',
                     7,
                     '浙江省',
                     8,
                     '安徽省',
                     9,
                     '江苏省',
                     10,
                     '上海市',
                     11)
""" */
/*
var sql="""select (case  province_name when '重庆'   then province_name||'市'   when '上海' then province_name||'市'
else province_name||'省'  end)ship_province ,nums from(
select ship_province as province_name, count(*) nums,
(CASE ship_province
        WHEN '云南' THEN 1
        WHEN '贵州' THEN 2
          WHEN '四川' THEN 3
            WHEN '重庆' THEN 4
              WHEN '湖南' THEN 5
                WHEN '湖北' THEN 6
                  WHEN '江西' THEN 7
                    WHEN '浙江' THEN 8
                      WHEN '安徽' THEN 9
                        WHEN '江苏' THEN 10
                          WHEN '上海' THEN 11                        
        ELSE 12
    end) xh
      from chais.new_energy_ship
      where 1=1
       ?{propulsiveCode,and propulsive_code =  #{propulsiveCode}}
     group by ship_province) a order by a.xh"""
var list = db.ais.camel().select(sql);
for(item in list){
    item.put("nums",item.get("nums")::int)
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list 
}); 
*/
/*
var sql="""
select (case  province_name when '重庆'   then province_name||'市'   when '上海' then province_name||'市'
else province_name||'省'  end)ship_province ,nums from(
select ship_province as province_name, count(*) nums,
(CASE ship_province
        WHEN '云南' THEN 1
        WHEN '贵州' THEN 2
          WHEN '四川' THEN 3
            WHEN '重庆' THEN 4
              WHEN '湖南' THEN 5
                WHEN '湖北' THEN 6
                  WHEN '江西' THEN 7
                    WHEN '浙江' THEN 8
                      WHEN '安徽' THEN 9
                        WHEN '江苏' THEN 10
                          WHEN '上海' THEN 11                        
        ELSE 12
    end) xh
      from chais.new_energy_ship_new where ship_status='已建' and delete_flag='0' 
     group by ship_province) a order by a.xh
 """
*/
var sql ="""
 select aa.ship_province,aa.nums from
 (select ship_province, count(*) nums,
(CASE ship_province
        WHEN '云南省' THEN 1
        WHEN '贵州省' THEN 2
          WHEN '四川省' THEN 3
            WHEN '重庆市' THEN 4
              WHEN '湖南省' THEN 5
                WHEN '湖北省' THEN 6
                  WHEN '江西省' THEN 7
                    WHEN '浙江省' THEN 8
                      WHEN '安徽省' THEN 9
                        WHEN '江苏省' THEN 10
                          WHEN '上海市' THEN 11                        
        ELSE 12
    end) xh
      from (select a.SHIP_IDENTIFY_CODE ship_id,b.province_name ship_province from SHIP_INFO_MAINTAIN a left join 
 dict_data.D_CB_HOME_PORT b on a.SHIP_PROVINCE=b.item_name_cn 
 where a.is_deleted=0)t 
     group by t.ship_province)aa
		 order by xh
"""
/*
var batterySql = """
select (case  province_name when '重庆'   then province_name||'市'   when '上海' then province_name||'市'
else province_name||'省'  end)ship_province ,nums from(
select ship_province as province_name, count(*) nums,
(CASE ship_province
        WHEN '云南' THEN 1
        WHEN '贵州' THEN 2
          WHEN '四川' THEN 3
            WHEN '重庆' THEN 4
              WHEN '湖南' THEN 5
                WHEN '湖北' THEN 6
                  WHEN '江西' THEN 7
                    WHEN '浙江' THEN 8
                      WHEN '安徽' THEN 9
                        WHEN '江苏' THEN 10
                          WHEN '上海' THEN 11                        
        ELSE 12
    end) xh
      from chais.new_energy_ship_new where ship_status='已建' and delete_flag='0'  and propulsive_code in ('1','2')
     group by ship_province) a order by a.xh
"""
*/
var batterySql = """
select aa.ship_province,aa.nums from
 (select ship_province, count(*) nums,
(CASE ship_province
        WHEN '云南省' THEN 1
        WHEN '贵州省' THEN 2
          WHEN '四川省' THEN 3
            WHEN '重庆市' THEN 4
              WHEN '湖南省' THEN 5
                WHEN '湖北省' THEN 6
                  WHEN '江西省' THEN 7
                    WHEN '浙江省' THEN 8
                      WHEN '安徽省' THEN 9
                        WHEN '江苏省' THEN 10
                          WHEN '上海市' THEN 11                        
        ELSE 12
    end) xh
      from (select a.SHIP_IDENTIFY_CODE ship_id,b.province_name ship_province from SHIP_INFO_MAINTAIN a left join 
 dict_data.D_CB_HOME_PORT b on a.SHIP_PROVINCE=b.item_name_cn 
 where a.is_deleted=0 and a.ENERGY_TYPE in('1','2'))t 
     group by t.ship_province)aa
		 order by xh
"""
/*
var LNGSql = """
select (case  province_name when '重庆'   then province_name||'市'   when '上海' then province_name||'市'
else province_name||'省'  end)ship_province ,nums from(
select ship_province as province_name, count(*) nums,
(CASE ship_province
        WHEN '云南' THEN 1
        WHEN '贵州' THEN 2
          WHEN '四川' THEN 3
            WHEN '重庆' THEN 4
              WHEN '湖南' THEN 5
                WHEN '湖北' THEN 6
                  WHEN '江西' THEN 7
                    WHEN '浙江' THEN 8
                      WHEN '安徽' THEN 9
                        WHEN '江苏' THEN 10
                          WHEN '上海' THEN 11                        
        ELSE 12
    end) xh
      from chais.new_energy_ship_new where ship_status='已建' and delete_flag='0'  and propulsive_code in ('3','4')
     group by ship_province) a order by a.xh
"""
*/
var LNGSql = """
select aa.ship_province,aa.nums from
 (select ship_province, count(*) nums,
(CASE ship_province
        WHEN '云南省' THEN 1
        WHEN '贵州省' THEN 2
          WHEN '四川省' THEN 3
            WHEN '重庆市' THEN 4
              WHEN '湖南省' THEN 5
                WHEN '湖北省' THEN 6
                  WHEN '江西省' THEN 7
                    WHEN '浙江省' THEN 8
                      WHEN '安徽省' THEN 9
                        WHEN '江苏省' THEN 10
                          WHEN '上海市' THEN 11                        
        ELSE 12
    end) xh
      from (select a.SHIP_IDENTIFY_CODE ship_id,b.province_name ship_province from SHIP_INFO_MAINTAIN a left join 
 dict_data.D_CB_HOME_PORT b on a.SHIP_PROVINCE=b.item_name_cn 
 where a.is_deleted=0 and a.ENERGY_TYPE in('3','4'))t 
     group by t.ship_province)aa
		 order by xh
"""
/*
var methanolSql = """
select (case  province_name when '重庆'   then province_name||'市'   when '上海' then province_name||'市'
else province_name||'省'  end)ship_province ,nums from(
select ship_province as province_name, count(*) nums,
(CASE ship_province
        WHEN '云南' THEN 1
        WHEN '贵州' THEN 2
          WHEN '四川' THEN 3
            WHEN '重庆' THEN 4
              WHEN '湖南' THEN 5
                WHEN '湖北' THEN 6
                  WHEN '江西' THEN 7
                    WHEN '浙江' THEN 8
                      WHEN '安徽' THEN 9
                        WHEN '江苏' THEN 10
                          WHEN '上海' THEN 11                        
        ELSE 12
    end) xh
      from chais.new_energy_ship_new where ship_status='已建' and delete_flag='0'  and propulsive_code in ('5','6')
     group by ship_province) a order by a.xh
"""
*/
var methanolSql = """
select aa.ship_province,aa.nums from
 (select ship_province, count(*) nums,
(CASE ship_province
        WHEN '云南省' THEN 1
        WHEN '贵州省' THEN 2
          WHEN '四川省' THEN 3
            WHEN '重庆市' THEN 4
              WHEN '湖南省' THEN 5
                WHEN '湖北省' THEN 6
                  WHEN '江西省' THEN 7
                    WHEN '浙江省' THEN 8
                      WHEN '安徽省' THEN 9
                        WHEN '江苏省' THEN 10
                          WHEN '上海市' THEN 11                        
        ELSE 12
    end) xh
      from (select a.SHIP_IDENTIFY_CODE ship_id,b.province_name ship_province from SHIP_INFO_MAINTAIN a left join 
 dict_data.D_CB_HOME_PORT b on a.SHIP_PROVINCE=b.item_name_cn 
 where a.is_deleted=0 and a.ENERGY_TYPE in('5','6'))t 
     group by t.ship_province)aa
		 order by xh
"""
/*
var qingSql ="""
select (case  province_name when '重庆'   then province_name||'市'   when '上海' then province_name||'市'
else province_name||'省'  end)ship_province ,nums from(
select ship_province as province_name, count(*) nums,
(CASE ship_province
        WHEN '云南' THEN 1
        WHEN '贵州' THEN 2
          WHEN '四川' THEN 3
            WHEN '重庆' THEN 4
              WHEN '湖南' THEN 5
                WHEN '湖北' THEN 6
                  WHEN '江西' THEN 7
                    WHEN '浙江' THEN 8
                      WHEN '安徽' THEN 9
                        WHEN '江苏' THEN 10
                          WHEN '上海' THEN 11                        
        ELSE 12
    end) xh
      from chais.new_energy_ship_new where ship_status='已建' and delete_flag='0'  and propulsive_code='7'
     group by ship_province) a order by a.xh
"""
*/
var qingSql ="""
select aa.ship_province,aa.nums from
 (select ship_province, count(*) nums,
(CASE ship_province
        WHEN '云南省' THEN 1
        WHEN '贵州省' THEN 2
          WHEN '四川省' THEN 3
            WHEN '重庆市' THEN 4
              WHEN '湖南省' THEN 5
                WHEN '湖北省' THEN 6
                  WHEN '江西省' THEN 7
                    WHEN '浙江省' THEN 8
                      WHEN '安徽省' THEN 9
                        WHEN '江苏省' THEN 10
                          WHEN '上海市' THEN 11                        
        ELSE 12
    end) xh
      from (select a.SHIP_IDENTIFY_CODE ship_id,b.province_name ship_province from SHIP_INFO_MAINTAIN a left join 
 dict_data.D_CB_HOME_PORT b on a.SHIP_PROVINCE=b.item_name_cn 
 where a.is_deleted=0 and a.ENERGY_TYPE =7)t 
     group by t.ship_province)aa
		 order by xh
"""
/*
var otherSql = """
select (case  province_name when '重庆'   then province_name||'市'   when '上海' then province_name||'市'
else province_name||'省'  end)ship_province ,nums from(
select ship_province as province_name, count(*) nums,
(CASE ship_province
        WHEN '云南' THEN 1
        WHEN '贵州' THEN 2
          WHEN '四川' THEN 3
            WHEN '重庆' THEN 4
              WHEN '湖南' THEN 5
                WHEN '湖北' THEN 6
                  WHEN '江西' THEN 7
                    WHEN '浙江' THEN 8
                      WHEN '安徽' THEN 9
                        WHEN '江苏' THEN 10
                          WHEN '上海' THEN 11                        
        ELSE 12
    end) xh
      from chais.new_energy_ship_new where ship_status='已建' and delete_flag='0'  and propulsive_code='0'
     group by ship_province) a order by a.xh
"""
*/
var otherSql = """
select aa.ship_province,aa.nums from
 (select ship_province, count(*) nums,
(CASE ship_province
        WHEN '云南省' THEN 1
        WHEN '贵州省' THEN 2
          WHEN '四川省' THEN 3
            WHEN '重庆市' THEN 4
              WHEN '湖南省' THEN 5
                WHEN '湖北省' THEN 6
                  WHEN '江西省' THEN 7
                    WHEN '浙江省' THEN 8
                      WHEN '安徽省' THEN 9
                        WHEN '江苏省' THEN 10
                          WHEN '上海市' THEN 11                        
        ELSE 12
    end) xh
      from (select a.SHIP_IDENTIFY_CODE ship_id,b.province_name ship_province from SHIP_INFO_MAINTAIN a left join 
 dict_data.D_CB_HOME_PORT b on a.SHIP_PROVINCE=b.item_name_cn 
 where a.is_deleted=0 and a.ENERGY_TYPE =0)t 
     group by t.ship_province)aa
		 order by xh
"""
if(propulsiveCode == "1"){
    var list = db.ods_data.camel().select(batterySql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else if (propulsiveCode == "2") {
    var list = db.ods_data.camel().select(LNGSql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else if (propulsiveCode == "3") {
    var list = db.ods_data.camel().select(methanolSql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else if (propulsiveCode == "4") {
    var list = db.ods_data.camel().select(qingSql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else if (propulsiveCode == "5") {
    var list = db.ods_data.camel().select(otherSql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else{
    var list = db.ods_data.camel().select(sql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
       data: list 
    }); 
}