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
# package org.allbinary.game.ai

oo::class create ::ArtificialIntelligenceInterfaceFactoryInterfaceFactory {
    superclass ::JObject
}

oo::define ::ArtificialIntelligenceInterfaceFactoryInterfaceFactory {
    method initFields_ArtificialIntelligenceInterfaceFactoryInterfaceFactory {} {
        my jset list {}
        my jset list [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        return
    }

    constructor {} {
        next
        my initFields_ArtificialIntelligenceInterfaceFactoryInterfaceFactory
    }
    

    method clear {} {
        my jset list [::BasicArrayListD new]
    }
    
    

    method getInstanceFromCollection {hashtable} {
        set typeInteger [$hashtable get [::BasicAI::staticGet_ID]]
        set type [$typeInteger intValue]
        set artificialIntelligenceInterfaceFactoryInterface [[[my jget list] jget objectArray] get [jint [expr {$type - 1}]]]
        return $artificialIntelligenceInterfaceFactoryInterface
    }
    

    method add {artificialIntelligenceInterfaceFactoryInterface} {
        [my jget list] add $artificialIntelligenceInterfaceFactoryInterface
    }
}

namespace eval ::ArtificialIntelligenceInterfaceFactoryInterfaceFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::ArtificialIntelligenceInterfaceFactoryInterfaceFactory new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::ArtificialIntelligenceInterfaceFactoryInterfaceFactory::staticGet_SINGLETON]
    }
}


