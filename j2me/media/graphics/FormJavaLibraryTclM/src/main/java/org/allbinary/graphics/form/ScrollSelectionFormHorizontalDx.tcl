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

oo::class create ::ScrollSelectionFormHorizontalDx {
    superclass ::ItemIndexDx
}

oo::define ::ScrollSelectionFormHorizontalDx {
    method initFields_ScrollSelectionFormHorizontalDx {} {
        my jset scrollSelectionForm {}
        
        return
    }
    

    constructor {scrollSelectionForm} {
        next
        my initFields_ScrollSelectionFormHorizontalDx
        my jset scrollSelectionForm $scrollSelectionForm
    }
    

    method getDx {index item dx dy} {
        return [[my jget scrollSelectionForm] getSelectedIndexForPointHorizontalDx $index $item $dx $dy]
    }
}

namespace eval ::ScrollSelectionFormHorizontalDx {
}


