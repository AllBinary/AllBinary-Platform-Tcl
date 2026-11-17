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

oo::class create ::Sounds {
    superclass ::JObject
}

oo::define ::Sounds {
    method initFields_Sounds {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset soundStrings {}
        my jset soundsFactoryInterface {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset soundStrings [::SoundStrings::getInstance]
        
        return
    }
    

    constructor {soundsFactoryInterface} {
        next
        my initFields_Sounds
        my jset soundsFactoryInterface $soundsFactoryInterface
    }
    

    method init {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget INIT]
        set commonLabels [::CommonLabels::getInstance]
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        [my jget soundsFactoryInterface] init
        set soundInterfaceArray [[my jget soundsFactoryInterface] getSoundInterfaceArray]
        set smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
        set indexInteger {}
        set indexString {}
        set stringBuffer [::StringMaker new]
        for {set i 0} {[expr {$i < [$soundInterfaceArray length]}]} {jpostincr i 1} {
            set soundInterface [$soundInterfaceArray get $i]
            if {[expr {$soundInterface ne {}}]} {
                set indexInteger [$smallIntegerSingletonFactory getAt $i]
                set indexString [$indexInteger toString]
                $stringBuffer delete 0 [$stringBuffer length]
                $stringBuffer append [$commonLabels jget INDEX_LABEL]
                $stringBuffer append $indexString
                $stringBuffer append [[my jget soundStrings] jget SOUND]
                $stringBuffer append [jclassname $soundInterface]
                [my jget logUtil] putF [$stringBuffer toString] [self] [[my jget commonStrings] jget INIT]
                $soundInterface init
                $progressCanvas addNormalPortion 100 [[[[::StringMaker new] append [[my jget soundStrings] jget INIT_SOUND]] append $indexString] toString]
            }
        }
        [my jget soundsFactoryInterface] setInitialized true
        [my jget logUtil] putF [[my jget commonStrings] jget END] [self] [[my jget commonStrings] jget INIT]
    }
    

    method stopAll {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget soundStrings] jget STOP_ALL]
        set soundInterfaceArray [[my jget soundsFactoryInterface] getSoundInterfaceArray]
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        set player {}
        for {set index 0} {[expr {$index < [$soundInterfaceArray length]}]} {jpostincr index 1} {
            if {[expr {[$soundInterfaceArray get $index] ne {}}]} {
                set player [[$soundInterfaceArray get $index] getPlayerP]
                if {[expr {$player ne {}}]} {
                    $player stop
                    $progressCanvas addPortion 100 [[my jget soundStrings] jget STOPPING_SOUND] $index
                }
            }
        }
    }
    

    method closeAll {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget soundStrings] jget CLOSE_ALL]
        set soundInterfaceArray [[my jget soundsFactoryInterface] getSoundInterfaceArray]
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        set player {}
        for {set index 0} {[expr {$index < [$soundInterfaceArray length]}]} {jpostincr index 1} {
            if {[expr {[$soundInterfaceArray get $index] ne {}}]} {
                set player [[$soundInterfaceArray get $index] getPlayerP]
                if {[expr {$player ne {}}]} {
                    $player close
                    $progressCanvas addPortion 100 [[my jget soundStrings] jget CLOSING_SOUND] $index
                }
            }
        }
    }
}

namespace eval ::Sounds {
}


