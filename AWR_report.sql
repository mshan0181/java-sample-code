Set heading off
Set trimspool off
Set linesize 1500
Set termout on
Set feedback off
 
Spool awr_from_console.htm
select output from table(dbms_workload_repository.awr_report_html(%dbid%, %inst_num%, %bid%, %eid%));
spool off;
