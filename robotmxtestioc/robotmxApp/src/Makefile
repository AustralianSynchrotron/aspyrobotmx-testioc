TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = robotmx
# robotmx.dbd will be created and installed
DBD += robotmx.dbd

# robotmx.dbd will be made up from these files:
robotmx_DBD += base.dbd

# Include dbd files from all support applications:
#robotmx_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#robotmx_LIBS += xxx

# robotmx_registerRecordDeviceDriver.cpp derives from robotmx.dbd
robotmx_SRCS += robotmx_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
robotmx_SRCS_DEFAULT += robotmxMain.cpp
robotmx_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#robotmx_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
robotmx_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

