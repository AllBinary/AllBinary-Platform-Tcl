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

oo::class create ::SWTBlackPaintable {
    superclass ::Paintable
}

oo::define ::SWTBlackPaintable {
    method initFields_SWTBlackPaintable {} {
        my jset basicSetColorUtil {}
        my jset BLACK {}
        my jset basicSetColorUtil [::BasicColorSetUtil::getInstance]
        my jset BLACK [[::BasicColorFactory::getInstance] jget BLACK]
        return
    }

    constructor {} {
        next
        my initFields_SWTBlackPaintable
    }
    

    method paint {graphics} {
        [my jget basicSetColorUtil] setBasicColorP $graphics [my jget BLACK]
    }
}

namespace eval ::SWTBlackPaintable {
}


