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
# package org.allbinary.thread

oo::class create ::RunnableInterface {
    superclass ::JObject
}

oo::define ::RunnableInterface {
    method initFields_RunnableInterface {} {
        return
    }
    

    method isRunning {} {
        error [jexception AbstractMethodError isRunning]
    }
    

    method setRunning {isRunning} {
        error [jexception AbstractMethodError setRunning]
    }
    

    method setThread {thread} {
        error [jexception AbstractMethodError setThread]
    }
}

namespace eval ::RunnableInterface {
}


