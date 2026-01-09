{
  "properties" : { },
  "id" : "968d8f611b3847b59e38ef2c9671b56b",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "获取滚动预计划接口",
  "createTime" : null,
  "updateTime" : 1706687463207,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getRollPrePlan",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"upMapList\": {\n            \"yellowTableList\": [],\n            \"blueTableList\": [],\n            \"whiteTableList\": []\n        },\n        \"downMapList\": {\n            \"yellowTableList\": [],\n            \"blueTableList\": [],\n            \"whiteTableList\": []\n        }\n    }\n}",
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
        "name" : "upMapList",
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
          "name" : "yellowTableList",
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
          "name" : "blueTableList",
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
          "name" : "whiteTableList",
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
      }, {
        "name" : "downMapList",
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
          "name" : "yellowTableList",
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
          "name" : "blueTableList",
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
          "name" : "whiteTableList",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

var sql ="""
SELECT
	* 
FROM
	(
	   

select case
         when substr(to_char(nextarea), 0, 1) = '1' then
          '坝上'
         when substr(to_char(nextarea), 0, 1) = '3' then
          '坝下'
         else
          ''
       end up_Or_Down,
       case
         when nextarea in (13, 33) then
          '白名单'
         when nextarea in (12, 32) then
          '蓝表'
         when nextarea in (11, 31) then
          '黄表'
         else
          ''
       end as color_Table,
       a.pclassshipname01 as p_class_shipname,
       a.previewclassname01 as preview_classname,
	   to_char(PARRIVETIME,'yyyy-MM-dd') as PARRIVETIME
	   
  from ods_hs_share. sanxia_preplan a
 where pclassshipname01  is not null and nextarea in(13,33,12,32,11,31)  and  to_char(PARRIVETIME,'yyyy-MM-dd')= to_char((select max(PARRIVETIME) from ods_hs_share. sanxia_preplan),'yyyy-MM-dd')  
union all
select case
         when substr(to_char(nextarea), 0, 1) = '1' then
          '坝上'
         when substr(to_char(nextarea), 0, 1) = '3' then
          '坝下'
         else
          ''
       end upOrDown,
       case
         when nextarea in (13, 33) then
          '白表'
         when nextarea in (12, 32) then
          '蓝表'
         when nextarea in (11, 31) then
          '黄表'
         else
          ''
       end as coloTable,
       b.pclassshipname02,
       b.previewclassname02,
	   to_char(PARRIVETIME,'yyyy-MM-dd') as PARRIVETIME
  from ods_hs_share. sanxia_preplan b
 where pclassshipname02  is not null and nextarea in(13,33,12,32,11,31)  and  to_char(PARRIVETIME,'yyyy-MM-dd')= to_char((select max(PARRIVETIME) from ods_hs_share. sanxia_preplan),'yyyy-MM-dd')  
union all
select case
         when substr(to_char(nextarea), 0, 1) = '1' then
          '坝上'
         when substr(to_char(nextarea), 0, 1) = '3' then
          '坝下'
         else
          ''
       end upOrDown,
       case
         when nextarea in (13, 33) then
          '白表'
         when nextarea in (12, 32) then
          '蓝表'
         when nextarea in (11, 31) then
          '黄表'
         else
          ''
       end as coloTable,
       c.pclassshipname03,
       c.previewclassname03,
	   to_char(PARRIVETIME,'yyyy-MM-dd') as PARRIVETIME
  from ods_hs_share. sanxia_preplan c
 where pclassshipname03  is not null and nextarea in(13,33,12,32,11,31)  and  to_char(PARRIVETIME,'yyyy-MM-dd')= to_char((select max(PARRIVETIME) from ods_hs_share. sanxia_preplan),'yyyy-MM-dd')  
union all
select case
         when substr(to_char(nextarea), 0, 1) = '1' then
          '坝上'
         when substr(to_char(nextarea), 0, 1) = '3' then
          '坝下'
         else
          ''
       end upOrDown,
       case
         when nextarea in (13, 33) then
          '白表'
         when nextarea in (12, 32) then
          '蓝表'
         when nextarea in (11, 31) then
          '黄表'
         else
          ''
       end as coloTable,
       d.pclassshipname04,
       d.previewclassname04,
	   to_char(PARRIVETIME,'yyyy-MM-dd') as PARRIVETIME
  from ods_hs_share. sanxia_preplan d
 where pclassshipname04  is not null and nextarea in(13,33,12,32,11,31)  and  to_char(PARRIVETIME,'yyyy-MM-dd')= to_char((select max(PARRIVETIME) from ods_hs_share. sanxia_preplan),'yyyy-MM-dd')  
union all
select case
         when substr(to_char(nextarea), 0, 1) = '1' then
          '坝上'
         when substr(to_char(nextarea), 0, 1) = '3' then
          '坝下'
         else
          ''
       end upOrDown,
       case
         when nextarea in (13, 33) then
          '白表'
         when nextarea in (12, 32) then
          '蓝表'
         when nextarea in (11, 31) then
          '黄表'
         else
          ''
       end as coloTable,
       e.pclassshipname05,
       e.previewclassname05,
	   to_char(PARRIVETIME,'yyyy-MM-dd') as PARRIVETIME
  from ods_hs_share. sanxia_preplan e
 where pclassshipname05  is not null and nextarea in(13,33,12,32,11,31)  and  to_char(PARRIVETIME,'yyyy-MM-dd')= to_char((select max(PARRIVETIME) from ods_hs_share. sanxia_preplan),'yyyy-MM-dd')  
union all
select case
         when substr(to_char(nextarea), 0, 1) = '1' then
          '坝上'
         when substr(to_char(nextarea), 0, 1) = '3' then
          '坝下'
         else
          ''
       end upOrDown,
       case
         when nextarea in (13, 33) then
          '白表'
         when nextarea in (12, 32) then
          '蓝表'
         when nextarea in (11, 31) then
          '黄表'
         else
          ''
       end as coloTable,
       f.pclassshipname06,
       f.previewclassname06,
	   to_char(PARRIVETIME,'yyyy-MM-dd') as PARRIVETIME
  from ods_hs_share. sanxia_preplan f
 where pclassshipname06  is not null and nextarea in(13,33,12,32,11,31)  and  to_char(PARRIVETIME,'yyyy-MM-dd')= to_char((select max(PARRIVETIME) from ods_hs_share. sanxia_preplan),'yyyy-MM-dd')  
union all
select case
         when substr(to_char(nextarea), 0, 1) = '1' then
          '坝上'
         when substr(to_char(nextarea), 0, 1) = '3' then
          '坝下'
         else
          ''
       end upOrDown,
       case
         when nextarea in (13, 33) then
          '白表'
         when nextarea in (12, 32) then
          '蓝表'
         when nextarea in (11, 31) then
          '黄表'
         else
          ''
       end as coloTable,
       g.pclassshipname07,
       g.previewclassname07,
	   to_char(PARRIVETIME,'yyyy-MM-dd') as PARRIVETIME
  from ods_hs_share. sanxia_preplan g
 where pclassshipname07  is not null and nextarea in(13,33,12,32,11,31)  and  to_char(PARRIVETIME,'yyyy-MM-dd')= to_char((select max(PARRIVETIME) from ods_hs_share. sanxia_preplan),'yyyy-MM-dd')  
union all
select case
         when substr(to_char(nextarea), 0, 1) = '1' then
          '坝上'
         when substr(to_char(nextarea), 0, 1) = '3' then
          '坝下'
         else
          ''
       end upOrDown,
       case
         when nextarea in (13, 33) then
          '白表'
         when nextarea in (12, 32) then
          '蓝表'
         when nextarea in (11, 31) then
          '黄表'
         else
          ''
       end as coloTable,
       h.pclassshipname08,
       h.previewclassname08,
	   to_char(PARRIVETIME,'yyyy-MM-dd') as PARRIVETIME
  from ods_hs_share. sanxia_preplan h
 where pclassshipname08  is not null and nextarea in(13,33,12,32,11,31)  and  to_char(PARRIVETIME,'yyyy-MM-dd')= to_char((select max(PARRIVETIME) from ods_hs_share. sanxia_preplan),'yyyy-MM-dd')  
union all
select case
         when substr(to_char(nextarea), 0, 1) = '1' then
          '坝上'
         when substr(to_char(nextarea), 0, 1) = '3' then
          '坝下'
         else
          ''
       end upOrDown,
       case
         when nextarea in (13, 33) then
          '白表'
         when nextarea in (12, 32) then
          '蓝表'
         when nextarea in (11, 31) then
          '黄表'
         else
          ''
       end as coloTable,
       i.pclassshipname09,
       i.previewclassname09,
	   to_char(PARRIVETIME,'yyyy-MM-dd') as PARRIVETIME
  from ods_hs_share. sanxia_preplan i
 where pclassshipname09  is not null and nextarea in(13,33,12,32,11,31)  and  to_char(PARRIVETIME,'yyyy-MM-dd')= to_char((select max(PARRIVETIME) from ods_hs_share. sanxia_preplan),'yyyy-MM-dd')  
union all
select case
         when substr(to_char(nextarea), 0, 1) = '1' then
          '坝上'
         when substr(to_char(nextarea), 0, 1) = '3' then
          '坝下'
         else
          ''
       end upOrDown,
       case
         when nextarea in (13, 33) then
          '白表'
         when nextarea in (12, 32) then
          '蓝表'
         when nextarea in (11, 31) then
          '黄表'
         else
          ''
       end as coloTable,
       j.pclassshipname10,
       j.previewclassname10,
	   to_char(PARRIVETIME,'yyyy-MM-dd') as PARRIVETIME
  from ods_hs_share. sanxia_preplan j
 where pclassshipname10  is not null and nextarea in(13,33,12,32,11,31)  and  to_char(PARRIVETIME,'yyyy-MM-dd')= to_char((select max(PARRIVETIME) from ods_hs_share. sanxia_preplan),'yyyy-MM-dd')  
union all
select case
         when substr(to_char(nextarea), 0, 1) = '1' then
          '坝上'
         when substr(to_char(nextarea), 0, 1) = '3' then
          '坝下'
         else
          ''
       end upOrDown,
       case
         when nextarea in (13, 33) then
          '白表'
         when nextarea in (12, 32) then
          '蓝表'
         when nextarea in (11, 31) then
          '黄表'
         else
          ''
       end as coloTable,
       k.pclassshipname11,
       k.previewclassname11,
	   to_char(PARRIVETIME,'yyyy-MM-dd') as PARRIVETIME
  from ods_hs_share. sanxia_preplan k
 where pclassshipname11  is not null and nextarea in(13,33,12,32,11,31)  and  to_char(PARRIVETIME,'yyyy-MM-dd')= to_char((select max(PARRIVETIME) from ods_hs_share. sanxia_preplan),'yyyy-MM-dd')   

	) t 
ORDER BY
	t.up_or_down,
	t.color_table,
	t.preview_classname

"""

var  sqllist=db.ods_data.camel().select(sql);
var reMap={};

var upMapList={};
var yellowTableList=[];
var whiteTableList=[];
var blueTableList=[];
var downMapList={};

var yellowTableList1=[];
var whiteTableList1=[];
var blueTableList1=[];

for (item in sqllist){
    if(item.get("previewClassname")=="优先船舶"){
        item.put("previewClassCode","priority")
    }else if(item.get("previewClassname")=="过升船机船舶"){
        item.put("previewClassCode","lifter")
    }if(item.get("previewClassname")=="鲜活货及粮食船"){
        item.put("previewClassCode","freshFood")
    }if(item.get("previewClassname")=="集装箱、商品车船"){
        item.put("previewClassCode","tainerRcial")
    }if(item.get("previewClassname")=="危险品船"){
        item.put("previewClassCode","danger")
    }if(item.get("previewClassname")=="普通货船"){
        item.put("previewClassCode","normal")
    }

    if(item.get("upOrDown")=="坝上"){
        if(item.get("colorTable")=="黄表"){
          yellowTableList.add(item);  
        }
        if(item.get("colorTable")=="蓝表"){
          blueTableList.add(item);  
        }
        if(item.get("colorTable")=="白表"){
          whiteTableList.add(item);  
        }
    }

    if(item.get("upOrDown")=="坝下"){
        if(item.get("colorTable")=="黄表"){
          yellowTableList1.add(item);  
        }
        if(item.get("colorTable")=="蓝表"){
          blueTableList1.add(item);  
        }
        if(item.get("colorTable")=="白表"){
          whiteTableList1.add(item);  
        }
    }
}
upMapList.put("yellowTableList",yellowTableList);
upMapList.put("blueTableList",blueTableList);
upMapList.put("whiteTableList",whiteTableList);

downMapList.put("yellowTableList",yellowTableList1);
downMapList.put("blueTableList",blueTableList1);
downMapList.put("whiteTableList",whiteTableList1);

reMap.put("upMapList",upMapList);
reMap.put("downMapList",downMapList);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: reMap
});