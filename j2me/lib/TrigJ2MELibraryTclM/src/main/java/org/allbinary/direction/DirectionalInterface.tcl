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
# package org.allbinary.direction

oo::class create ::DirectionalInterface {
    superclass ::JObject
}

oo::define ::DirectionalInterface {
    method initFields_DirectionalInterface {} {
        return
    }
    

    method setFrameByDirection {direction} {
        error [jexception AbstractMethodError setFrameByDirection]
    }
    

    method setFrameToAngle {angle} {
        error [jexception AbstractMethodError setFrameToAngle]
    }
    

    method adjustFrameToAngle {newAngle} {
        error [jexception AbstractMethodError adjustFrameToAngle]
    }
    

    method adjustFrame {angle} {
        error [jexception AbstractMethodError adjustFrame]
    }
}

namespace eval ::DirectionalInterface {
}


