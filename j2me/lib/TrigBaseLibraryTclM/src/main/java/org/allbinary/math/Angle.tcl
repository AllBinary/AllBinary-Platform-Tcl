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
# package org.allbinary.math

oo::class create ::Angle {
    superclass ::JObject
}

oo::define ::Angle {
    method initFields_Angle {} {
        my jset value 0
        
        return
    }
    

    constructor {angle} {
        next
        my initFields_Angle
        my jset value $angle
    }
    

    method getValue {} {
        return [my jget value]
    }
}

namespace eval ::Angle {
}


