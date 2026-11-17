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
# package org.allbinary.logic.io

oo::class create ::AbDataOutputStream {
    superclass ::DataOutputStream
}

oo::define ::AbDataOutputStream {
    method initFields_AbDataOutputStream {} {
        return
    }
    

    constructor {out} {
        next $out
        my initFields_AbDataOutputStream
    }
}

namespace eval ::AbDataOutputStream {
}


