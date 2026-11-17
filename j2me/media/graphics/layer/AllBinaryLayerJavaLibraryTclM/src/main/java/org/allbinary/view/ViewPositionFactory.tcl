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
# package org.allbinary.view

oo::class create ::ViewPositionFactory {
    superclass ::JObject
}

oo::define ::ViewPositionFactory {
    method initFields_ViewPositionFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_ViewPositionFactory
    }
    

    method getInstance {} {
        return [::ViewPosition::getInstanceD]
    }
}

namespace eval ::ViewPositionFactory {
}


