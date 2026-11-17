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

oo::class create ::ScoreHudWidget {
    superclass ::NumberStringHud
}

oo::define ::ScoreHudWidget {
    method initFields_ScoreHudWidget {} {
        return
    }
    
    

    constructor {maxscore location direction bufferZone basicColor} {
        next "Pts " $maxscore $location $direction $bufferZone $basicColor
        my initFields_ScoreHudWidget
        my jset updateMaxHeight 14
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset updateMaxWidth [expr {[$font getSize] * 5}]
        next $graphics
    }
}

namespace eval ::ScoreHudWidget {
    proc getInstance {maxscore location direction} {
        return [::ScoreHudWidget new $maxscore $location $direction 2 [[::BasicColorFactory::getInstance] jget GREY]]
    }
}


