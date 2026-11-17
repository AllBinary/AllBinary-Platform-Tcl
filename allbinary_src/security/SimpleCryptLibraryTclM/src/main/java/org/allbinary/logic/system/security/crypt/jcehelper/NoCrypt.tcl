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
# package org.allbinary.logic.system.security.crypt.jcehelper

oo::class create ::NoCrypt {
    superclass ::JObject
}

oo::define ::NoCrypt {
    method initFields_NoCrypt {} {
        return
    }

    constructor {} {
        next
        my initFields_NoCrypt
    }
    

    method encrypt {array} {
        return $array
    }
    

    method decrypt {array} {
        return $array
    }
}

namespace eval ::NoCrypt {
}


