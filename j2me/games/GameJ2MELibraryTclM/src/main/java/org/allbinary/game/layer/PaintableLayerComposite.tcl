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

oo::class create ::PaintableLayerComposite {
    superclass ::Paintable
}

oo::define ::PaintableLayerComposite {
    method initFields_PaintableLayerComposite {} {
        my jset paintableArray {}
        
        return
    }
    

    constructor {paintableArray} {
        next
        my initFields_PaintableLayerComposite
        my jset paintableArray $paintableArray
    }
    

    method paint {graphics} {
        for {set index [[my jget paintableArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget paintableArray] get $index] paint $graphics
        }
    }
    

    method paintThreed {graphics} {
        set paintableInterface {}
        for {set index [[my jget paintableArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set paintableInterface [[my jget paintableArray] get $index]
            $paintableInterface paintThreed $graphics
        }
    }
}

namespace eval ::PaintableLayerComposite {
}


