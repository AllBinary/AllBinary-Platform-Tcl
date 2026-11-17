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
# package org.allbinary.graphics.canvas.transition.progress

oo::class create ::ProgressPaintable {
    superclass ::Paintable
}

oo::define ::ProgressPaintable {
    method initFields_ProgressPaintable {} {
        my jset progressCanvas {}
        
        return
    }
    

    constructor {progressCanvas} {
        next
        my initFields_ProgressPaintable
        my jset progressCanvas $progressCanvas
    }
    

    method paint {graphics} {
        [my jget progressCanvas] paint2 $graphics
    }
}

namespace eval ::ProgressPaintable {
}


