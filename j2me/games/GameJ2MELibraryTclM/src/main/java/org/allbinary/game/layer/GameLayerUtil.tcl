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

oo::class create ::GameLayerUtil {
    superclass ::JObject
}

oo::define ::GameLayerUtil {
    method initFields_GameLayerUtil {} {
        return
    }
    

    constructor {} {
        next
        my initFields_GameLayerUtil
    }
    
    
}

namespace eval ::GameLayerUtil {
    proc isOnScreen {layer} {
        set displayInfo [::DisplayInfoSingleton::getInstance]
        set viewPosition [$layer getViewPosition]
        return [::GameLayerUtil::isInside [$viewPosition getX] [$viewPosition getY] [$viewPosition getX2] [$viewPosition getY2] 0 0 [$displayInfo getLastWidth] [$displayInfo getLastHeight]]
    }
    proc isInside {rectX1 rectY1 rectX2 rectY2 rect2X1 rect2Y1 rect2X2 rect2Y2} {
        if {[expr {[expr {[expr {[expr {$rectX1 > $rect2X1}] && [expr {$rectX2 < $rect2X2}]}] && [expr {$rectY1 > $rect2Y1}]}] && [expr {$rectY2 < $rect2Y2}]}]} {
            return true
        } else {
            return false
        }
    }
}


