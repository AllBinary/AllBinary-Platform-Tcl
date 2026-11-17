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
# package org.allbinary.game.layer

oo::class create ::PlayerGameInputGameLayer {
    superclass ::AllBinaryGameLayer
}

oo::define ::PlayerGameInputGameLayer {
    method initFields_PlayerGameInputGameLayer {} {
        my jset playerGameInput {}
        
        return
    }
    

    constructor {playerInputId} {
        next [[::StringUtil::getInstance] jget EMPTY_STRING] [::Rectangle new [[::PointFactory::getInstance] jget ZERO_ZERO] 0 0] [::StaticViewPosition new 0 0 0]
        my initFields_PlayerGameInputGameLayer
        my jset playerGameInput [::PlayerGameInput new [my getGameKeyEventList] [::BasicArrayListD new] $playerInputId]
        set canvasStrings [::CanvasStrings::getInstance]
        [my jget logUtil] putF "Danger Danger Danger: Should Not Be Called Except For Testing Input" [self] [$canvasStrings jget PAINT]
    }
    

    method getPlayerGameInput {} {
        return [my jget playerGameInput]
    }
    

    method initInputProcessors {} {
    }
    

    method processInput {myManager} {
    }
    

    method paint {graphics} {
    }
}

namespace eval ::PlayerGameInputGameLayer {
}


