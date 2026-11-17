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
# package org.allbinary.input.motion.button

oo::class create ::TouchButtonInput {
    superclass ::Input
}

oo::define ::TouchButtonInput {
    method initFields_TouchButtonInput {} {
        my jset logUtil {}
        my jset gameKeyEventFactory {}
        my jset TOUCH_BUTTON_SOURCE_ID 0
        my jset gameKeyEvent {}
        my jset logUtil [::LogUtil::getInstance]
        my jset gameKeyEventFactory [::GameKeyEventFactory::getInstance]
        my jset TOUCH_BUTTON_SOURCE_ID [[my jget gameKeyEventFactory] jget TOUCH_BUTTON_SOURCE_ID]
        my jset gameKeyEvent [::GameKeyEvent::staticGet_NONE]
        return
    }
    

    constructor {id name} {
        next $id $name
        my initFields_TouchButtonInput
        set inputFactory [::InputFactory::getInstance]
        $inputFactory add [my getId] [self]
    }
    

    method update {inputToGameKeyMapping} {
        try {
            set gameKey [$inputToGameKeyMapping getInstance [my getId]]
            my jset gameKeyEvent [[my jget gameKeyEventFactory] getInstanceForInput [self] $gameKey]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget UPDATE] $e
        }
    }
    

    method getSourceId {} {
        return [my jget TOUCH_BUTTON_SOURCE_ID]
    }
    

    method getGameKeyEvent {} {
        return [my jget gameKeyEvent]
    }
}

namespace eval ::TouchButtonInput {
}


