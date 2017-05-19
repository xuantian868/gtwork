select * from D_0001

select * from y_sysfield  where datype='SYS'

select * from y_sysfield KFWZ

select * from y_templatefield  where fieldlabel like '%份数'

select 'select ' +tblname+';' from y_archivestore order by tblname


---库房状态 ，上下架状态
select kfwz,dzbq,CRKSTATE,shelfstate from d_0001



select 72222/12 

select 72222/12/76

select * from rfid_location

select * from rfid_location_type


----库房 ，密集架 ,密集架格，密集架列
select * from y_storeroom    

select * from y_shelves  where storeroom_id='090c434c906f48e2ad044bc7e3d29d89'


select * from y_shelvesline where shelve_id ='edbba283d24d4f33bc2fcc2f748a1d54'  order by linenos ,lineloc asc

select * from y_shelvesgrid   where lineid='4f99e9905d194127854774754daf992e'
select * from y_shelvesgrid   where kwcode like '110%'
 
select * from y_updownrelation

select * from sys_dict  where type='lineLoc_type'
select * from D_0001 

 select * from y_inoutstore

select * from y_archive_use

select  * from y_templatefield  where fieldlabel ='密级'  and meta_id is not null


select * from y_template where id='5d28d996b0be44559ee12002a82e0d19'


select  * from y_templatefield where  template_id in (select id from y_template )   and fieldname='MJ'

delete  y_templatefield where  template_id in (select id from y_template )   and fieldname='MJ'

select l.id,f.id as 'fId',f.fieldlabel,f.fieldpro as 'fieldpro',f.fieldname,f.labellen,s.fieldtype, s.fieldlabel as 'label',s.fieldname as 'fname',s.labellen as 'flen',
l.ixh from y_templatelayout_field l left JOIN y_templatefield f on f.id=l.field_id  LEFT JOIN y_sysfield s on s.id=l.field_id  
where l.layout_id='f0e4f7b39c01455b92515a2c3a066661' order by l.ixh asc

select * from  y_templatelayout_field where id='d2c790e600614a72a7ba34943dc05536'

select * from y_sysfield where id='e55e924a42934893909ae41d2956789b'

select * from y_templatefield where id='e55e924a42934893909ae41d2956789b'


select * from  y_templatelayout_field where field_id='e55e924a42934893909ae41d2956789b' 

select id from y_templatefield
union select id from y_sysfield


select * from  y_templatelayout_field  where field_id not in (

  select id from y_templatefield
   union select id from y_sysfield
)

select * from Y_TEMPLATEGROUP
select * from Y_TEMPLATEORDER

select distinct layout_id from  y_templatelayout_field  where field_id not in (

  select id from y_templatefield
   union select id from y_sysfield
)

select * from y_template_layout where id in (
	select distinct layout_id from  y_templatelayout_field  where field_id not in (

  select id from y_templatefield
   union select id from y_sysfield
   )
)


select * from y_template where id in (
  
		select template_id from y_template_layout where id in (
			select distinct layout_id from  y_templatelayout_field  where field_id not in (

			select id from y_templatefield
			 union select id from y_sysfield
			 )
		)
)

select * from y_templatefield where id ='9299bbae81824e668311df823cf4fddf'

delete y_templatelayout_field where field_id='e55e924a42934893909ae41d2956789b' 
update 

select * from y_metadata   where fieldname='MJ'
update y_metadata set del_flag =1 where fieldname='MJ'

select * from y_templatefield
select * from y_templatelayout_field where field_id not in (select id  from y_templatefield ) and field_id not in (select id from y_sysfield)
 




select id,QZH FROM D_0003 where ARCHIVESTATE='归档' and DEL_FLAG=0  and qzh is null  group by QZH order by QZH 

select * from y_template





 


