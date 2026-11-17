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
# package org.allbinary.game.configuration

oo::class create ::GameOptionsFormFactory {
    superclass ::JObject
}

oo::define ::GameOptionsFormFactory {
    method initFields_GameOptionsFormFactory {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_GameOptionsFormFactory
    }
    
    

    method init {commandListener title backgrounBasicColor foregroundBasicColor} {
        try {
            return [::GameOptionsForm new $commandListener $title $backgrounBasicColor $foregroundBasicColor]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget INIT] $e
            return [::CommandForm::getNullCommandForm]
        }
    }
}

namespace eval ::GameOptionsFormFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameOptionsFormFactory new]
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
        return [::GameOptionsFormFactory::staticGet_instance]
    }
}


