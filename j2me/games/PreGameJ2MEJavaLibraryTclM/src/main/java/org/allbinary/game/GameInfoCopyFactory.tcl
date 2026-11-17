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

oo::class create ::GameInfoCopyFactory {
    superclass ::JObject
}

oo::define ::GameInfoCopyFactory {
    method initFields_GameInfoCopyFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_GameInfoCopyFactory
    }
    
    
}

namespace eval ::GameInfoCopyFactory {
    proc getInstanceMaxLevel {gameInfo maxLevel} {
        return [::GameInfo new [$gameInfo getGameType] [$gameInfo getGameMode] [$gameInfo getPlayerType] $maxLevel [$gameInfo getCurrentLevel]]
    }
    proc getInstance {gameInfo} {
        return [::GameInfo new [$gameInfo getGameType] [$gameInfo getGameMode] [$gameInfo getPlayerType] [$gameInfo getHighestLevel] [$gameInfo getCurrentLevel]]
    }
}


