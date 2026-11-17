# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media.audio

oo::class create ::TimeBaseInterface {
    superclass ::JObject
}

oo::define ::TimeBaseInterface {
    method initFields_TimeBaseInterface {} {
        return
    }
    

    method getTimeBase {} {
        error [jexception AbstractMethodError getTimeBase]
    }
    

    method setTimeBase {timeBase} {
        error [jexception AbstractMethodError setTimeBase]
    }
}

namespace eval ::TimeBaseInterface {
}


