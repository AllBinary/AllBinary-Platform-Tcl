# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.media.audio

oo::class create ::SoundStrings {
    superclass ::JObject
}

oo::define ::SoundStrings {
    method initFields_SoundStrings {} {
        my jset STOP_ALL {}
        my jset CLOSE_ALL {}
        my jset SOUND {}
        my jset INIT_SOUND {}
        my jset STOPPING_SOUND {}
        my jset CLOSING_SOUND {}
        my jset STOP_ALL "stopAll"
        my jset CLOSE_ALL "closeAll"
        my jset SOUND " Sound: "
        my jset INIT_SOUND "Initializing Sound: "
        my jset STOPPING_SOUND "Stopping Sound: "
        my jset CLOSING_SOUND "Closing Sound: "
        return
    }

    constructor {} {
        next
        my initFields_SoundStrings
    }
    
}

namespace eval ::SoundStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::SoundStrings new]
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
        return [::SoundStrings::staticGet_instance]
    }
}


