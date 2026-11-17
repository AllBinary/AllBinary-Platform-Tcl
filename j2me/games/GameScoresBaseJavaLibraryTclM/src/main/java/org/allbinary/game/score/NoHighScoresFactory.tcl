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

oo::class create ::NoHighScoresFactory {
    superclass ::HighScoresBase
}

oo::define ::NoHighScoresFactory {
    method initFields_NoHighScoresFactory {} {
        my jset logUtil {}
        my jset NO_HIGH_SCORES {}
        my jset logUtil [::LogUtil::getInstance]
        my jset NO_HIGH_SCORES [jarray 0 {}]
        return
    }
    
    

    constructor {} {
        next
        my initFields_NoHighScoresFactory
    }
    

    method fetchHighScores {gameInfo highScoresResultsListener} {
        [my jget logUtil] putF "Getting No HighScores" [self] "fetchHighScores"
        $highScoresResultsListener setHighScoresArray [my jget NO_HIGH_SCORES]
    }
    

    method createHighScoresHelper {} {
        return [::HighScoresHelperBase new]
    }
}

namespace eval ::NoHighScoresFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::NoHighScoresFactory new]
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
        return [::NoHighScoresFactory::staticGet_instance]
    }
}


