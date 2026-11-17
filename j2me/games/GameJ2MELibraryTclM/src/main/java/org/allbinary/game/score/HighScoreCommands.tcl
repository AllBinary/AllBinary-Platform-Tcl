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

oo::class create ::HighScoreCommands {
    superclass ::JObject
}

oo::define ::HighScoreCommands {
    method initFields_HighScoreCommands {} {
        my jset DISPLAY {}
        my jset PERSONAL {}
        my jset WORLD {}
        my jset DISPLAY [::Command new "Scores" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset PERSONAL [::Command new "Personal" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        my jset WORLD [::Command new "World" [[::StringUtil::getInstance] jget EMPTY_STRING] [::Command::staticGet_SCREEN] 1]
        return
    }

    constructor {} {
        next
        my initFields_HighScoreCommands
    }
    
}

namespace eval ::HighScoreCommands {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::HighScoreCommands new]
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
        return [::HighScoreCommands::staticGet_instance]
    }
}


