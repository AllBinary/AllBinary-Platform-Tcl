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

oo::class create ::AllBinaryGameLayer {
    superclass ::AllBinaryLayer
}

oo::define ::AllBinaryGameLayer {
    method initFields_AllBinaryGameLayer {} {
        my jset commonStrings {}
        my jset basicSetColorUtil {}
        my jset RED {}
        my jset paintable {}
        my jset gameKeyEventList {}
        my jset commonStrings [::CommonStrings::getInstance]
        my jset basicSetColorUtil [::BasicColorSetUtil::getInstance]
        my jset RED [[::BasicColorFactory::getInstance] jget RED]
        my jset paintable [::AllBinaryGameLayer::createPaintable]
        my jset gameKeyEventList [::BasicArrayListD new]
        return
    }
    
    

    constructor {name layerInfo viewPosition} {
        next $name $layerInfo $viewPosition
        my initFields_AllBinaryGameLayer
    }
    

    method set {gl} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method move {} {
    }
    

    method getGameKeyEventList {} {
        return [my jget gameKeyEventList]
    }
    

    method processInput {allBinaryLayerManager} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method processTick {allBinaryLayerManager} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onViewPositionChangeEvent {} {
        my onChangeEvent [my jget viewPositionEvent]
    }
    

    method onChangeEvent {layerManagerEvent} {
        if {[::GameLayerUtil::isOnScreen [self]]} {
            my setVisible true
        } else {
            my setVisible false
        }
    }
    

    method paintFirst {graphics} {
        [my jget paintable] paint $graphics
    }
    

    method paintDebug {graphics} {
        set viewPosition [my getViewPosition]
        set viewX [$viewPosition getX]
        set viewY [$viewPosition getY]
        [my jget basicSetColorUtil] setBasicColorP $graphics [my jget RED]
        $graphics drawRect $viewX $viewY [my getWidth] [my getHeight]
    }
    

    method setWidth {width} {
        next $width
        my setHalfWidth [expr {$width >> 1}]
    }
    

    method setHeight {height} {
        next $height
        my setHalfHeight [expr {$height >> 1}]
    }
}

namespace eval ::AllBinaryGameLayer {
    proc createPaintable {} {
        if {[::SWTUtil::staticGet_isSWT]} {
            return [::SWTBlackPaintable new]
        }
        return [::NullPaintable::getInstance]
    }
}


