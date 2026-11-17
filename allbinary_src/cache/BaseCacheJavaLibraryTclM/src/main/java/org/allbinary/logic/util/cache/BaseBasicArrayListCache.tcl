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
# package org.allbinary.logic.util.cache

oo::class create ::BaseBasicArrayListCache {
    superclass ::JObject
}

oo::define ::BaseBasicArrayListCache {
    method initFields_BaseBasicArrayListCache {} {
        my jset list {}
        my jset list [::BasicArrayListD new]
        return
    }

    constructor {} {
        next
        my initFields_BaseBasicArrayListCache
    }
    

    method log {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "S: "
        $stringBuffer appendint [[my jget list] size]
        return [$stringBuffer toString]
    }
}

namespace eval ::BaseBasicArrayListCache {
}


