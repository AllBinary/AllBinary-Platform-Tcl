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
# package org.allbinary.thread

oo::class create ::PriorityRunnable {
    superclass ::JObject
}

oo::define ::PriorityRunnable {
    method initFields_PriorityRunnable {} {
        return
    }
    

    method getPriority {} {
        error [jexception AbstractMethodError getPriority]
    }
    

    method isDone {} {
        error [jexception AbstractMethodError isDone]
    }
    

    method reset {} {
        error [jexception AbstractMethodError reset]
    }
}

namespace eval ::PriorityRunnable {
}


