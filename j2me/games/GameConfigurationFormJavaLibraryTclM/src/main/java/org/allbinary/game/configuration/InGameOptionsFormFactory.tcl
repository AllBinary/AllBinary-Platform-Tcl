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

oo::class create ::InGameOptionsFormFactory {
    superclass ::JObject
}

oo::define ::InGameOptionsFormFactory {
    method initFields_InGameOptionsFormFactory {} {
        my jset logUtil {}
        my jset SINGLETON {}
        my jset logUtil [::LogUtil::getInstance]
        my jset SINGLETON [::CommandForm::getNullCommandForm]
        return
    }

    constructor {} {
        next
        my initFields_InGameOptionsFormFactory
    }
    
    

    method init {commandListener initInterface title backgrounBasicColor foregroundBasicColor} {
        try {
            if {[expr {[my jget SINGLETON] eq [::CommandForm::getNullCommandForm]}]} {
                $initInterface init
                my jset SINGLETON [::InGameOptionsForm new $commandListener $title $backgrounBasicColor $foregroundBasicColor]
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget INIT] $e
        }
    }
    

    method get {} {
        return [my jget SINGLETON]
    }
}

namespace eval ::InGameOptionsFormFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
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
        if {[expr {[::InGameOptionsFormFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::InGameOptionsFormFactory::staticSet_instance [::InGameOptionsFormFactory new]
        }
        return [::InGameOptionsFormFactory::staticGet_instance]
    }
}


