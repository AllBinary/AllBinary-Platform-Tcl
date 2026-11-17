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

oo::class create ::BasicBuildGameInitializerFactory {
    superclass ::JObject
}

oo::define ::BasicBuildGameInitializerFactory {
    method initFields_BasicBuildGameInitializerFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_BasicBuildGameInitializerFactory
    }
    

    method getInstance {} {
        return [::BaseGameInitialization::staticGet_NULL_BASE_GAME_INITIALIZATION]
    }
}

namespace eval ::BasicBuildGameInitializerFactory {
    variable NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue {}
    variable NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet 0
    proc staticGet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY {} {
        variable NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue
        variable NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet
        if {!$NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet} {
            set NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet 1
            set NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue [::BasicBuildGameInitializerFactory new]
        }
        return $NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue
    }
    proc staticSet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY {value} {
        variable NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue
        variable NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet
        set NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet 1
        set NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue $value
    }
}


