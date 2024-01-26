set heading off 
spool snapid_BEGIN_id.log
SELECT  snap_id  from dba_hist_snapshot where begin_interval_time > sysdate-1 and begin_interval_time like '%06.%' order by begin_interval_time desc FETCH FIRST 1 ROWS ONLY;
spool off 
spool snapid_END_id.log
SELECT  snap_id  from dba_hist_snapshot where begin_interval_time > sysdate-1 and begin_interval_time like '%08.%' order by begin_interval_time desc FETCH FIRST 1 ROWS ONLY;
spool off
