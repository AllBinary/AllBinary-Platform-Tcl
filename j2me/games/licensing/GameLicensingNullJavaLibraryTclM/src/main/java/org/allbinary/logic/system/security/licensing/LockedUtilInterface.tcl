# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.system.security.licensing

oo::class create ::LockedUtilInterface {
    superclass ::JObject
}

oo::define ::LockedUtilInterface {
    method initFields_LockedUtilInterface {} {
        return
    }
    

    method isLocked {} {
        error [jexception AbstractMethodError isLocked]
    }
    

    method isLockedFeature {lockableFeatrue} {
        error [jexception AbstractMethodError isLockedFeature]
    }
}

namespace eval ::LockedUtilInterface {
}


