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

oo::class create ::DemoGameBehavior {
    superclass ::JObject
}

oo::define ::DemoGameBehavior {
    method initFields_DemoGameBehavior {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_DemoGameBehavior
    }
    
    

    method init {} {
    }
    

    method pause {allBinaryGameCanvas} {
    }
    

    method unPause {allBinaryGameCanvas} {
    }
    

    method updateTouch {allBinaryGameCanvas} {
    }
    

    method updateScreenButtonPaintable {allBinaryGameCanvas} {
        $allBinaryGameCanvas setTouchPaintableP [::NullPaintable::getInstance]
    }
    

    method setGameState {allBinaryGameCanvas} {
    }
    

    method removeAllGameKeyInputListeners {allBinaryGameCanvas} {
    }
    

    method updateEndGameProcessor {allBinaryGameCanvas} {
    }
    

    method buildGame {allBinaryGameCanvas} {
    }
    

    method run {allBinaryGameCanvas} {
        set commonStrings [::CommonStrings::getInstance]
        [my jget logUtil] putF [[[::GameTypeFactory::getInstance] jget BOT] toString] [self] [$commonStrings jget RUN]
    }
    

    method setHighScore {abeClientInformation allBinaryGameCanvas name score autoSubmit isLast} {
    }
}

namespace eval ::DemoGameBehavior {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DemoGameBehavior new]
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
        return [::DemoGameBehavior::staticGet_instance]
    }
}


