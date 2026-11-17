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
# package org.allbinary.game.ag.layer.hud.basic.score

oo::class create ::ScoreableAddOnlyForHud {
    superclass ::Scoreable
}

oo::define ::ScoreableAddOnlyForHud {
    method initFields_ScoreableAddOnlyForHud {} {
        my jset scoreHudWidget {}
        
        return
    }
    

    constructor {scoreVectorGraphic} {
        next 0
        my initFields_ScoreableAddOnlyForHud
        my jset scoreHudWidget $scoreVectorGraphic
        [my getScoreHudWidget] set 0
    }
    

    method removePoints {points} {
    }
    

    method addPoints {points} {
        next $points
        [my getScoreHudWidget] add $points
    }
    

    method getScoreHudWidget {} {
        return [my jget scoreHudWidget]
    }
}

namespace eval ::ScoreableAddOnlyForHud {
}


