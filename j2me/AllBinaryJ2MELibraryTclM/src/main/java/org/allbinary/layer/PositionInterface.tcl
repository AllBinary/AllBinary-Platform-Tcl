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
# package org.allbinary.layer

oo::class create ::PositionInterface {
    superclass ::JObject
}

oo::define ::PositionInterface {
    method initFields_PositionInterface {} {
        return
    }
    

    method setPosition {x y z} {
        error [jexception AbstractMethodError setPosition]
    }
}

namespace eval ::PositionInterface {
}


