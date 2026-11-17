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
# package org.allbinary.game.score.displayable

oo::class create ::HighScoreUtil {
    superclass ::JObject
}

oo::define ::HighScoreUtil {
    method initFields_HighScoreUtil {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset highScoresFactoryInterface {}
        my jset highScoresArray {}
        my jset highScore {}
        my jset abeClientInformation {}
        my jset gameInfo {}
        my jset highScoresHelper {}
        my jset firstTime false
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        
        
        
        
        my jset firstTime true
        return
    }
    

    constructor {highScoresFactoryInterface highScoresHelper abeClientInformation gameInfo cmdListener name highScore} {
        next
        my initFields_HighScoreUtil
        my jset highScoresFactoryInterface $highScoresFactoryInterface
        my jset highScoresHelper $highScoresHelper
        my jset highScoresArray [[my jget highScoresHelper] getHighScoresArray]
        my jset highScore $highScore
        my jset abeClientInformation $abeClientInformation
        my jset gameInfo $gameInfo
    }
    

    method setHighScoresArray {highScoresArray} {
        my jset highScoresArray $highScoresArray
        my jset firstTime false
        my saveHighScore
    }
    

    method update {name} {
        [::HighScoreNamePersistanceSingleton::getInstance] save [my jget abeClientInformation] [my jget gameInfo] $name
        [my jget highScore] setName $name
    }
    

    method saveHighScore {} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonStrings] jget START]] append [[::StringUtil::getInstance] toString1 [my jget highScore]]] toString] [self] "saveHighScore"
        set size [[my jget highScoresArray] length]
        if {[expr {[my jget firstTime] && [expr {$size == 0}]}]} {
            [my jget logUtil] putF "Games canvas did not give us any HighScores" [self] "saveHighScore"
            [my jget highScoresFactoryInterface] fetchHighScores [my jget gameInfo] [self]
            return
        }
        set highScores {}
        set highScoresAsString {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set highScores [[my jget highScoresArray] get $index]
            $highScores addHighScore [my jget highScore]
            set highScoresAsString [$highScores toString]
            [my jget logUtil] putF [[[[::StringMaker new] append "Added/Adding Score: "] append $highScoresAsString] toString] [self] "saveHighScore"
        }
        [my jget highScoresHelper] setHighScoresArray [my jget highScoresArray]
    }
    

    method submit {myCanvas} {
        set commandListener [$myCanvas getCustomCommandListener]
        $commandListener commandAction [::HighScoreUtil::staticGet_SUBMIT_TEXTBOX_COMMAND] $myCanvas
    }
}

namespace eval ::HighScoreUtil {
    variable SUBMIT_TEXTBOX_COMMANDValue {}
    variable SUBMIT_TEXTBOX_COMMANDSet 0
    proc staticGet_SUBMIT_TEXTBOX_COMMAND {} {
        variable SUBMIT_TEXTBOX_COMMANDValue
        variable SUBMIT_TEXTBOX_COMMANDSet
        if {!$SUBMIT_TEXTBOX_COMMANDSet} {
            set SUBMIT_TEXTBOX_COMMANDSet 1
            set SUBMIT_TEXTBOX_COMMANDValue [::Command new "Submit" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        }
        return $SUBMIT_TEXTBOX_COMMANDValue
    }
    proc staticSet_SUBMIT_TEXTBOX_COMMAND {value} {
        variable SUBMIT_TEXTBOX_COMMANDValue
        variable SUBMIT_TEXTBOX_COMMANDSet
        set SUBMIT_TEXTBOX_COMMANDSet 1
        set SUBMIT_TEXTBOX_COMMANDValue $value
    }
}


