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
# package org.allbinary.graphics.displayable

oo::class create ::ScalableListener {
    superclass ::JObject
}

oo::define ::ScalableListener {
    method initFields_ScalableListener {} {
        return
    }
    

    method getRatio {ratio} {
        error [jexception AbstractMethodError getRatio]
    }
    

    method getLeft {xOffset} {
        error [jexception AbstractMethodError getLeft]
    }
    

    method getTop {yOffset} {
        error [jexception AbstractMethodError getTop]
    }
    

    method scale {ratio} {
        error [jexception AbstractMethodError scale]
    }
}

namespace eval ::ScalableListener {
}


