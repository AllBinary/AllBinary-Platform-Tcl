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

oo::class create ::NoPlayer {
    superclass ::BasicPlayer
}

oo::define ::NoPlayer {
    method initFields_NoPlayer {} {
        return
    }
    

    constructor {} {
        next
        my initFields_NoPlayer
    }
    

    method close {} {
    }
    

    method getContentType {} {
        return [[::StringUtil::getInstance] jget NULL_STRING]
    }
    

    method getControl {controlType} {
        return [::NullControl new]
    }
    

    method getControls {} {
        return [jarray 0 {}]
    }
}

namespace eval ::NoPlayer {
    variable NO_PLAYERValue {}
    variable NO_PLAYERSet 0
    proc staticGet_NO_PLAYER {} {
        variable NO_PLAYERValue
        variable NO_PLAYERSet
        if {!$NO_PLAYERSet} {
            set NO_PLAYERSet 1
            set NO_PLAYERValue [::NoPlayer new]
        }
        return $NO_PLAYERValue
    }
    proc staticSet_NO_PLAYER {value} {
        variable NO_PLAYERValue
        variable NO_PLAYERSet
        set NO_PLAYERSet 1
        set NO_PLAYERValue $value
    }
}


