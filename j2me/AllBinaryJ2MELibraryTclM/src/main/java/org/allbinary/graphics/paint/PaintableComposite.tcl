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
# package org.allbinary.graphics.paint

oo::class create ::PaintableComposite {
    superclass ::Paintable
}

oo::define ::PaintableComposite {
    method initFields_PaintableComposite {} {
        my jset paintableArray {}
        
        return
    }
    

    constructor {paintableArray} {
        next
        my initFields_PaintableComposite
        my jset paintableArray $paintableArray
    }
    

    method paint {graphics} {
        for {set index [jint [expr {[[my jget paintableArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [[my jget paintableArray] get $index] paint $graphics
        }
    }
    

    method paintThreed {graphics} {
        for {set index [jint [expr {[[my jget paintableArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [[my jget paintableArray] get $index] paintThreed $graphics
        }
    }
}

namespace eval ::PaintableComposite {
}


