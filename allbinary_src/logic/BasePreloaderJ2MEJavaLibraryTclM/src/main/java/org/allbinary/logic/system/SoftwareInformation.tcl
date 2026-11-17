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
# package org.allbinary.logic.system

oo::class create ::SoftwareInformation {
    superclass ::JObject
}

oo::define ::SoftwareInformation {
    method initFields_SoftwareInformation {} {
        my jset name {}
        my jset shortName {}
        my jset version {}
        
        
        
        return
    }
    

    constructor {name version shortName} {
        next
        my initFields_SoftwareInformation
        my jset name $name
        my jset version $version
        my jset shortName [[[[::StringMaker new] append $shortName] append [::KotlinUtil::getShortName]] toString]
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method getVersion {} {
        return [my jget version]
    }
    

    method toShortString {} {
        return [my jget shortName]
    }
    

    method toString {} {
        set NAME "Name: "
        set VERSION "Version: "
        set stringBuffer [::StringMaker new]
        $stringBuffer append $NAME
        $stringBuffer append [my getName]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append $VERSION
        $stringBuffer append [my getVersion]
        return [$stringBuffer toString]
    }
}

namespace eval ::SoftwareInformation {
}


