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
# package org.allbinary.graphics.form.item

oo::class create ::CommandTextItem {
    superclass ::ABTextItem
}

oo::define ::CommandTextItem {
    method initFields_CommandTextItem {} {
        my jset command {}
        
        return
    }
    

    constructor {command layout altText backgroundBasicColor foregroundBasicColor} {
        next [$command getLabel] $layout $altText $backgroundBasicColor $foregroundBasicColor
        my initFields_CommandTextItem
        my jset command $command
    }
    

    method isFocusable {} {
        return true
    }
    

    method getCommand {} {
        return [my jget command]
    }
}

namespace eval ::CommandTextItem {
}


