Set heading off
Set trimspool off
Set linesize 1500
Set termout on
Set feedback off
Spool awr_from_console.html
select output from table(dbms_workload_repository.awr_report_html(&DB_ID, &INSTANCE_NO, &BEGIN_ID, &END_ID));
--select output from table(dbms_workload_repository.awr_report_html(&DB_ID, &INSTANCE_NO, 249, 251));
spool off;
