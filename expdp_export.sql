spool EXPDP_export.log
host expdp hr/hr@192.168.101.237/testdb DIRECTORY=DATA_PUMP_DIR DUMPFILE=exp_schema_HR.dmp LOGFILE=HR_schema_EXP_LOG.log
---host expdp 192.168.101.237/testdb DIRECTORY=DATA_PUMP_DIR DUMPFILE=exp_schema_HR.dmp LOGFILE=HR_schema_EXP_LOG.log
spool off 
