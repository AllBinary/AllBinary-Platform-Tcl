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
# package org.allbinary.game.displayable.canvas

oo::class create ::GameLimitedCommandTextItemArrayFactory {
    superclass ::JObject
}

oo::define ::GameLimitedCommandTextItemArrayFactory {
    method initFields_GameLimitedCommandTextItemArrayFactory {} {
        my jset commandTextItemArrayFactory {}
        my jset commandTextItemArrayFactory [::CommandTextItemArrayFactory new [::LimitCommandsVisitor new]]
        return
    }

    constructor {} {
        next
        my initFields_GameLimitedCommandTextItemArrayFactory
    }
    
    

    method getCommandTextItemArrayFactory {} {
        return [my jget commandTextItemArrayFactory]
    }
}

namespace eval ::GameLimitedCommandTextItemArrayFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameLimitedCommandTextItemArrayFactory new]
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
        return [::GameLimitedCommandTextItemArrayFactory::staticGet_instance]
    }
}


