# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.thread

oo::class create ::NullPriorityRunnable {
    superclass ::JObject
}

oo::define ::NullPriorityRunnable {
    method initFields_NullPriorityRunnable {} {
        return
    }

    constructor {} {
        next
        my initFields_NullPriorityRunnable
    }
    

    method getPriority {} {
        return 0
    }
    

    method isDone {} {
        return true
    }
    

    method reset {} {
    }
    

    method run {} {
    }
}

namespace eval ::NullPriorityRunnable {
}


