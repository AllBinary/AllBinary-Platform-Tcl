# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

oo::class create ::LastFetchHighScoresFactory {
    superclass ::JObject
}

oo::define ::LastFetchHighScoresFactory {
    method initFields_LastFetchHighScoresFactory {} {
        my jset highScoresArray {}
        my jset highScoresArray [[::NoHighScoresFactory::getInstance] jget NO_HIGH_SCORES]
        return
    }

    constructor {} {
        next
        my initFields_LastFetchHighScoresFactory
    }
    
}

namespace eval ::LastFetchHighScoresFactory {
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
        if {[expr {[::LastFetchHighScoresFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::LastFetchHighScoresFactory::staticSet_instance [::LastFetchHighScoresFactory new]
        }
        return [::LastFetchHighScoresFactory::staticGet_instance]
    }
}


