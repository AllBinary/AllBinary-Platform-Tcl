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

oo::class create ::OperatingSystemInterface {
    superclass ::JObject
}

oo::define ::OperatingSystemInterface {
    method initFields_OperatingSystemInterface {} {
        return
    }
    

    method getName {} {
        error [jexception AbstractMethodError getName]
    }
    

    method getVersion {} {
        error [jexception AbstractMethodError getVersion]
    }
    

    method getArch {} {
        error [jexception AbstractMethodError getArch]
    }
    

    method getCharacterSet {} {
        error [jexception AbstractMethodError getCharacterSet]
    }
    

    method isOverScan {} {
        error [jexception AbstractMethodError isOverScan]
    }
    

    method getOverScanXPercent {} {
        error [jexception AbstractMethodError getOverScanXPercent]
    }
    

    method getOverScanYPercent {} {
        error [jexception AbstractMethodError getOverScanYPercent]
    }
    

    method isScalable {} {
        error [jexception AbstractMethodError isScalable]
    }
    

    method isAutoHide {} {
        error [jexception AbstractMethodError isAutoHide]
    }
    

    method toString {} {
        error [jexception AbstractMethodError toString]
    }
}

namespace eval ::OperatingSystemInterface {
}


