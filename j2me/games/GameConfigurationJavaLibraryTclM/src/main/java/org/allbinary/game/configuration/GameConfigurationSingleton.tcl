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
# package org.allbinary.game.configuration

oo::class create ::GameConfigurationSingleton {
    superclass ::JObject
}

oo::define ::GameConfigurationSingleton {
    method initFields_GameConfigurationSingleton {} {
        my jset list {}
        my jset hashtable {}
        
        
        return
    }
    
    

    constructor {} {
        next
        my initFields_GameConfigurationSingleton
        my jset list [::BasicArrayListD new]
        my jset hashtable [[::StdUtil::getInstance] createHashtable]
    }
    

    method getInstanceByName {name} {
        return [[my jget hashtable] get $name]
    }
    

    method getOptionsBasicArrayList {} {
        return [my jget list]
    }
    

    method add {gameConfiguration} {
        [my jget list] add $gameConfiguration
    }
    

    method getHashtable {} {
        return [my jget hashtable]
    }
}

namespace eval ::GameConfigurationSingleton {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::GameConfigurationSingleton new]
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
        return [::GameConfigurationSingleton::staticGet_SINGLETON]
    }
}


