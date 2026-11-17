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

oo::class create ::HighScoresHelperBase {
    superclass ::JObject
}

oo::define ::HighScoresHelperBase {
    method initFields_HighScoresHelperBase {} {
        my jset logUtil {}
        my jset highScoresArrayP {}
        my jset logUtil [::LogUtil::getInstance]
        my jset highScoresArrayP [[::LastFetchHighScoresFactory::getInstance] jget highScoresArray]
        return
    }

    constructor {} {
        next
        my initFields_HighScoresHelperBase
    }
    

    method setHighScoresArray {highScoresArrayP} {
        if {[expr {$highScoresArrayP ne {}}]} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] putF [[[[::StringMaker new] append [$commonStrings jget START]] appendint [$highScoresArrayP length]] toString] [self] "setHighScoresArray"
        } else {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] putF [$commonStrings jget START] [self] "setHighScoresArray"
        }
        my jset highScoresArrayP $highScoresArrayP
    }
    

    method getNextHighScores {} {
        return [::NullHighScoresSingletonFactory::getInstance]
    }
    

    method isAnyHighScores {} {
        error [jexception RuntimeException {}]
    }
    

    method setSelectedHighScores {selectedHighScores} {
    }
    

    method getSelectedHighScores {} {
        return [::NullHighScoresSingletonFactory::getInstance]
    }
    

    method getHighScoresArray {} {
        return [my jget highScoresArrayP]
    }
    

    method selectHighScores {} {
    }
}

namespace eval ::HighScoresHelperBase {
}


