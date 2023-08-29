# ODBC on IBM I

- yum install ibm-iaccess


# Command to check ODBC files
- odbcinst -j
  - DRIVERS............: /QOpenSys/etc/odbcinst.ini
  - SYSTEM DATA SOURCES: /QOpenSys/etc/odbc.ini
  - FILE DATA SOURCES..: /QOpenSys/etc/ODBCDataSources
  - USER DATA SOURCES..: /home/SUMITG/.odbc.ini


# ODBC driver name
-   IBM i Access ODBC Driver
    -   same as linux or windows

# Predefined ODBC DSN name
-  *LOCAL

# Test connection
- bash-5.1$ isql *local 
  - SQL> select * from sumitg1.qrpglesrc

