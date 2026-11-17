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
# package org.allbinary.canvas

oo::class create ::RunnableCanvasRefreshHelper {
    superclass ::Processor
}

oo::define ::RunnableCanvasRefreshHelper {
    method initFields_RunnableCanvasRefreshHelper {} {
        my jset runnableCanvas {}
        
        return
    }
    

    constructor {runnableCanvas} {
        next
        my initFields_RunnableCanvasRefreshHelper
        my jset runnableCanvas $runnableCanvas
    }
    

    method process {} {
        [my jget runnableCanvas] repaint
    }
}

namespace eval ::RunnableCanvasRefreshHelper {
}


