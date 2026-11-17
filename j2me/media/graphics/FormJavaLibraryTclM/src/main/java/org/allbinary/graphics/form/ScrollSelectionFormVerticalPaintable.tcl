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

oo::class create ::ScrollSelectionFormVerticalPaintable {
    superclass ::ItemIndexPaintable
}

oo::define ::ScrollSelectionFormVerticalPaintable {
    method initFields_ScrollSelectionFormVerticalPaintable {} {
        my jset scrollSelectionForm {}
        
        return
    }
    

    constructor {scrollSelectionForm} {
        next
        my initFields_ScrollSelectionFormVerticalPaintable
        my jset scrollSelectionForm $scrollSelectionForm
    }
    

    method paint {graphics index item dx dy} {
        return [[my jget scrollSelectionForm] paintItemVertical $graphics $index $item $dx $dy]
    }
}

namespace eval ::ScrollSelectionFormVerticalPaintable {
}


