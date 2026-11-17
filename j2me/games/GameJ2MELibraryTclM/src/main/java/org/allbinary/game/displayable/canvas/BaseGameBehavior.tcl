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
# package org.allbinary.game.displayable.canvas

oo::class create ::BaseGameBehavior {
    superclass ::DemoGameBehavior
}

oo::define ::BaseGameBehavior {
    method initFields_BaseGameBehavior {} {
        return
    }

    constructor {} {
        next
        my initFields_BaseGameBehavior
    }
    
    

    method init {} {
        set gameAdState [[::GameAdStateFactory::getInstance] getCurrentInstance]
        $gameAdState playingAdState
    }
    

    method pause {allBinaryGameCanvas} {
        set features [::Features::getInstance]
        if {[$features isDefault [[::OpenGLFeatureFactory::getInstance] jget OPENGL_AS_GAME_THREAD]]} {
            set currentDisplayableFactory [::CurrentDisplayableFactory::getInstance]
            $currentDisplayableFactory setRunnable [$allBinaryGameCanvas jget gamePauseRunnable]
        }
    }
    

    method unPause {allBinaryGameCanvas} {
        if {[[::Features::getInstance] isDefault [[::OpenGLFeatureFactory::getInstance] jget OPENGL_AS_GAME_THREAD]]} {
            set currentDisplayableFactory [::CurrentDisplayableFactory::getInstance]
            $currentDisplayableFactory setRunnable [$allBinaryGameCanvas jget gameRunnable]
            $currentDisplayableFactory setDisplayable $allBinaryGameCanvas
        }
    }
    

    method updateTouch {allBinaryGameCanvas} {
        $allBinaryGameCanvas updateTouch2
    }
    

    method updateScreenButtonPaintable {allBinaryGameCanvas} {
        $allBinaryGameCanvas updateScreenButtonPaintable2
    }
    

    method setGameState {allBinaryGameCanvas} {
        $allBinaryGameCanvas updateGameState
    }
    

    method removeAllGameKeyInputListeners {allBinaryGameCanvas} {
        $allBinaryGameCanvas removeAllGameKeyInputListeners2
    }
    

    method updateEndGameProcessor {allBinaryGameCanvas} {
        $allBinaryGameCanvas updateEndGameProcessor2
    }
    

    method buildGame {allBinaryGameCanvas} {
        $allBinaryGameCanvas buildGame2
    }
    

    method run {allBinaryGameCanvas} {
        $allBinaryGameCanvas run2
    }
    

    method setHighScore {abeClientInformation allBinaryGameCanvas name score autoSubmit isLast} {
        $allBinaryGameCanvas setHighScore2 $abeClientInformation $name $score $autoSubmit $isLast
    }
}

namespace eval ::BaseGameBehavior {
    variable instanceCValue {}
    variable instanceCSet 0
    proc staticGet_instanceC {} {
        variable instanceCValue
        variable instanceCSet
        if {!$instanceCSet} {
            set instanceCSet 1
            set instanceCValue [::BaseGameBehavior new]
        }
        return $instanceCValue
    }
    proc staticSet_instanceC {value} {
        variable instanceCValue
        variable instanceCSet
        set instanceCSet 1
        set instanceCValue $value
    }
    proc getInstance {} {
        return [::BaseGameBehavior::staticGet_instanceC]
    }
}


