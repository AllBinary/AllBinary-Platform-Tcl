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

oo::class create ::MainGameDemoStatePaintable {
    superclass ::Paintable
}

oo::define ::MainGameDemoStatePaintable {
    method initFields_MainGameDemoStatePaintable {} {
        my jset ownershipPaintableInterface {}
        my jset menuPaintableInterface {}
        
        
        return
    }
    

    constructor {ownershipPaintableInterface menuPaintableInterface} {
        next
        my initFields_MainGameDemoStatePaintable
        my jset ownershipPaintableInterface $ownershipPaintableInterface
        my jset menuPaintableInterface $menuPaintableInterface
    }
    

    method paint {graphics} {
        [my jget menuPaintableInterface] paint $graphics
        [my jget ownershipPaintableInterface] paint $graphics
    }
    

    method getOwnershipPaintableInterface {} {
        return [my jget ownershipPaintableInterface]
    }
    

    method getMenuPaintableInterface {} {
        return [my jget menuPaintableInterface]
    }
}

namespace eval ::MainGameDemoStatePaintable {
}


