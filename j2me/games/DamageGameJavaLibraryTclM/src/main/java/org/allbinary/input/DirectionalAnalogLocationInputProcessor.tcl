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
# package org.allbinary.input

oo::class create ::DirectionalAnalogLocationInputProcessor {
    superclass ::AnalogLocationInputProcessor
}

oo::define ::DirectionalAnalogLocationInputProcessor {
    method initFields_DirectionalAnalogLocationInputProcessor {} {
        my jset logUtil {}
        my jset inputProcessorArray {}
        my jset gameKeyFactory {}
        my jset leftGameKeyEvent {}
        my jset rightGameKeyEvent {}
        my jset upGameKeyEvent {}
        my jset downGameKeyEvent {}
        my jset leftTriggerGameKeyEvent {}
        my jset rightTriggerGameKeyEvent {}
        my jset logUtil [::LogUtil::getInstance]
        
        my jset gameKeyFactory [::GameKeyFactory::getInstance]
        my jset leftGameKeyEvent [::GameKeyEvent::staticGet_NONE]
        my jset rightGameKeyEvent [::GameKeyEvent::staticGet_NONE]
        my jset upGameKeyEvent [::GameKeyEvent::staticGet_NONE]
        my jset downGameKeyEvent [::GameKeyEvent::staticGet_NONE]
        my jset leftTriggerGameKeyEvent [::GameKeyEvent::staticGet_NONE]
        my jset rightTriggerGameKeyEvent [::GameKeyEvent::staticGet_NONE]
        return
    }
    

    constructor {inputProcessorArray} {
        next
        my initFields_DirectionalAnalogLocationInputProcessor
        my jset inputProcessorArray $inputProcessorArray
        try {
            my jset leftGameKeyEvent [[::GameKeyEventFactory::getInstance] getInstanceForInput [self] [[my jget gameKeyFactory] jget LEFT]]
            my jset rightGameKeyEvent [[::GameKeyEventFactory::getInstance] getInstanceForInput [self] [[my jget gameKeyFactory] jget RIGHT]]
            my jset upGameKeyEvent [[::GameKeyEventFactory::getInstance] getInstanceForInput [self] [[my jget gameKeyFactory] jget UP]]
            my jset downGameKeyEvent [[::GameKeyEventFactory::getInstance] getInstanceForInput [self] [[my jget gameKeyFactory] jget DOWN]]
            my jset leftTriggerGameKeyEvent [[::GameKeyEventFactory::getInstance] getInstanceForInput [self] [[my jget gameKeyFactory] jget KEY_NUM0]]
            my jset rightTriggerGameKeyEvent [[::GameKeyEventFactory::getInstance] getInstanceForInput [self] [[my jget gameKeyFactory] jget KEY_NUM5]]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget CONSTRUCTOR] $e
        }
    }
    

    method process {allbinaryLayerManager analogLocationInput} {
        try {
            set customGPoint {}
            set customGPoint [$analogLocationInput getCustomGPoint]
            set x [$customGPoint getX]
            set y [$customGPoint getY]
            set leftTrigger [$analogLocationInput getLeftTrigger]
            set rightTrigger [$analogLocationInput getRightTrigger]
            if {[expr {$x < 0}]} {
                [[my jget inputProcessorArray] get [[my jget leftGameKeyEvent] getKey]] processAnalog $allbinaryLayerManager [my jget leftGameKeyEvent] $x
            } elseif {[expr {$x > 0}]} {
                [[my jget inputProcessorArray] get [[my jget rightGameKeyEvent] getKey]] processAnalog $allbinaryLayerManager [my jget rightGameKeyEvent] $x
            }
            if {[expr {$y < 0}]} {
                [[my jget inputProcessorArray] get [[my jget downGameKeyEvent] getKey]] processAnalog $allbinaryLayerManager [my jget downGameKeyEvent] $y
            } elseif {[expr {$y > 0}]} {
                [[my jget inputProcessorArray] get [[my jget upGameKeyEvent] getKey]] processAnalog $allbinaryLayerManager [my jget upGameKeyEvent] $y
            }
            if {[expr {$leftTrigger > 0}]} {
                [[my jget inputProcessorArray] get [[my jget leftTriggerGameKeyEvent] getKey]] processAnalog $allbinaryLayerManager [my jget leftTriggerGameKeyEvent] $leftTrigger
            }
            if {[expr {$rightTrigger > 0}]} {
                [[my jget inputProcessorArray] get [[my jget rightTriggerGameKeyEvent] getKey]] processAnalog $allbinaryLayerManager [my jget rightTriggerGameKeyEvent] $rightTrigger
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put "Unable to process analog input" [self] [$commonStrings jget PROCESS] $e
        }
    }
    

    method getSourceId {} {
        return 0
    }
}

namespace eval ::DirectionalAnalogLocationInputProcessor {
}


