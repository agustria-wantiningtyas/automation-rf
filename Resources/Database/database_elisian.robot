*** Settings ***
Library         DatabaseLibrary
Library         OperatingSystem

*** Variables ***
#http://localhost/adminer/adminer.php
${DBsystem}                       postgreSQL
${DBHost}                         sepulsapgstag.cn26rqn0gh39.ap-southeast-1.rds.amazonaws.com
${DBUser}                         root
${DBpass}                         1a700d1b6a385203733e9495782ce61e
${DBName}                         sepulsa_reporting
${DBPort}                         5432
${DBtable_trx_created}            alphaboard_kraken_trx_created


*** Keywords ***
Test Select
    Connect to Database     psycopg2     ${DBName}     ${DBUser}       ${DBpass}       ${DBHost}       ${DBPort}
    @{queryResult}=         Query       select * from topup_bulk ;
    Log Many    @{queryResult}
#    Disconnect From Database