Set heading off
Set trimspool off
Set linesize 1500
Set termout on
Set feedback off
 
Spool awr_from_console.htm
select output from table(dbms_workload_repository.awr_report_html(2940744064,1,150,151));
spool off;
