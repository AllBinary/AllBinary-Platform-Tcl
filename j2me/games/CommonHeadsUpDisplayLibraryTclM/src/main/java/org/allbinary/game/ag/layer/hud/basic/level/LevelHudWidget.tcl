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
# package org.allbinary.game.ag.layer.hud.basic.level

oo::class create ::LevelHudWidget {
    superclass ::BasicHud
}

oo::define ::LevelHudWidget {
    method initFields_LevelHudWidget {} {
        my jset level 0
        my jset maxlevel 0
        my jset levelString {}
        my jset levelNumberCharArray {}
        my jset levelNumberTotalDigits 0
        my jset offset 0
        my jset primitiveLongUtil {}
        
        
        
        my jset levelNumberCharArray [[::NullUtil::getInstance] jget NULL_CHAR_ARRAY]
        my jset levelNumberTotalDigits 0
        my jset offset 0
        
        return
    }
    
    

    constructor {maxlevel location direction} {
        next $location $direction 2 [[::BasicColorFactory::getInstance] jget GREY]
        my initFields_LevelHudWidget
        my jset primitiveLongUtil [::PrimitiveLongUtil::createPowerOfTen 1000]
        set LEVEL "Lv "
        my jset levelString [jtochararray $LEVEL]
        my jset maxlevel $maxlevel
        my jset level $maxlevel
        my update
        my jset updateMaxHeight 14
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset updateMaxWidth [expr {[$font getSize] * 4}]
        my jset offset [expr {[$font charsWidth [my jget levelString] 0 [[my jget levelString] length]] + [$font getSize]}]
        next $graphics
    }
    

    method update {} {
        my jset levelNumberCharArray [[my jget primitiveLongUtil] getCharArray [my jget level]]
        my jset levelNumberTotalDigits [[my jget primitiveLongUtil] getCurrentTotalDigits]
    }
    

    method setLevel {level} {
        my jset level $level
        my update
    }
    

    method nextLevel {} {
        my jpostinc level 1
        my update
    }
    

    method previousLevel {} {
        my jpostinc level -1
        if {[expr {[my jget level] < 0}]} {
            my jset level 0
        }
        my update
    }
    

    method isComplete {} {
        if {[expr {[my jget level] <= [my jget maxlevel]}]} {
            return false
        } else {
            return true
        }
    }
    

    method paint {graphics} {
        next $graphics [my jget levelString] 0 [[my jget levelString] length] [my jget levelNumberCharArray] 0 [my jget levelNumberTotalDigits] [my jget offset]
    }
    

    method paintThreed {graphics} {
    }
}

namespace eval ::LevelHudWidget {
    proc createHud {maxlevel location direction} {
        return [::LevelHudWidget new $maxlevel $location $direction]
    }
}


