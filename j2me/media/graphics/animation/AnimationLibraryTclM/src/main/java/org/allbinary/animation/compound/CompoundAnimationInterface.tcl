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
# package org.allbinary.animation.compound

oo::class create ::CompoundAnimationInterface {
    superclass ::JObject
}

oo::define ::CompoundAnimationInterface {
    method initFields_CompoundAnimationInterface {} {
        return
    }
    

    method nextAnimation {} {
        error [jexception AbstractMethodError nextAnimation]
    }
    

    method previousAnimation {} {
        error [jexception AbstractMethodError previousAnimation]
    }
    

    method setAnimation {index} {
        error [jexception AbstractMethodError setAnimation]
    }
    

    method getCurrentAnimation {} {
        error [jexception AbstractMethodError getCurrentAnimation]
    }
}

namespace eval ::CompoundAnimationInterface {
}


