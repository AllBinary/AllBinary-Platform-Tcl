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
# package org.allbinary.game.configuration.event

oo::class create ::BaseChangedGameFeatureListener {
    superclass ::JObject
}

oo::define ::BaseChangedGameFeatureListener {
    method initFields_BaseChangedGameFeatureListener {} {
        my jset logUtil {}
        my jset gameFeatureUtil {}
        my jset list {}
        my jset changed false
        my jset logUtil [::LogUtil::getInstance]
        my jset gameFeatureUtil [::GameFeatureUtil::getInstance]
        my jset list [::BasicArrayListD new]
        my jset changed true
        return
    }

    constructor {} {
        next
        my initFields_BaseChangedGameFeatureListener
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::CommonStrings::getInstance] jget NOT_IMPLEMENTED] [self]
    }
    

    method onGameFeatureChange {gameFeatureEvent} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[my jget gameFeatureUtil] jget GAME_FEATURE_CHANGED]] append [$gameFeatureEvent getWhatChanged]] toString] [self] [[my jget gameFeatureUtil] jget ON_GAME_FEATURE_CHANGE]
        [my jget list] add [$gameFeatureEvent getGameOption]
        my setChanged true
    }
    

    method add {gameFeature} {
        [my jget list] add $gameFeature
    }
    

    method remove {gameFeature} {
        [my jget list] remove $gameFeature
    }
    

    method setChanged {initialized} {
        my jset changed $initialized
        if {[expr {![my isChanged]}]} {
            [my jget list] clear
        }
    }
    

    method isChangedFeature {gameFeature} {
        set isChanged [[my jget list] contains $gameFeature]
        set stringBuffer [::StringMaker new]
        $stringBuffer append "GameFeature: "
        $stringBuffer append [[::StringUtil::getInstance] toString1 $gameFeature]
        $stringBuffer append " isFeature: "
        $stringBuffer appendboolean [[::Features::getInstance] isFeature $gameFeature]
        $stringBuffer append " isChanged: "
        $stringBuffer appendboolean $isChanged
        [my jget logUtil] putF [$stringBuffer toString] [self] "isChanged"
        return $isChanged
    }
    

    method isChanged {} {
        return [my jget changed]
    }
}

namespace eval ::BaseChangedGameFeatureListener {
}


