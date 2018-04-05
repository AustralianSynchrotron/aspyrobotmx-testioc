#!../../bin/linux-x86_64/robotmx

## You may have to change robotmx to something else
## everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/robotmx.dbd",0,0)
robotmx_registerRecordDeviceDriver(pdbbase)

epicsEnvSet(ROBOT,"ROBOT_MX_TEST")

## Load record instances
dbLoadRecords("../../robotmxApp/Db/RobotEpsonIP.db","P=${ROBOT},R=,L0=0,L1=1, FLNK=${ROBOT}:GRIPOPEN_STATUS")
dbLoadRecords("../../robotmxApp/Db/RobotEpsonMX.db","P=${ROBOT},R=,L0=0,L1=1, SCAN=.5 second")
dbLoadRecords("../../robotmxApp/Db/Dummies.db", "P=${ROBOT}")

iocInit()

## Start any sequence programs
#seq sncrobotmx,"user=root"
