#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.logic.system.hardware.windows

oo::class create ::WindowsHardware {
    superclass ::JObject
}

oo::define ::WindowsHardware {
    method initFields_WindowsHardware {} {
        return
    }
    

    constructor {} {
        next
        my initFields_WindowsHardware
    }
    

    method getMultimedia {index} {
        error [jexception RuntimeException {}]
    }
    

    method getBridge {index} {
        error [jexception RuntimeException {}]
    }
    

    method getCpu {index} {
        error [jexception RuntimeException {}]
    }
    

    method getEthernet {index} {
        error [jexception RuntimeException {}]
    }
    

    method getFireWire {index} {
        error [jexception RuntimeException {}]
    }
    

    method getHardDriveController {index} {
        error [jexception RuntimeException {}]
    }
    

    method getHardDrive {index} {
        error [jexception RuntimeException {}]
    }
    

    method getMachineAccessControlAddress {index} {
        error [jexception RuntimeException {}]
    }
    

    method getMonitor {index} {
        error [jexception RuntimeException {}]
    }
    

    method getUsb {index} {
        error [jexception RuntimeException {}]
    }
    

    method getVideo {index} {
        error [jexception RuntimeException {}]
    }
    

    method getComponent {index} {
        error [jexception RuntimeException {}]
    }
    

    method toString {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method compareTo {hardwareInterface} {
        return true
    }
    

    method difference {hardwareInterface} {
        return [[::StdUtil::getInstance] jget NULL_TABLE]
    }
}

namespace eval ::WindowsHardware {
}


