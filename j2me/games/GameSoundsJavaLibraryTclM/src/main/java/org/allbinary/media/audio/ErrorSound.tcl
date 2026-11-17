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

oo::class create ::ErrorSound {
    superclass ::CompositeSound
}

oo::define ::ErrorSound {
    method initFields_ErrorSound {} {
        return
    }
    

    constructor {} {
        next "resource:/wav/error.wav"
        my initFields_ErrorSound
    }
    
}

namespace eval ::ErrorSound {
    variable soundInterfaceValue {}
    variable soundInterfaceSet 0
    proc staticGet_soundInterface {} {
        variable soundInterfaceValue
        variable soundInterfaceSet
        if {!$soundInterfaceSet} {
            set soundInterfaceSet 1
            set soundInterfaceValue [::ErrorSound new]
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
        return [::ErrorSound::staticGet_soundInterface]
    }
}


