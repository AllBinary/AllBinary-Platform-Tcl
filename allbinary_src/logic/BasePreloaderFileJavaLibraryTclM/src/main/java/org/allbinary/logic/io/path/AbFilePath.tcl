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
# package org.allbinary.logic.io.path

oo::class create ::AbFilePath {
    superclass ::AbPath
}

oo::define ::AbFilePath {
    method initFields_AbFilePath {} {
        return
    }
    

    constructor {aPath} {
        next [[::StringUtil::getInstance] jget EMPTY_STRING] [[::StringUtil::getInstance] jget EMPTY_STRING]
        my initFields_AbFilePath
        set pathData [::AbPathData::getInstance]
        set abPathUtil [::PathUtil::getInstance]
        my jset schema [my getSchema $aPath]
        my setName [$pathData getNameFromPath $aPath]
        my setPath [$abPathUtil adjust [my getPathFromPath [[$abPathUtil removeNameFromPath $aPath] toString]]]
    }
}

namespace eval ::AbFilePath {
}


