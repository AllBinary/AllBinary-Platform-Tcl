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
# package org.allbinary.media.audio

#Use 8hz16bitmono for most J2ME
oo::class create ::FireworksSound {
    superclass ::CompositeSound
}

oo::define ::FireworksSound {
    method initFields_FireworksSound {} {
        return
    }
    

    constructor {} {
        next "resource:/wav/fireworks.wav"
        my initFields_FireworksSound
    }
    
}

namespace eval ::FireworksSound {
    variable soundInterfaceValue {}
    variable soundInterfaceSet 0
    proc staticGet_soundInterface {} {
        variable soundInterfaceValue
        variable soundInterfaceSet
        if {!$soundInterfaceSet} {
            set soundInterfaceSet 1
            set soundInterfaceValue [::FireworksSound new]
        }
        return $soundInterfaceValue
    }
    proc staticSet_soundInterface {value} {
        variable soundInterfaceValue
        variable soundInterfaceSet
        set soundInterfaceSet 1
        set soundInterfaceValue $value
    }
    proc getInstance {} {
        return [::FireworksSound::staticGet_soundInterface]
    }
}


