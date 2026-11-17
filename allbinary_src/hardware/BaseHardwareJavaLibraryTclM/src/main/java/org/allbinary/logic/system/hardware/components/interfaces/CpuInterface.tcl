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
# package org.allbinary.logic.system.hardware.components.interfaces

oo::class create ::CpuInterface {
    superclass ::JObject
}

oo::define ::CpuInterface {
    method initFields_CpuInterface {} {
        return
    }
    

    method getProcessor {} {
        error [jexception AbstractMethodError getProcessor]
    }
    

    method getVendorId {} {
        error [jexception AbstractMethodError getVendorId]
    }
    

    method getCpuFamily {} {
        error [jexception AbstractMethodError getCpuFamily]
    }
    

    method getModel {} {
        error [jexception AbstractMethodError getModel]
    }
    

    method getModelName {} {
        error [jexception AbstractMethodError getModelName]
    }
    

    method getStepping {} {
        error [jexception AbstractMethodError getStepping]
    }
    

    method getCpuSpeed {} {
        error [jexception AbstractMethodError getCpuSpeed]
    }
    

    method getCacheSize {} {
        error [jexception AbstractMethodError getCacheSize]
    }
    

    method compareTo {cpuInterface} {
        error [jexception AbstractMethodError compareTo]
    }
}

namespace eval ::CpuInterface {
}


