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
# package org.allbinary.game

oo::class create ::BasicHighScoresGameInfoFactory {
    superclass ::JObject
}

oo::define ::BasicHighScoresGameInfoFactory {
    method initFields_BasicHighScoresGameInfoFactory {} {
        my jset MULTI_PLAYER_SERVER {}
        my jset SINGLE_PLAYER_SERVER {}
        my jset MULTI_PLAYER_SERVER [::GameInfo new [[::GameTypeFactory::getInstance] jget MULTI_PLAYER] [::GameMode::staticGet_SERVER] [[::PlayerTypesFactory::getInstance] jget PLAYER_TYPE_ONE] 0 0]
        my jset SINGLE_PLAYER_SERVER [::GameInfo new [[::GameTypeFactory::getInstance] jget SINGLE_PLAYER] [::GameMode::staticGet_SERVER] [[::PlayerTypesFactory::getInstance] jget PLAYER_TYPE_ONE] 0 0]
        return
    }

    constructor {} {
        next
        my initFields_BasicHighScoresGameInfoFactory
    }
    
}

namespace eval ::BasicHighScoresGameInfoFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::BasicHighScoresGameInfoFactory new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::BasicHighScoresGameInfoFactory::staticGet_SINGLETON]
    }
}


