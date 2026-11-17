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

oo::class create ::LockableFormPaintableFactory {
    superclass ::ItemPaintableFactory
}

oo::define ::LockableFormPaintableFactory {
    method initFields_LockableFormPaintableFactory {} {
        my jset lockedIndex 0
        
        return
    }
    

    constructor {lockedIndex} {
        next
        my initFields_LockableFormPaintableFactory
        my jset lockedIndex $lockedIndex
    }
    

    method getInstanceItemPaintable {paintableForm} {
        return [::LockablePaintable new [my jget lockedIndex]]
    }
}

namespace eval ::LockableFormPaintableFactory {
}


