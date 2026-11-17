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

oo::class create ::EarlySoundsFactory {
    superclass ::BaseSoundsFactory
}

oo::define ::EarlySoundsFactory {
    method initFields_EarlySoundsFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_EarlySoundsFactory
    }
    

    method getSoundInterfaceArray {} {
        set soundInterfaceArray [jarray 2 {}]
        set index 0
        $soundInterfaceArray set [jpostincr index 1] [::SelectSound::getInstance]
        $soundInterfaceArray set [jpostincr index 1] [::ErrorSound::getInstance]
        return $soundInterfaceArray
    }
    
}

namespace eval ::EarlySoundsFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::EarlySoundsFactory new]
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
        return [::EarlySoundsFactory::staticGet_instance]
    }
}


