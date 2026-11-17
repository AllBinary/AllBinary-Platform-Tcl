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
# package org.allbinary.game.configuration.feature

oo::class create ::GameFeatureItemCommandListener {
    superclass ::JObject
}

oo::define ::GameFeatureItemCommandListener {
    method initFields_GameFeatureItemCommandListener {} {
        my jset logUtil {}
        my jset gameOptionsForm {}
        my jset logUtil [::LogUtil::getInstance]
        
        return
    }
    

    constructor {gameOptionsForm} {
        next
        my initFields_GameFeatureItemCommandListener
        my jset gameOptionsForm $gameOptionsForm
    }
    

    method commandAction {command item} {
        try {
            set itemLabel [$item getLabel]
            [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget ITEM_LABEL]] append $itemLabel] toString] [self] [[::MidletStrings::getInstance] jget COMMAND_ACTION]
            if {[jinstanceof $item ::GameConfigurationGauge]} {
                [::GameConfigurationUtil::getInstance] change [my jget gameOptionsForm] $item
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [[::MidletStrings::getInstance] jget COMMAND_ACTION] $e
        }
    }
}

namespace eval ::GameFeatureItemCommandListener {
}


