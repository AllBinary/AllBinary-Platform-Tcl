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
# package org.allbinary.string

oo::class create ::CommonStateStrings {
    superclass ::JObject
}

oo::define ::CommonStateStrings {
    method initFields_CommonStateStrings {} {
        my jset CONTEXT {}
        my jset FINISH {}
        my jset CREATE {}
        my jset START {}
        my jset RESTART {}
        my jset RESUME {}
        my jset PAUSE {}
        my jset STOP {}
        my jset DESTROY {}
        my jset BIND {}
        my jset ON_SAVE_INSTANCE_STATE {}
        my jset ON_START_COMMAND {}
        my jset CONTEXT "Context: "
        my jset FINISH "finish"
        my jset CREATE "onCreate"
        my jset START "onStart"
        my jset RESTART "onRestart"
        my jset RESUME "onResume"
        my jset PAUSE "onPause"
        my jset STOP "onStop"
        my jset DESTROY "onDestroy"
        my jset BIND "onBind"
        my jset ON_SAVE_INSTANCE_STATE "onSaveInstanceState"
        my jset ON_START_COMMAND "onStartCommand"
        return
    }

    constructor {} {
        next
        my initFields_CommonStateStrings
    }
    
}

namespace eval ::CommonStateStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CommonStateStrings new]
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
        return [::CommonStateStrings::staticGet_instance]
    }
}


