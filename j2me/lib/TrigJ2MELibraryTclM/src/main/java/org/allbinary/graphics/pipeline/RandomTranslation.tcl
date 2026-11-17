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
# package org.allbinary.graphics.pipeline

oo::class create ::RandomTranslation {
    superclass ::JObject
}

oo::define ::RandomTranslation {
    method initFields_RandomTranslation {} {
        return
    }

    constructor {} {
        next
        my initFields_RandomTranslation
    }
    
}

namespace eval ::RandomTranslation {
    proc getInstance {vector howMuch} {
        set myRandomFactory [::MyRandomFactory::getInstance]
        set x [expr {-[$myRandomFactory getNextInt $howMuch]}]
        set y [$myRandomFactory getNextInt $howMuch]
        set graphicsPipe [::BasicGraphicsPipeline new $vector]
        $graphicsPipe createMatrix
        $graphicsPipe translate $x $y
        return [$graphicsPipe getMatrix]
    }
}


