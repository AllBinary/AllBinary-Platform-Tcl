# Generated Code Do Not Modify
# package org.allbinary.game.midlet

oo::class create ::GameMidletStateFactory {
    superclass ::JObject
}

oo::define ::GameMidletStateFactory {
    method initFields_GameMidletStateFactory {} {
        my jset logUtil {}
        my jset currentGameState {}
        my jset logUtil [::LogUtil::getInstance]
        my jset currentGameState [[::GameStateFactory::getInstance] jget NO_GAME_STATE]
        return
    }
    

    constructor {} {
        next
        my initFields_GameMidletStateFactory
    }
    
    

    method getCurrentGameState {} {
        return [my jget currentGameState]
    }
    

    method setCurrentGameState {currentGameState} {
        [my jget logUtil] putF [[[[[::StringMaker new] append [[::CommonLabels::getInstance] jget CURRENT]] append " GameState: "] append [[::StringUtil::getInstance] toString1 $currentGameState]] toString] [self] "setCurrentGameState"
        my jset currentGameState $currentGameState
    }
}

namespace eval ::GameMidletStateFactory {
    variable INSTANCEValue {}
    variable INSTANCESet 0
    proc staticGet_INSTANCE {} {
        variable INSTANCEValue
        variable INSTANCESet
        if {!$INSTANCESet} {
            set INSTANCESet 1
            set INSTANCEValue [::GameMidletStateFactory new]
        }
        return $INSTANCEValue
    }
    proc staticSet_INSTANCE {value} {
        variable INSTANCEValue
        variable INSTANCESet
        set INSTANCESet 1
        set INSTANCEValue $value
    }
    proc getInstance {} {
        return [::GameMidletStateFactory::staticGet_INSTANCE]
    }
}


