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
# package org.allbinary.logic.system.hardware

oo::class create ::HardwareInterface {
    superclass ::JObject
}

oo::define ::HardwareInterface {
    method initFields_HardwareInterface {} {
        return
    }
    

    method getComponent {index} {
        error [jexception AbstractMethodError getComponent]
    }
    

    method toString {} {
        error [jexception AbstractMethodError toString]
    }
    

    method compareTo {hardwareInterface} {
        error [jexception AbstractMethodError compareTo]
    }
    

    method difference {hardwareInterface} {
        error [jexception AbstractMethodError difference]
    }
}

namespace eval ::HardwareInterface {
}


