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

oo::class create ::GameSpeed {
    superclass ::JObject
}

oo::define ::GameSpeed {
    method initFields_GameSpeed {} {
        return
    }

    constructor {} {
        next
        my initFields_GameSpeed
    }
    

    method getSpeed {} {
        set speedGameConfiguration [[::GameConfigurationCentral::getInstance] jget SPEED]
        return ([expr {[expr {[[$speedGameConfiguration getMaxValue] intValue] - [[$speedGameConfiguration getValue] intValue]}] + 1}])
    }
    

    method getDelay {} {
        set speedGameConfiguration [[::GameConfigurationCentral::getInstance] jget SPEED]
        return [expr {19 * ([expr {[[$speedGameConfiguration getMaxValue] intValue] - [[$speedGameConfiguration getValue] intValue]}])}]
    }
    
}

namespace eval ::GameSpeed {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameSpeed new]
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
        return [::GameSpeed::staticGet_instance]
    }
}


