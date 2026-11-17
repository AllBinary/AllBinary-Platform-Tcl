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
# package org.allbinary.layer

oo::class create ::LayerInterfaceVisitor {
    superclass ::JObject
}

oo::define ::LayerInterfaceVisitor {
    method initFields_LayerInterfaceVisitor {} {
        return
    }
    

    method visit {layerInterface} {
        error [jexception AbstractMethodError visit]
    }
}

namespace eval ::LayerInterfaceVisitor {
}


