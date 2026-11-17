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
# package org.allbinary.graphics.form

oo::class create ::FormPlayerGameInputProcessor {
    superclass ::Processor
}

oo::define ::FormPlayerGameInputProcessor {
    method initFields_FormPlayerGameInputProcessor {} {
        my jset playerGameInputCompositeInterface {}
        
        return
    }
    

    constructor {playerGameInputCompositeInterface} {
        next
        my initFields_FormPlayerGameInputProcessor
        my jset playerGameInputCompositeInterface $playerGameInputCompositeInterface
    }
    

    method process {} {
        [[my jget playerGameInputCompositeInterface] getPlayerGameInput] update
    }
}

namespace eval ::FormPlayerGameInputProcessor {
}