select * from y_sysfield  where datype='SYS'
 SELECT a.id AS "id", a.shelvesgrid_id AS "shelvesgridId", a.store_id AS "storeId", a.tabname AS "tabname", a.kwcode AS "kwcode", a.recid AS "recid", a.create_by AS "createBy.id", a.create_date AS "createDate", a.update_by AS "updateBy.id", a.update_date AS "updateDate", a.del_flag AS "delFlag" 
FROM y_updownrelation a WHERE a.del_flag = '0' AND shelvesgrid_id = 'db34b848c6274ca6a0147245f191bd6a'
 

insert into y_sysfield values('1160','MJ','密集','12',10,20,0,'N',1160,'',0,'','SYS');

select * from y_worklist

select s.lyartjob,s.* from sys_user s order by s.lyartjob 

 



 
select * from rfid_location_control


select * from y_updownrelation

select * from y_archivestore where name like'%查抄%'

select * from D_0001  where archivestate='归档'

select * from sys_menu  where name like '%上下%' or id='b5d120c858b0468eb43eb835d000bd3b'


select count(*) from sys_log
 

DROP TABLE [dbo].[y_updownrelation]
GO
CREATE TABLE [dbo].[y_updownrelation] (
[id] int identity(1,1) primary key ,
[shelvesgrid_id] varchar(64) NULL ,
[store_id] varchar(64) NULL ,
[kwcode] varchar(32) NULL ,
[recid] int NULL ,
[tabname] varchar(64) NULL ,
[CREATE_BY] varchar(64) NULL ,
[CREATE_DATE] datetime NULL ,
[UPDATE_BY] varchar(64) NULL ,
[UPDATE_DATE] datetime NULL ,
[DEL_FLAG] char(1) NULL 
)

select * from D_0002  where shelfstate =0
update d_0002 set shelfstate =0


select 'TM' as TM,DH from D_0001
union all 
select TM,DH from D_0002  
 
 


select * from y_archiveclass

select * from sys_user


select * from y_worklist


256e3c729038e325c447236d4147e9ee2bae1ec40bd0c5de1feeca30


select * from y_worklist

update y_worklist set state=1 where id='8261b81cb4d7422c9a23bed2350383eb'



 
select * from sys_dict  where label like '%科长%'


select * from sys_dict

select * from sys_user where id='9db5666af6ce48abad615834428f4f8b'


select 12.5*2*51
select * from y_message    where id='ea4fb0911b3444d2a7407e96744d3b83'
select * from y_message_log  where 

update y_message_log set acceptor_id='9db5666af6ce48abad615834428f4f8b'  where message_id='ea4fb0911b3444d2a7407e96744d3b83'
SELECT count(y_message.id) FROM y_message inner join y_message_log on y_message.id=y_message_log.message_id WHERE y_message_log.acceptor_id='9db5666af6ce48abad615834428f4f8b'
 AND y_message_log.del_flag= 0


select * from y_worklist

SELECT a.id AS "id", a.apply_id AS "applyId", a.flow_id AS "flowId", a.step_id AS "stepId", a.state AS "state", a.user_id AS "user", a.approve_date AS "approveDate", a.memo AS "memo", a.apply_type AS "applyType", a.ixh AS "ixh", a.del_flag AS "delFlag", a.create_by AS "createBy.id", a.create_date AS "createDate", a.update_by AS "updateBy.id", a.update_date AS "updateDate", a.parent_id as "parentId", a.current_flag as "currentFlag", u.name as "approveName", u2.name as "applyname" FROM y_worklist a LEFT JOIN sys_user u ON u.id = a.user_id left 
join y_archive_use y on a.apply_id=y.id left join sys_user u2 on y.create_by=u2.id WHERE a.id = '4fa0a8a9c04a4c07a87c665f62cd2871'

 


select 661.64/0.627818



select archiveauth_type as '鉴定类型',unitcode as '全宗号',dh as '档号',mlh as '目录号',title as '题名',authcotent as '鉴定内容',remarks as '备注'  from y_archiveauth_detail

