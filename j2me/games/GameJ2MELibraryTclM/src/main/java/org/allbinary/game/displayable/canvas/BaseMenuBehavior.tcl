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

oo::class create ::BaseMenuBehavior {
    superclass ::JObject
}

oo::define ::BaseMenuBehavior {
    method initFields_BaseMenuBehavior {} {
        return
    }

    constructor {} {
        next
        my initFields_BaseMenuBehavior
    }
    
    

    method onDisplayChangeEvent {allBinaryGameCanvas displayChangeEvent} {
    }
    

    method initSpecialPaint {allBinaryGameCanvas} {
        $allBinaryGameCanvas setNonBotPaintableP [::NullPaintable::getInstance]
    }
    

    method initMenu {allBinaryGameCanvas} {
    }
    

    method updateMenu {allBinaryGameCanvas} {
    }
    

    method popupMenu {allBinaryGameCanvas} {
    }
    

    method closeMenu {allBinaryGameCanvas} {
    }
}

namespace eval ::BaseMenuBehavior {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BaseMenuBehavior new]
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
        return [::BaseMenuBehavior::staticGet_instance]
    }
}


