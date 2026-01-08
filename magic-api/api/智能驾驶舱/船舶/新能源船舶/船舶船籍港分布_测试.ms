{
  "properties" : { },
  "id" : "5a0630fc57ff4f66901ba4a32fb1035e",
  "script" : null,
  "groupId" : "8cfab9687d1a495288b389b5545384b5",
  "name" : "船舶船籍港分布_测试",
  "createTime" : null,
  "updateTime" : 1736299852490,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/shipNumsByRegportTest",
  "method" : "GET",
  "parameters" : [ {
    "name" : "propulsiveCode",
    "value" : "4",
    "description" : "1:电池  2：LNG  3：甲醇 4:氢燃料 5 其他",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": []\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
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
      "name" : "resultCode",
      "value" : "200",
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
      "name" : "resultMsg",
      "value" : "查询成功",
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
    } ]
  }
}
================================
import response;
//全部船舶按省份拆查询
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
      from chais.new_energy_ship where ship_status='已建'  
     group by ship_province) a order by a.xh
 """

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
      from chais.new_energy_ship where ship_status='已建' and propulsive_code in ('1','2')
     group by ship_province) a order by a.xh
"""
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
      from chais.new_energy_ship where ship_status='已建' and propulsive_code in ('3','4')
     group by ship_province) a order by a.xh
"""
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
      from chais.new_energy_ship where ship_status='已建' and propulsive_code in ('5','6')
     group by ship_province) a order by a.xh
"""

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
      from chais.new_energy_ship where ship_status='已建' and propulsive_code='7'
     group by ship_province) a order by a.xh
"""

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
      from chais.new_energy_ship where ship_status='已建' and propulsive_code='0'
     group by ship_province) a order by a.xh
"""

if(propulsiveCode == "1"){
    var list = db.ais.camel().select(batterySql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else if (propulsiveCode == "2") {
    var list = db.ais.camel().select(LNGSql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else if (propulsiveCode == "3") {
    var list = db.ais.camel().select(methanolSql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else if (propulsiveCode == "4") {
    var list = db.ais.camel().select(qingSql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else if (propulsiveCode == "5") {
    var list = db.ais.camel().select(otherSql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: list 
    }); 
}else{
    var list = db.ais.camel().select(sql);
    for(item in list ){
        item.put("nums", item.get("nums"):: int)
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
       data: list 
    }); 
}