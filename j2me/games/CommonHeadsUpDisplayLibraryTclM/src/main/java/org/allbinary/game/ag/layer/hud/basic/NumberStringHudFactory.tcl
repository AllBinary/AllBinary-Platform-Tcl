# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.ag.layer.hud.basic

oo::class create ::NumberStringHudFactory {
    superclass ::JObject
}

oo::define ::NumberStringHudFactory {
    method initFields_NumberStringHudFactory {} {
        my jset NULL_NUMBER_STRING_HUD {}
        my jset NULL_NUMBER_STRING_HUD [my createHud]
        return
    }

    constructor {} {
        next
        my initFields_NumberStringHudFactory
    }
    
    

    method createHud {} {
        try {
            return [::NumberStringHud new [[::StringUtil::getInstance] jget EMPTY_STRING] 9 [[::BasicHudFactory::getInstance] jget ABSOLUTE] 1 0 [[::BasicColorFactory::getInstance] jget NULL_COLOR]]
        } on error {e} {
            set logUtil [::LogUtil::getInstance]
            set commonStrings [::CommonStrings::getInstance]
            $logUtil put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget CONSTRUCTOR] $e
            error [jexception RuntimeException {}]
        }
    }
}

namespace eval ::NumberStringHudFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::NullUtil::getInstance]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        if {[expr {[::NumberStringHudFactory::staticGet_instance] eq [::NullUtil::getInstance]}]} {
            ::NumberStringHudFactory::staticSet_instance [::NumberStringHudFactory new]
        }
        return [::NumberStringHudFactory::staticGet_instance]
    }
}


