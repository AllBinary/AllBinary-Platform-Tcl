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
oo::class create ::SelectSound {
    superclass ::CompositeSound
}

oo::define ::SelectSound {
    method initFields_SelectSound {} {
        return
    }
    

    constructor {} {
        next "resource:/wav/select.wav"
        my initFields_SelectSound
    }
    
}

namespace eval ::SelectSound {
    variable soundInterfaceValue {}
    variable soundInterfaceSet 0
    proc staticGet_soundInterface {} {
        variable soundInterfaceValue
        variable soundInterfaceSet
        if {!$soundInterfaceSet} {
            set soundInterfaceSet 1
            set soundInterfaceValue [::SelectSound new]
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
        return [::SelectSound::staticGet_soundInterface]
    }
}


