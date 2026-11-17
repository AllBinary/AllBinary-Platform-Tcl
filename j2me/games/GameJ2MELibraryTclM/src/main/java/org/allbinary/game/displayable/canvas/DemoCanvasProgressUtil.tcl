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
# package org.allbinary.game.displayable.canvas

oo::class create ::DemoCanvasProgressUtil {
    superclass ::JObject
}

oo::define ::DemoCanvasProgressUtil {
    method initFields_DemoCanvasProgressUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_DemoCanvasProgressUtil
    }
    
    
}

namespace eval ::DemoCanvasProgressUtil {
    proc showProgress {demoCanvas} {
        ::DemoCanvasProgressUtil::showProgressOptionallyInTheBackground $demoCanvas false
    }
    proc showProgressOptionallyInTheBackground {demoCanvas background} {
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        $progressCanvas startBackground $background
        set paintableArray [jarray 2 {}]
        $paintableArray set 0 $progressCanvas
        $paintableArray set 1 [$demoCanvas getDefaultPaintableInterface]
        $demoCanvas setDefaultPaintableInterface [::PaintableComposite new $paintableArray]
        $demoCanvas setPaintableInterface [$demoCanvas getDefaultPaintableInterface]
    }
}


