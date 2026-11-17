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
# package org.allbinary.game.paint

oo::class create ::GameScrollMenuPaintable {
    superclass ::BasicGameDemoPaintable
}

oo::define ::GameScrollMenuPaintable {
    method initFields_GameScrollMenuPaintable {} {
        return
    }
    

    constructor {mainDemoStatePaintable ownershipPaintable helpPaintableInterface basicColor} {
        next $mainDemoStatePaintable $ownershipPaintable $helpPaintableInterface
        my initFields_GameScrollMenuPaintable
        my setColor $basicColor
        [::ColorChangeEventHandler::getInstance] addListenerInterface [self]
    }
    

    method setState {state} {
        my setCurrentStatePaintable [my getMainDemoStatePaintable]
    }
    

    method onEvent {eventObject} {
    }
    

    method setColor {basicColor} {
        set mainGameDemoStatePaintable [my getMainDemoStatePaintable]
        set formPaintable [$mainGameDemoStatePaintable getMenuPaintableInterface]
        set scrollSelectionForm [$formPaintable getForm]
        [$mainGameDemoStatePaintable getOwnershipPaintableInterface] setBasicColorP $basicColor
        $scrollSelectionForm setButtonBasicColor $basicColor
        set item {}
        set stringComponent {}
        for {set index [jint [expr {[$scrollSelectionForm size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set item [$scrollSelectionForm get $index]
            set stringComponent [$item getLabelStringComponent]
            if {[expr {$stringComponent ne {}}]} {
                $stringComponent setForegroundBasicColor $basicColor
            }
        }
    }
}

namespace eval ::GameScrollMenuPaintable {
}


