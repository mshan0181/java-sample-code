set heading off 
spool DB_id_info.log
select DBID from v$database;
spool off
spool INST_no_info.log
SELECT  INSTANCE_NUMBER  from  dba_hist_snapshot where  to_char(begin_interval_time,'dd/mm/yy')=to_char(sysdate,'dd/mm/yy') and end_interval_time like '%06%' order by end_interval_time desc FETCH FIRST 1 ROWS ONLY; 
spool off 
spool snapid_BEGIN_id.log
select snap_id from    dba_hist_snapshot where  to_char(begin_interval_time,'dd/mm/yy')=to_char(sysdate,'dd/mm/yy') and end_interval_time like '%06%'
spool off 
spool snapid_END_id.log
select snap_id from    dba_hist_snapshot where  to_char(begin_interval_time,'dd/mm/yy')=to_char(sysdate,'dd/mm/yy') and end_interval_time like '%07%';
spool off
