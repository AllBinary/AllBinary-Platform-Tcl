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
# package org.allbinary.logic.system.os

oo::class create ::GenericOperatingSystem {
    superclass ::JObject
}

oo::define ::GenericOperatingSystem {
    method initFields_GenericOperatingSystem {} {
        my jset osName {}
        my jset osArch {}
        my jset osVersion {}
        my jset characterSet {}
        my jset scalable false
        my jset osName {}
        my jset osArch {}
        my jset osVersion {}
        my jset characterSet [::CharacterSet new]
        my jset scalable false
        return
    }
    

    constructor {} {
        next
        my initFields_GenericOperatingSystem
        set systemProperties [::SystemProperties::getInstance]
        set stringValidationUtil [::StringValidationUtil::getInstance]
        set EMPTY_STRING [[::StringUtil::getInstance] jget EMPTY_STRING]
        if {[$stringValidationUtil isEmpty [$systemProperties getName]]} {
            my jset osName $EMPTY_STRING
        } else {
            my jset osName [$systemProperties getName]
        }
        if {[$stringValidationUtil isEmpty [$systemProperties getArch]]} {
            my jset osArch $EMPTY_STRING
        } else {
            my jset osArch [$systemProperties getArch]
        }
        if {[$stringValidationUtil isEmpty [$systemProperties getVersion]]} {
            my jset osVersion $EMPTY_STRING
        } else {
            my jset osVersion [$systemProperties getVersion]
        }
    }
    

    method getName {} {
        return [my jget osName]
    }
    

    method getVersion {} {
        return [my jget osVersion]
    }
    

    method getArch {} {
        return [my jget osArch]
    }
    

    method getCharacterSet {} {
        return [my jget characterSet]
    }
    

    method isOverScan {} {
        return false
    }
    

    method getOverScanXPercent {} {
        return 100
    }
    

    method getOverScanYPercent {} {
        return 100
    }
    

    method isScalable {} {
        return [my jget scalable]
    }
    

    method isAutoHide {} {
        return false
    }
    

    method toString {} {
        set NEW_LINE [[::CommonSeps::getInstance] jget NEW_LINE]
        set osBuffer [::StringMaker new]
        $osBuffer append "Operating System Info: \n"
        $osBuffer append [my getName]
        $osBuffer append $NEW_LINE
        $osBuffer append [my getArch]
        $osBuffer append $NEW_LINE
        $osBuffer append [my getVersion]
        $osBuffer append $NEW_LINE
        $osBuffer append [[::StringUtil::getInstance] toString1 [my getCharacterSet]]
        $osBuffer append $NEW_LINE
        return [$osBuffer toString]
    }
}

namespace eval ::GenericOperatingSystem {
}