where  archiveauth_id='1'

select * from y_archive_use  
select unitname as '全宗名称' ,unitcode as'全宗号' ,dh as '档号',title as '题名' from y_archive_use_detail

9db5666af6ce48abad615834428f4f8b
select * from sys_user where name like '乔%'
select * from y_archive_use_detail  where applyid='31cef2dc3a754ffeb2299b391e720229'


select * from sys_role where id ='94d19785e6104a239bb827d8be23cb5b'

select * from sys_user_role  where user_id = (select id from sys_user where login_name='yanl')

select * from sys_role_menu  where role_id ='94d19785e6104a239bb827d8be23cb5b'



SELECT DISTINCT a.id, a.parent_id AS "parent.id", a.parent_ids, a.name, a.href, a.target, a.icon, a.sort, a.is_show, a.permission, a.remarks, a.create_by AS "createBy.id", a.create_date, a.update_by AS "updateBy.id", a.update_date, a.del_flag, p.name AS "parent.name" FROM sys_menu a LEFT JOIN sys_menu p ON p.id = a.parent_id JOIN sys_role_menu rm ON rm.menu_id = a.id JOIN sys_role r ON r.id = rm.role_id AND r.useable='1' JOIN sys_user_role ur ON ur.role_id = r.id JOIN sys_user u ON u.id = ur.user_id 
AND u.id = '9db5666af6ce48abad615834428f4f8b'
 WHERE a.del_flag = 0 AND r.del_flag = 0 AND u.del_flag = 0 ORDER BY a.sort 


select * from y_report  where report_name='利用服务登记'




select * from y_report_param where report_id='5f9f476161694f7880e7a94714496a44'


select unitname as '全宗名称' ,unitcode as'全宗号' ,dh as '档号',title as '题名' from y_archive_use_detail where applyid='d03e97450a694718afa246b852758490' 



select * from y_archivestore


select * from D_0003 

select * from sys_menu  where name='档案管理编辑'
update sys_menu set name='档案库管理查看'  where id='633c9f4559cb4976a7fd4da635e42b3b'
update sys_menu set name='档案库管理编辑'  where id='c0b23efc257a4afd9e23bdc4b9361dea'
select 294.7/23 /12


select * from sys_menu  where name='模板管理'

select  convert(char(10),create_date,120),create_date from y_archiveauth



 SELECT a.id AS "id", a.type AS "type", a.reason AS "reason", a.userid AS "userid", a.amount AS "amount", a.state AS "state", a.create_by AS "createBy.id",
 convert(char(10),a.create_date,120) AS "createDateStr", a.create_date AS "createDate", a.update_by AS "updateBy.id",
 a.update_date AS "updateDate", a.remarks AS "remarks", a.del_flag AS "delFlag", u.name as "createBy.name", a.backflag AS "backflag",
 a.xhTimeState AS "xhTimeState", a.batch AS "batch" FROM (SELECT TOP 1 * FROM (SELECT TOP 20 * FROM y_archiveauth WHERE del_flag = 0 ORDER BY state DESC)f ORDER BY f.state ASC ) a LEFT JOIN SYS_USER u ON u.id = a.create_by ORDER BY a.state ASC, a.create_date DESC 



select * from sys_menu  where permission='busmanage:yArchivestoreby:view'

select count(a.id) from y_unit a WHERE a.unittype =1
select a.* from y_unit a   order by create_date desc

select * from y_metadata  where fieldname='w'
delete y_metadata  where fieldname='w'
con
select t.*,CONVERT(varchar(20),create_date,112)  from sys_dict t where CONVERT(varchar(20),create_date,112) ='20170519' order by create_date desc

delete sys_dict   where CONVERT(varchar(20),create_date,112) ='20170519'  

select t.*,CONVERT(varchar(20),create_date,112)  from sys_dict t   order by create_date desc