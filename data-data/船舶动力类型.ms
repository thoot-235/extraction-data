{
  "properties" : { },
  "id" : "bd47dc42ec7e4fbaab78c8b47ebbe33f",
  "script" : null,
  "groupId" : "8cfab9687d1a495288b389b5545384b5",
  "name" : "船舶动力类型",
  "createTime" : null,
  "updateTime" : 1760607216107,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/shipPowerType",
  "method" : "GET",
  "parameters" : [ {
    "name" : "typeCode",
    "value" : "3",
    "description" : "1:电池  2：LNG  3：甲醇",
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1760607208687,\n    \"executeTime\": 13\n}",
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
      "name" : "code",
      "value" : "-1",
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
      "value" : "系统内部出现错误",
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
      "dataType" : "Array",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1760607208687",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "13",
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
//正式数据用这个表ods_hs_share.dc_battery_ship   当前因数据较少，用DM_DATA.DC_BATTERY_SHIP_CJGX这个表
var sql = """
/*    select a.propulsive_type,
            case
                when a.propulsive_type = 1 then
                '电池'
                when a.propulsive_type = 2 then
                'LNG'
                when a.propulsive_type = 3 then
                '甲醇'
                when a.propulsive_type = 4 then
                '氢燃料'
                when a.propulsive_type = 5 then
                '其他'
            end as propulsive_name,
            nvl(b.nums, 0) as nums
        from (select level as propulsive_type from dual connect by level <= 5) a
        left join (select propulsive_type, count(1) nums
                    from (select case
                                    when propulsive_type = 1 then
                                    1
                                    when propulsive_type = 2 then
                                    1
                                    when propulsive_type = 3 then
                                    2
                                    when propulsive_type = 4 then
                                    2
                                    when propulsive_type = 5 then
                                    3
                                    when propulsive_type = 6 then
                                    3
                                    when propulsive_type = 7 then
                                    4
                                    else
                                    5
                                    end propulsive_type
                            from DM_DATA.DC_BATTERY_SHIP_CJGX)
                    group by propulsive_type) b
            on a.propulsive_type = b.propulsive_type
        order by a.propulsive_type
        */
   /* select a.propulsive_code as propulsive_type,
            case
                when a.propulsive_code = '1' then
                '电池'
                when a.propulsive_code = '2' then
                'LNG'
                when a.propulsive_code = '3' then
                '甲醇'
                when a.propulsive_code = '4' then
                '氢燃料'
                when a.propulsive_code = '5' then
                '其他'
            end as propulsive_name,
            coalesce(b.nums,0) as nums
        from (select generate_series(1,5) as propulsive_code) a
        left join (select propulsive_code, count(1) nums
                    from (select case
                                    when propulsive_code = '1' then
                                    '1'
                                    when propulsive_code = '2'then
                                    '1'
                                    when propulsive_code  = '3' then
                                    '2'
                                    when propulsive_code = '4' then
                                    '2'
                                    when propulsive_code = '5' then
                                    '3'
                                    when propulsive_code = '6'then
                                    '3'
                                    when propulsive_code = '7' then
                                    '4'
                                    else
                                    '5'
                                    end propulsive_code
                            from new_energy_ship_new where ship_status='已建' and delete_flag='0')bb
                    group by propulsive_code) b
            on a.propulsive_code::text = b.propulsive_code
        order by a.propulsive_code
        */
        select a.propulsive_code as propulsive_type,
            case
                when a.propulsive_code = '1' then
                '电池'
                when a.propulsive_code = '2' then
                'LNG'
                when a.propulsive_code = '3' then
                '甲醇'
                when a.propulsive_code = '4' then
                '氢燃料'
                when a.propulsive_code = '5' then
                '其他'
            end as propulsive_name,
            nvl(b.nums,0) as nums
        from (select level as propulsive_code from dual connect by level<=5 order by propulsive_code) a
        left join (select propulsive_code, count(1) nums
                    from (select case
                                    when ENERGY_TYPE = '1' then
                                    '1'
                                    when ENERGY_TYPE = '2'then
                                    '1'
                                    when ENERGY_TYPE  = '3' then
                                    '2'
                                    when ENERGY_TYPE = '4' then
                                    '2'
                                    when ENERGY_TYPE = '5' then
                                    '3'
                                    when ENERGY_TYPE = '6'then
                                    '3'
                                    when ENERGY_TYPE = '7' then
                                    '4'
                                    else
                                    '5'
                                    end propulsive_code
                            from SHIP_INFO_MAINTAIN where  IS_DELETED=0)bb
                    group by propulsive_code) b
            on a.propulsive_code = b.propulsive_code
        order by a.propulsive_code
"""
var batterySql = """
 /*   select a.propulsive_type,
            case
                when a.propulsive_type = 1 then
                '纯电池'
                when a.propulsive_type = 2 then
                '油电混合'
            end propulsive_name,
            nvl(b.nums, 0) as nums
        from (select level as propulsive_type from dual connect by level <= 2) a
        left join (select propulsive_type, count(1) nums
                    from (select propulsive_type
                            from DM_DATA.DC_BATTERY_SHIP_CJGX
                            where propulsive_type in (1, 2))
                    group by propulsive_type) b
            on a.propulsive_type = b.propulsive_type
        order by a.propulsive_type
*/
 /*   select a.propulsive_code as propulsive_type,
            case
                when a.propulsive_code = '1' then
                '纯电池'
                when a.propulsive_code = '2' then
                '油电混合'
            end propulsive_name,
            coalesce(b.nums, 0) as nums
        from (select generate_series(1,2) as propulsive_code) a
        left join (select propulsive_code, count(1) nums
                    from (select propulsive_code
                            from new_energy_ship_new
                            where propulsive_code in ('1','2') and ship_status='已建' and delete_flag='0')bb
                    group by propulsive_code) b
            on a.propulsive_code::text = b.propulsive_code
        order by a.propulsive_code
        */
         select a.propulsive_code as propulsive_type,
            case
                when a.propulsive_code = '1' then
                '纯电池'
                when a.propulsive_code = '2' then
                '油电混合'
            end propulsive_name,
            nvl(b.nums, 0) as nums
        from (select level as propulsive_code from dual connect by level<=2 order by propulsive_code) a
        left join (select propulsive_code, count(1) nums
                    from (select ENERGY_TYPE propulsive_code
                            from SHIP_INFO_MAINTAIN
                            where ENERGY_TYPE in ('1','2')  and IS_DELETED=0)bb
                    group by propulsive_code) b
            on a.propulsive_code = b.propulsive_code
        order by a.propulsive_code

"""
var LNGSql = """
/*    select a.propulsive_type,
            case
                when a.propulsive_type = 3 then
                '单一LNG'
                when a.propulsive_type = 4 then
                '双燃LNG'
            end propulsive_name,
            nvl(b.nums, 0) as nums
        from (select level+2 as propulsive_type from dual connect by level <= 2) a
        left join (select propulsive_type, count(1) nums
                    from (select propulsive_type
                            from DM_DATA.DC_BATTERY_SHIP_CJGX
                            where propulsive_type in (3, 4))
                    group by propulsive_type) b
            on a.propulsive_type = b.propulsive_type
        order by a.propulsive_type
*/
/* select a.propulsive_code as propulsive_type,
            case
                when a.propulsive_code = '3' then
                '单一LNG'
                when a.propulsive_code = '4' then
                '双燃LNG'
            end propulsive_name,
            coalesce(b.nums, 0) as nums
        from (select generate_series(3,4) as propulsive_code) a
        left join (select propulsive_code, count(1) nums
                    from (select propulsive_code
                            from new_energy_ship_new
                            where propulsive_code in ('3','4') and ship_status='已建' and delete_flag='0')bb
                    group by propulsive_code) b
            on a.propulsive_code::text = b.propulsive_code
        order by a.propulsive_code
        */
select a.propulsive_code as propulsive_type,
            case
                when a.propulsive_code = '3' then
                '单一LNG'
                when a.propulsive_code = '4' then
                '双燃LNG'
            end propulsive_name,
            nvl(b.nums, 0) as nums
        from (select level+2 as propulsive_code from dual connect by level <= 2) a
        left join (select propulsive_code, count(1) nums
                    from (select ENERGY_TYPE propulsive_code
                            from SHIP_INFO_MAINTAIN
                            where ENERGY_TYPE in ('3','4')  and IS_DELETED=0)bb
                    group by propulsive_code) b
            on a.propulsive_code = b.propulsive_code
        order by a.propulsive_code
"""
var methanolSql = """
/*    select a.propulsive_type,
            case
                when a.propulsive_type = 5 then
                '单一甲醇'
                when a.propulsive_type = 6 then
                '双燃甲醇'
            end propulsive_name,
            nvl(b.nums, 0) as nums
        from (select level+4 as propulsive_type from dual connect by level <= 2) a
        left join (select propulsive_type, count(1) nums
                    from (select propulsive_type
                            from DM_DATA.DC_BATTERY_SHIP_CJGX
                            where propulsive_type in (5, 6))
                    group by propulsive_type) b
            on a.propulsive_type = b.propulsive_type
        order by a.propulsive_type
*/
/*	select a.propulsive_code as propulsive_type,
            case
                when a.propulsive_code = 5 then
                '单一甲醇'
                when a.propulsive_code = 6 then
                '双燃甲醇'
            end propulsive_name,
            coalesce(b.nums, 0) as nums
        from (select generate_series(5,6) as propulsive_code) a
        left join (select propulsive_code, count(1) nums
                    from (select propulsive_code
                            from new_energy_ship_new
                            where propulsive_code in ('5','6')  and ship_status='已建' and delete_flag='0')bb
                    group by propulsive_code) b
            on a.propulsive_code::text = b.propulsive_code
        order by a.propulsive_code
        */
select a.propulsive_code as propulsive_type,
            case
                when a.propulsive_code = 5 then
                '单一甲醇'
                when a.propulsive_code = 6 then
                '双燃甲醇'
            end propulsive_name,
            nvl(b.nums, 0) as nums
        from (select level+4 as propulsive_code from dual connect by level <= 2) a
        left join (select propulsive_code, count(1) nums
                    from (select ENERGY_TYPE propulsive_code
                            from SHIP_INFO_MAINTAIN
                            where ENERGY_TYPE in ('5','6')  and IS_DELETED=0)bb
                    group by propulsive_code) b
            on a.propulsive_code = b.propulsive_code
        order by a.propulsive_code
"""
if(typeCode == "1"){
    var list = db.ods_data.camel().select(batterySql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else if (typeCode == "2") {
    var list = db.ods_data.camel().select(LNGSql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else if (typeCode == "3") {
    var list = db.ods_data.camel().select(methanolSql);
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
/*        data:[{
        "propulsiveType": "1",
        "propulsiveName": "电池",
        "nums": 58
    }, {
        "propulsiveType": "2",
        "propulsiveName": "LNG",
        "nums": 260
    }, {
        "propulsiveType": "3",
        "propulsiveName": "甲醇",
        "nums": 1
    }, {
        "propulsiveType": "4",
        "propulsiveName": "氢燃料",
        "nums": 1
    }, {
        "propulsiveType": "5",
        "propulsiveName": "其他",
        "nums": 0
    }]*/
    }); 
}