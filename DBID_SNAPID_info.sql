set heading off 
spool DB_id_info.log
select DBID from v$database;
spool off
spool INST_no_info.log
SELECT  INSTANCE_NUMBER  from dba_hist_snapshot where begin_interval_time > sysdate-2 and begin_interval_time like '%05.%' order by begin_interval_time desc FETCH FIRST 1 ROWS ONLY;
spool off  
spool snapid_BEGIN_id.log
SELECT  snap_id  from dba_hist_snapshot where begin_interval_time > sysdate-2 and begin_interval_time like '%05.%' order by begin_interval_time desc FETCH FIRST 1 ROWS ONLY;
spool off 
spool snapid_END_id.log
SELECT  snap_id  from dba_hist_snapshot where begin_interval_time > sysdate-2 and begin_interval_time like '%06.%' order by begin_interval_time desc FETCH FIRST 1 ROWS ONLY;
spool off
