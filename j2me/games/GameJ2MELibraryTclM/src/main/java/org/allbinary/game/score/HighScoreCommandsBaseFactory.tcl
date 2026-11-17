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

oo::class create ::HighScoreCommandsBaseFactory {
    superclass ::JObject
}

oo::define ::HighScoreCommandsBaseFactory {
    method initFields_HighScoreCommandsBaseFactory {} {
        my jset logUtil {}
        my jset HIGH_SCORE_COMMANDS {}
        my jset logUtil [::LogUtil::getInstance]
        
        return
    }
    

    constructor {HIGH_SCORE_COMMANDS} {
        next
        my initFields_HighScoreCommandsBaseFactory
        my jset HIGH_SCORE_COMMANDS $HIGH_SCORE_COMMANDS
    }
    

    method isHighScoreCommand {command} {
        for {set index [jint [expr {[[my jget HIGH_SCORE_COMMANDS] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            if {[expr {$command eq [[my jget HIGH_SCORE_COMMANDS] get $index]}]} {
                return true
            }
        }
        return false
    }
    

    method getIndex {command} {
        for {set index [jint [expr {[[my jget HIGH_SCORE_COMMANDS] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            if {[expr {$command eq [[my jget HIGH_SCORE_COMMANDS] get $index]}]} {
                return $index
            }
        }
        error [jexception Exception "No Such Command"]
    }
}

namespace eval ::HighScoreCommandsBaseFactory {
}


