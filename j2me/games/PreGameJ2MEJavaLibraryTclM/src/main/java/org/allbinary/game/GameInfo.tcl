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

oo::class create ::GameInfo {
    superclass ::JObject
}

oo::define ::GameInfo {
    method initFields_GameInfo {} {
        my jset logUtil {}
        my jset gameInfoData {}
        my jset gameType {}
        my jset gameMode {}
        my jset playerType {}
        my jset highestLevel 0
        my jset currentLevel 0
        my jset NEW_LEVEL {}
        my jset SET_CURRENT_LEVEL {}
        my jset NEXT_GAME_LEVEL {}
        my jset logUtil [::LogUtil::getInstance]
        my jset gameInfoData [::GameInfoData::getInstance]
        
        
        
        my jset highestLevel 0
        
        my jset NEW_LEVEL "New Level: "
        my jset SET_CURRENT_LEVEL "setCurrentLevel"
        my jset NEXT_GAME_LEVEL "nextGameLevel"
        return
    }
    

    constructor {gameType gameMode playerType highestLevel currentLevel} {
        next
        my initFields_GameInfo
        my jset gameType $gameType
        my jset gameMode $gameMode
        my setHighestLevel $highestLevel
        my jset currentLevel $currentLevel
        my jset playerType $playerType
    }
    

    method getGameType {} {
        return [my jget gameType]
    }
    

    method getGameMode {} {
        return [my jget gameMode]
    }
    

    method getPlayerType {} {
        return [my jget playerType]
    }
    

    method getHighestLevel {} {
        return [my jget highestLevel]
    }
    

    method setHighestLevel {highestLevel} {
        my jset highestLevel $highestLevel
    }
    

    method getCurrentLevel {} {
        return [my jget currentLevel]
    }
    

    method setCurrentLevel {currentLevel} {
        my jset currentLevel $currentLevel
        [my jget logUtil] putF [[[[::StringMaker new] append [my jget NEW_LEVEL]] appendint [my getCurrentLevel]] toString] [self] [my jget SET_CURRENT_LEVEL]
    }
    

    method nextGameLevel {} {
        if {[expr {[my getCurrentLevel] < [my getHighestLevel]}]} {
            my jpostinc currentLevel 1
        }
        [my jget logUtil] putF [[[[[[::StringMaker new] append [[::CommonLabels::getInstance] jget NEXT]] append [[::CommonSeps::getInstance] jget SPACE]] append [my jget NEW_LEVEL]] appendint [my getCurrentLevel]] toString] [self] [my jget NEXT_GAME_LEVEL]
    }
    

    method previousGameLevel {} {
        if {[expr {[my getCurrentLevel] > 1}]} {
            my jpostinc currentLevel -1
        }
    }
    

    method isLastLevel {} {
        if {[expr {[my getCurrentLevel] >= [my getHighestLevel]}]} {
            return true
        } else {
            return false
        }
    }
    

    method toHashtable {} {
        set hashtable [[::StdUtil::getInstance] createHashtable]
        $hashtable put [[my jget gameInfoData] jget GAME_TYPE] [[my getGameType] toString]
        $hashtable put [[my jget gameInfoData] jget GAME_MODE] [[my jget gameMode] toString]
        $hashtable put [[my jget gameInfoData] jget PLAYER_TYPE] [[my jget playerType] toString]
        $hashtable put [[my jget gameInfoData] jget HIGHEST_LEVEL] [jstr [my getHighestLevel]]
        $hashtable put [[my jget gameInfoData] jget CURRENT_LEVEL] [jstr [my jget currentLevel]]
        return $hashtable
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        set commonSeps [::CommonSeps::getInstance]
        $stringBuffer append [[my jget gameInfoData] jget GAME_TYPE]
        $stringBuffer append [$commonSeps jget EQUALS]
        $stringBuffer append [[my getGameType] toString]
        $stringBuffer append [$commonSeps jget COMMA_SEP]
        $stringBuffer append [[my jget gameInfoData] jget GAME_MODE]
        $stringBuffer append [$commonSeps jget EQUALS]
        $stringBuffer append [[my jget gameMode] toString]
        $stringBuffer append [$commonSeps jget COMMA_SEP]
        $stringBuffer append [[my jget gameInfoData] jget PLAYER_TYPE]
        $stringBuffer append [$commonSeps jget EQUALS]
        $stringBuffer append [[::StringUtil::getInstance] toString1 [my jget playerType]]
        $stringBuffer append [$commonSeps jget COMMA_SEP]
        $stringBuffer append [[my jget gameInfoData] jget HIGHEST_LEVEL]
        $stringBuffer append [$commonSeps jget EQUALS]
        $stringBuffer appendint [my getHighestLevel]
        $stringBuffer append [$commonSeps jget COMMA_SEP]
        $stringBuffer append [[my jget gameInfoData] jget CURRENT_LEVEL]
        $stringBuffer append [$commonSeps jget EQUALS]
        $stringBuffer appendint [my jget currentLevel]
        return [$stringBuffer toString]
    }
}

namespace eval ::GameInfo {
    variable NONEValue {}
    variable NONESet 0
    proc staticGet_NONE {} {
        variable NONEValue
        variable NONESet
        if {!$NONESet} {
            set NONESet 1
            set NONEValue [::GameInfo new [[::GameTypeFactory::getInstance] jget NONE] [::GameMode::staticGet_NONE] [[::PlayerTypesFactory::getInstance] jget PLAYER_TYPE_ONE] [expr {-1}] [expr {-1}]]
        }
        return $NONEValue
    }
    proc staticSet_NONE {value} {
        variable NONEValue
        variable NONESet
        set NONESet 1
        set NONEValue $value
    }
    variable LEVEL_NAMEValue {}
    variable LEVEL_NAMESet 0
    proc staticGet_LEVEL_NAME {} {
        variable LEVEL_NAMEValue
        variable LEVEL_NAMESet
        if {!$LEVEL_NAMESet} {
            set LEVEL_NAMESet 1
            set LEVEL_NAMEValue "LEVEL"
        }
        return $LEVEL_NAMEValue
    }
    proc staticSet_LEVEL_NAME {value} {
        variable LEVEL_NAMEValue
        variable LEVEL_NAMESet
        set LEVEL_NAMESet 1
        set LEVEL_NAMEValue $value
    }
}


