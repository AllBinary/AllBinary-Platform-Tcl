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
# package org.allbinary.animation

oo::class create ::IndexedAnimationInterface {
    superclass ::JObject
}

oo::define ::IndexedAnimationInterface {
    method initFields_IndexedAnimationInterface {} {
        return
    }
    

    method reset {} {
        error [jexception AbstractMethodError reset]
    }
    

    method setFrame {index} {
        error [jexception AbstractMethodError setFrame]
    }
    

    method getFrame {} {
        error [jexception AbstractMethodError getFrame]
    }
}

namespace eval ::IndexedAnimationInterface {
}


