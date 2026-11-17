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

oo::class create ::FormPaintable {
    superclass ::Paintable
}

oo::define ::FormPaintable {
    method initFields_FormPaintable {} {
        my jset form {}
        
        return
    }
    

    constructor {form} {
        next
        my initFields_FormPaintable
        my jset form $form
    }
    

    method paint {graphics} {
        [my jget form] paint $graphics
    }
    

    method getForm {} {
        return [my jget form]
    }
}

namespace eval ::FormPaintable {
}


