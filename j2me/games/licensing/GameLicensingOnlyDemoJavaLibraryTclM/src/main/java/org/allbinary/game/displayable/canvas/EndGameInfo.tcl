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
# package org.allbinary.game.displayable.canvas

oo::class create ::EndGameInfo {
    superclass ::JObject
}

oo::define ::EndGameInfo {
    method initFields_EndGameInfo {} {
        my jset NORMAL_GAME_OVER_WIN {}
        my jset TEASER_DEMO_GAME_END_LAST_LEVEL {}
        my jset TEASER_DEMO_GAME_END {}
        my jset gameOverStr {}
        my jset winStr {}
        my jset NORMAL_GAME_OVER_WIN "You Won"
        my jset TEASER_DEMO_GAME_END_LAST_LEVEL "End of Demo."
        my jset TEASER_DEMO_GAME_END "Demo Game Over."
        my jset gameOverStr [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset winStr [my jget gameOverStr]
        return
    }

    constructor {} {
        next
        my initFields_EndGameInfo
    }
    

    method update {gameInfo myCanvas} {
        if {[$gameInfo isLastLevel]} {
            my setWinStr [my jget TEASER_DEMO_GAME_END_LAST_LEVEL]
            my setGameOverStr [my jget TEASER_DEMO_GAME_END_LAST_LEVEL]
        } else {
            my setWinStr [my jget NORMAL_GAME_OVER_WIN]
            my setGameOverStr [my jget TEASER_DEMO_GAME_END]
        }
    }
    

    method getGameOverStr {} {
        return [my jget gameOverStr]
    }
    

    method setGameOverStr {gameOverStr} {
        my jset gameOverStr $gameOverStr
    }
    

    method getWinStr {} {
        return [my jget winStr]
    }
    

    method setWinStr {winStr} {
        my jset winStr $winStr
    }
}

namespace eval ::EndGameInfo {
}


