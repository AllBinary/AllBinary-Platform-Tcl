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

oo::class create ::InGameMenuBehavior {
    superclass ::BaseMenuBehavior
}

oo::define ::InGameMenuBehavior {
    method initFields_InGameMenuBehavior {} {
        return
    }

    constructor {} {
        next
        my initFields_InGameMenuBehavior
    }
    
    

    method onDisplayChangeEvent {allBinaryGameCanvas displayChangeEvent} {
        $allBinaryGameCanvas updateMenuFromEvent $displayChangeEvent
    }
    

    method initSpecialPaint {allBinaryGameCanvas} {
        $allBinaryGameCanvas setNonBotPaintableP [::GameCanvasNonBotPaintable new $allBinaryGameCanvas]
    }
    

    method initMenu {allBinaryGameCanvas} {
        $allBinaryGameCanvas initMenu2
    }
    

    method updateMenu {allBinaryGameCanvas} {
        $allBinaryGameCanvas initMenu2
    }
    

    method popupMenu {allBinaryGameCanvas} {
        $allBinaryGameCanvas popupMenu2
    }
    

    method closeMenu {allBinaryGameCanvas} {
        $allBinaryGameCanvas closeMenu2
    }
}

namespace eval ::InGameMenuBehavior {
    variable instanceCValue {}
    variable instanceCSet 0
    proc staticGet_instanceC {} {
        variable instanceCValue
        variable instanceCSet
        if {!$instanceCSet} {
            set instanceCSet 1
            set instanceCValue [::InGameMenuBehavior new]
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
        return [::InGameMenuBehavior::staticGet_instanceC]
    }
}


