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
# package org.allbinary

oo::class create ::J2MEUtil {
    superclass ::JObject
}

oo::define ::J2MEUtil {
    method initFields_J2MEUtil {} {
        return
    }
    

    constructor {} {
        next
        my initFields_J2MEUtil
    }
    
    
    
}

namespace eval ::J2MEUtil {
    proc isJ2ME {} {
        return false
    }
    proc isJ2SE {} {
        return false
    }
    proc isHTML {} {
        return false
    }
}


