set lines 200
set pages 200
SELECT DBID, instance_number, snap_id, begin_interval_time, end_interval_time FROM dba_hist_snapshot where begin_interval_time > sysdate - 2 ORDER BY snap_id;

