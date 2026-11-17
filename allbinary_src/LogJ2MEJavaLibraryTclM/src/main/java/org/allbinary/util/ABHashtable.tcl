# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.util

oo::class create ::ABHashtable {
    superclass ::Hashtable
}

oo::define ::ABHashtable {
    method initFields_ABHashtable {} {
        return
    }
    

    constructor {initialCapacity} {
        next $initialCapacity
        my initFields_ABHashtable
    }
    

    # Java constructor: TclOO classes have one constructor
    method constructor0 {} {
        next
        my initFields_ABHashtable
    }
}

namespace eval ::ABHashtable {
}


