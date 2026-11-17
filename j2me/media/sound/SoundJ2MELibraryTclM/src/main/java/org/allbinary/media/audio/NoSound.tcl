# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

oo::class create ::NoSound {
    superclass ::Sound
}

oo::define ::NoSound {
    method initFields_NoSound {} {
        return
    }
    
    

    constructor {} {
        next [[::StringUtil::getInstance] jget EMPTY_STRING]
        my initFields_NoSound
        my setPlayerP [::NoPlayer::staticGet_NO_PLAYER]
    }
}

namespace eval ::NoSound {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::NoSound new]
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
        return [::NoSound::staticGet_instance]
    }
}


