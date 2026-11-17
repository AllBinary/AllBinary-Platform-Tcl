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
# package org.allbinary.game.init

oo::class create ::CommonGameInitialization {
    superclass ::BaseGameInitialization
}

oo::define ::CommonGameInitialization {
    method initFields_CommonGameInitialization {} {
        my jset commonStrings {}
        my jset commonStrings [::CommonStrings::getInstance]
        return
    }
    

    constructor {resourceInitializationArray portion} {
        next $resourceInitializationArray $portion
        my initFields_CommonGameInitialization
    }
    

    method init {abeClientInformation commandListener level} {
        next $abeClientInformation $commandListener $level
        set resourceLoadingLevelFactory [::ResourceLoadingLevelFactory::getInstance]
        if {[expr {[expr {![my isGameInitialized]}] && [expr {$level == [[$resourceLoadingLevelFactory jget LOAD_ALL] getLevel]}]}]} {
            my setGameInitialized true
            set progressCanvas [::ProgressCanvasFactory::getInstance]
            [::SmallIntegerSingletonFactory::getInstance] init
            $progressCanvas addNormalPortion 50 "Integers"
            [::PointFactory::getInstance] init
            $progressCanvas addNormalPortion 50 "Points"
            ::AngleFactory::getInstance
            $progressCanvas addNormalPortion 50 "Angles"
            my initGame
            [[my jget resourceInitializationArray] get [my jget GAME_RESOURCES]] init
        }
        next $level
    }
    

    method initGame {} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
}

namespace eval ::CommonGameInitialization {
}


