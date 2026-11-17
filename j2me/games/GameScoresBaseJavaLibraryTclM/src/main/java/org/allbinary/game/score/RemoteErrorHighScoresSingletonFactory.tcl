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
# package org.allbinary.game.score

oo::class create ::RemoteErrorHighScoresSingletonFactory {
    superclass ::JObject
}

oo::define ::RemoteErrorHighScoresSingletonFactory {
    method initFields_RemoteErrorHighScoresSingletonFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_RemoteErrorHighScoresSingletonFactory
    }
    
}

namespace eval ::RemoteErrorHighScoresSingletonFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::HighScores new [[::CommonStrings::getInstance] jget LOADING] "Remote High Scores Did Not Load" [[::CommonStrings::getInstance] jget PERIODS]]
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
        return [::RemoteErrorHighScoresSingletonFactory::staticGet_SINGLETON]
    }
}


