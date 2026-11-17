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
# package org.allbinary.graphics.form

oo::class create ::MultipleScrollSelectionFormRectPaintable {
    superclass ::Paintable
}

oo::define ::MultipleScrollSelectionFormRectPaintable {
    method initFields_MultipleScrollSelectionFormRectPaintable {} {
        my jset multipleScrollSelectionForm {}
        
        return
    }
    

    constructor {multipleScrollSelectionForm} {
        next
        my initFields_MultipleScrollSelectionFormRectPaintable
        my jset multipleScrollSelectionForm $multipleScrollSelectionForm
    }
    

    method paint {graphics} {
        [my jget multipleScrollSelectionForm] fillRect $graphics
    }
}

namespace eval ::MultipleScrollSelectionFormRectPaintable {
}


