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
# package org.allbinary.game.combat.destroy

oo::class create ::DestroyableSimpleBehavior {
    superclass ::DestroyableBaseBehavior
}

oo::define ::DestroyableSimpleBehavior {
    method initFields_DestroyableSimpleBehavior {} {
        my jset ownerLayer {}
        my jset destroyed false
        
        my jset destroyed false
        return
    }
    

    constructor {ownerLayer} {
        next
        my initFields_DestroyableSimpleBehavior
        my jset ownerLayer $ownerLayer
    }
    

    method isDestroyed {} {
        return [my jget destroyed]
    }
    

    method setDestroyed {destroyed} {
        my jset destroyed $destroyed
        if {[my isDestroyed]} {
            [::DestroyedLayerProcessor::getInstance] add [my jget ownerLayer]
        }
    }
}

namespace eval ::DestroyableSimpleBehavior {
}


