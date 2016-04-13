#!../../bin/linux-x86_64/robotmx

## You may have to change robotmx to something else
## everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/robotmx.dbd",0,0)
robotmx_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/robotmx.db","user=root")

iocInit()

## Start any sequence programs
#seq sncrobotmx,"user=root"
