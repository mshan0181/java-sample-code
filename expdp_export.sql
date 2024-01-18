host expdp hr/hr@192.168.101.237/testdb DIRECTORY=DATA_PUMP_DIR DUMPFILE=exp_schema_HR_'date +"%Y%m%d"'_%U.dmp LOGFILE=HR_schema_EXP_LOG.log
