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
# package org.allbinary.game.input

oo::class create ::GameInputProcessorUtil {
    superclass ::JObject
}

oo::define ::GameInputProcessorUtil {
    method initFields_GameInputProcessorUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_GameInputProcessorUtil
    }
    
}

namespace eval ::GameInputProcessorUtil {
    proc init {inputProcessorArray} {
        set noInputProcessor [::GameInputProcessor::getInstance]
        set total [[::InputFactory::getInstance] jget MAX]
        for {set index 0} {[expr {$index < $total}]} {jpostincr index 1} {
            set inputProcessorCanBeNull [$inputProcessorArray get $index]
            if {[expr {$inputProcessorCanBeNull eq {}}]} {
                $inputProcessorArray set $index $noInputProcessor
            }
        }
    }
}


