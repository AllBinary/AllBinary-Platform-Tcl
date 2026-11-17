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

oo::class create ::GameInputProcessorComposite {
    superclass ::PlayerGameInput
}

oo::define ::GameInputProcessorComposite {
    method initFields_GameInputProcessorComposite {} {
        my jset name {}
        my jset gameInputProcessorInterface {}
        my jset NAME_LABEL {}
        
        
        my jset NAME_LABEL " GameInputProcessorInterface: "
        return
    }
    

    constructor {name gameInputProcessorInterface} {
        next [::BasicArrayListD new] [::BasicArrayListD new] [expr {-1}]
        my initFields_GameInputProcessorComposite
        my jset name $name
        my jset gameInputProcessorInterface $gameInputProcessorInterface
    }
    

    method update {} {
        try {
            set list [my getGameKeyEventList]
            [my jget gameInputProcessorInterface] onInput $list
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget UPDATE] $e
        }
    }
    

    method toString {} {
        return [[[[[::StringMaker new] append [next]] append [my jget NAME_LABEL]] append [my jget name]] toString]
    }
}

namespace eval ::GameInputProcessorComposite {
}


