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
# package org.allbinary.game.physics.velocity

oo::class create ::VelocityInterface {
    superclass ::JObject
}

oo::define ::VelocityInterface {
    method initFields_VelocityInterface {} {
        return
    }
    

    method getMaxForwardVelocity {} {
        error [jexception AbstractMethodError getMaxForwardVelocity]
    }
    

    method getMaxReverseVelocity {} {
        error [jexception AbstractMethodError getMaxReverseVelocity]
    }
    

    method limitMaxXYForwardVelocity {} {
        error [jexception AbstractMethodError limitMaxXYForwardVelocity]
    }
    

    method limitMaxXYReverseVelocity {} {
        error [jexception AbstractMethodError limitMaxXYReverseVelocity]
    }
    

    method limitXYToForwardAndReverseMaxVelocity {} {
        error [jexception AbstractMethodError limitXYToForwardAndReverseMaxVelocity]
    }
    

    method limitMaxXYVelocity {maxVelocity} {
        error [jexception AbstractMethodError limitMaxXYVelocity]
    }
    

    method setMaxForwardVelocity {maxForwardVelocity} {
        error [jexception AbstractMethodError setMaxForwardVelocity]
    }
    

    method setMaxReverseVelocity {maxReverseVelocity} {
        error [jexception AbstractMethodError setMaxReverseVelocity]
    }
}

namespace eval ::VelocityInterface {
}


