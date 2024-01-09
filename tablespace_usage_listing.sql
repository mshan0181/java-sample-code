set feed off
set lines 120 pages 1000
col tablespace_name format a20
col allocated format 9999990.99
col freespace format 9999990.99
col maxsize format 9999990.99
col pctused format 90.99
spool tablespace_usage_logfile.log
set feed off
set lines 120 pages 1000
col tablespace_name format a20
col allocated format 9999990.99
col freespace format 9999990.99
col maxsize format 9999990.99
col pctused format 90.99
select tablespace_name, allocated, freespace,
  (allocated-freespace)/maxsize*100 as pctused, maxsize
  from
  (
    select a.tablespace_name,
      sum(a.bytes)/1024/1024 as allocated,
      (
        select nvl(sum(b.bytes)/1024/1024,0)
        from dba_free_space b
        where b.tablespace_name = a.tablespace_name
      ) as freespace,
      sum(decode(a.maxbytes,0,a.bytes,a.maxbytes))/1024/1024 as maxsize
    from dba_data_files a
    group by a.tablespace_name
  );
spool off 
