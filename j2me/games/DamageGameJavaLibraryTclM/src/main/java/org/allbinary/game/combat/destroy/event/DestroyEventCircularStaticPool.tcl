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
# package org.allbinary.game.combat.destroy.event

oo::class create ::DestroyEventCircularStaticPool {
    superclass ::JObject
}

oo::define ::DestroyEventCircularStaticPool {
    method initFields_DestroyEventCircularStaticPool {} {
        my jset EVENT_POOL {}
        my jset EVENT_POOL [::AllBinaryEventCircularPool new 20]
        return
    }
    
    

    constructor {} {
        next
        my initFields_DestroyEventCircularStaticPool
    }
    

    method init {combatGameCanvas} {
        [my jget EVENT_POOL] initAllBinaryEventCircularPool [::DestroyEventFactory new $combatGameCanvas]
    }
    

    method getInstanceForLayer {layerInterface} {
        set destroyedEvent [[my jget EVENT_POOL] getNextInstance]
        $destroyedEvent setLayerInterfaceForCircularStaticPool $layerInterface
        return $destroyedEvent
    }
}

namespace eval ::DestroyEventCircularStaticPool {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DestroyEventCircularStaticPool new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::DestroyEventCircularStaticPool::staticGet_instance]
    }
}


