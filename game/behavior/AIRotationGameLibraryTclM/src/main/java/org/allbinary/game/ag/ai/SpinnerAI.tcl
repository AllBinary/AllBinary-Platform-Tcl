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
# package org.allbinary.game.ag.ai

oo::class create ::SpinnerAI {
    superclass ::BasicAI
}

oo::define ::SpinnerAI {
    method initFields_SpinnerAI {} {
        my jset isEven false
        my jset direction {}
        my jset isEven false
        
        return
    }
    

    constructor {direction ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_SpinnerAI
        my jset direction $direction
    }
    

    method processAI {allBinaryLayerManager} {
        if {[my jget isEven]} {
            next [[my jget direction] get 0]
            my jset isEven false
        } else {
            next [::Canvas::staticGet_KEY_NUM1]
            my jset isEven true
        }
    }
}

namespace eval ::SpinnerAI {
}


