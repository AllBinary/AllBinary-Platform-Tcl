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

oo::class create ::BasicGameDemoPaintable {
    superclass ::StatePaintable
}

oo::define ::BasicGameDemoPaintable {
    method initFields_BasicGameDemoPaintable {} {
        my jset mainDemoStatePaintable {}
        my jset ownershipPaintable {}
        my jset helpPaintableInterface {}
        my jset currentStatePaintable {}
        
        
        
        my jset currentStatePaintable [::NullPaintable::getInstance]
        return
    }
    

    constructor {mainDemoStatePaintable ownershipPaintable helpPaintableInterface} {
        next
        my initFields_BasicGameDemoPaintable
        my jset mainDemoStatePaintable $mainDemoStatePaintable
        my setCurrentStatePaintable [::NullPaintable::getInstance]
        my jset ownershipPaintable $ownershipPaintable
        my jset helpPaintableInterface $helpPaintableInterface
    }
    

    method setState {state} {
        if {[expr {$state == 0}]} {
            my setCurrentStatePaintable [my getMainDemoStatePaintable]
        } elseif {[expr {$state == 1}]} {
            my setCurrentStatePaintable [my jget helpPaintableInterface]
        } else {
            my setCurrentStatePaintable [my jget ownershipPaintable]
        }
    }
    

    method paint {graphics} {
        [my getCurrentStatePaintable] paint $graphics
    }
    

    method getHelpPaintableInterface {} {
        return [my jget helpPaintableInterface]
    }
    

    method setCurrentStatePaintable {currentStatePaintable} {
        my jset currentStatePaintable $currentStatePaintable
    }
    

    method getCurrentStatePaintable {} {
        return [my jget currentStatePaintable]
    }
    

    method getMainDemoStatePaintable {} {
        return [my jget mainDemoStatePaintable]
    }
}

namespace eval ::BasicGameDemoPaintable {
}


