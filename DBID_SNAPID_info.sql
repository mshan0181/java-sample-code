set heading off 
spool DB_id_info.log
select DBID from v$database;
spool off
spool INST_no_info.log
select INSTANCE_NUMBER from    dba_hist_snapshot where  to_char(begin_interval_time,'dd/mm/yy')=to_char(sysdate,'dd/mm/yy') and SUBSTR(end_interval_time, 11, 2) like '%01%';
spool off 
spool snapid_BEGIN_id.log
select snap_id from    dba_hist_snapshot where  to_char(begin_interval_time,'dd/mm/yy')=to_char(sysdate,'dd/mm/yy') and SUBSTR(end_interval_time, 11, 2) like '%01%';
spool off 
spool snapid_END_id.log
select snap_id from    dba_hist_snapshot where  to_char(begin_interval_time,'dd/mm/yy')=to_char(sysdate,'dd/mm/yy') and SUBSTR(end_interval_time, 11, 2) like '%02%';
spool off
