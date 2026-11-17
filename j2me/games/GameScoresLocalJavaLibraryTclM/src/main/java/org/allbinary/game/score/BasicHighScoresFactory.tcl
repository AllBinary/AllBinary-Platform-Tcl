# Generated Code Do Not Modify
# package org.allbinary.game.score

oo::class create ::BasicHighScoresFactory {
    superclass ::HighScoresBase
}

oo::define ::BasicHighScoresFactory {
    method initFields_BasicHighScoresFactory {} {
        my jset logUtil {}
        my jset abeClientInformation {}
        my jset highScoresArray {}
        my jset TOP {}
        my jset SCORES {}
        my jset PERSONAL_HIGH_SCORES {}
        my jset FETCH {}
        my jset logUtil [::LogUtil::getInstance]
        
        my jset highScoresArray [jarray 1 {}]
        my jset TOP "Top"
        my jset SCORES "Scores"
        my jset PERSONAL_HIGH_SCORES "Personal Top Scores"
        my jset FETCH "fetchHighScores"
        return
    }
    

    constructor {abeClientInformation softwareInformation} {
        next
        my initFields_BasicHighScoresFactory
        my jset abeClientInformation $abeClientInformation
    }
    

    method fetchHighScores {gameInfo highScoresResultsListener} {
        [my jget logUtil] putF "Getting Local HighScores" [self] [my jget FETCH]
        my fetchHighScoresPreload $gameInfo $highScoresResultsListener true
    }
    

    method fetchHighScoresPreload {gameInfo highScoresResultsListener preload} {
        try {
            [my jget highScoresArray] set 0 [::RecordStoreHighScores::getInstance [my jget abeClientInformation] $gameInfo [my jget TOP] [my jget PERSONAL_HIGH_SCORES] [my jget SCORES] [::ScoreComparator new true]]
            $highScoresResultsListener setHighScoresArray [my jget highScoresArray]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [my jget FETCH] $e
        }
    }
    

    method createHighScoresHelper {} {
        return [::HighScoresHelper2 new]
    }
    
}

namespace eval ::BasicHighScoresFactory {
    proc loaded {index2} {
        if {[expr {$index2 >= 0}]} {
            return true
        }
        return false
    }
}


