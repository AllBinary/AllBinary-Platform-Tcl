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
# package org.allbinary.game.physics.acceleration

oo::class create ::BasicAccelerationProperties {
    superclass ::JObject
}

oo::define ::BasicAccelerationProperties {
    method initFields_BasicAccelerationProperties {} {
        my jset forward 0
        my jset reverse 0
        my jset forward 0
        my jset reverse 0
        return
    }
    

    constructor {forward reverse} {
        next
        my initFields_BasicAccelerationProperties
        my setForward $forward
        my setReverse $reverse
    }
    

    method setReverse {reverse} {
        my jset reverse $reverse
    }
    

    method getReverse {} {
        return [my jget reverse]
    }
    

    method setForward {forward} {
        my jset forward $forward
    }
    

    method getForward {} {
        return [my jget forward]
    }
}

namespace eval ::BasicAccelerationProperties {
}


