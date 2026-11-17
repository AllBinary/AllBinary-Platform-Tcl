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
# package org.allbinary.logic.system.hardware.components

oo::class create ::ComponentFactory {
    superclass ::JObject
}

oo::define ::ComponentFactory {
    method initFields_ComponentFactory {} {
        my jset VGA {}
        my jset IDE {}
        my jset SCSI {}
        my jset BRIDGE {}
        my jset ETHERNET {}
        my jset USB {}
        my jset MULTIMEDIA {}
        my jset PCI {}
        my jset RAID {}
        my jset SMBUS {}
        my jset PIC {}
        my jset Class {}
        my jset UNKNOWN {}
        my jset VGA [::Component new "VGA"]
        my jset IDE [::Component new "IDE"]
        my jset SCSI [::Component new "SCSI"]
        my jset BRIDGE [::Component new "bridge"]
        my jset ETHERNET [::Component new "Ethernet"]
        my jset USB [::Component new "USB"]
        my jset MULTIMEDIA [::Component new "Multimedia"]
        my jset PCI [::Component new "PCI"]
        my jset RAID [::Component new "RAID"]
        my jset SMBUS [::Component new "SMBus"]
        my jset PIC [::Component new "PIC"]
        my jset Class [::Component new "Class"]
        my jset UNKNOWN [::Component new [[::CommonStrings::getInstance] jget UNKNOWN]]
        return
    }

    constructor {} {
        next
        my initFields_ComponentFactory
    }
    
}

namespace eval ::ComponentFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ComponentFactory new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::ComponentFactory::staticGet_instance]
    }
}


