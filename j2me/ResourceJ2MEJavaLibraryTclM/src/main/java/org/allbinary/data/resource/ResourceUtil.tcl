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
# package org.allbinary.data.resource

#J2ME
oo::class create ::ResourceUtil {
    superclass ::JObject
}

oo::define ::ResourceUtil {
    method initFields_ResourceUtil {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_ResourceUtil
    }
    

    method setLoadingPaths {path ext} {
        [my jget logUtil] putF [[::CommonStrings::getInstance] jget NOT_IMPLEMENTED] [self] "setLoadingPaths"
    }
    

    method getResourceAsStream {resource} {
        set inputStream [[jclassname $resource] getResourceAsStream $resource]
        if {[expr {$inputStream eq {}}]} {
            set inputStream [my getResourceAsStreamAtStart $resource 2]
            if {[expr {$inputStream eq {}}]} {
                set inputStream [my getResourceAsStreamAtStart $resource 1]
                if {[expr {$inputStream eq {}}]} {
                    set stringMaker [::StringMaker new]
                    set index [jlastindexof $resource [scan "/" %c]]
                    set resourcePath [jsubstring $resource [jint [expr {$index + 1}]]]
                    set inputStream [[jclassname $resource] getResourceAsStream $resourcePath]
                    if {[expr {$inputStream eq {}}]} {
                        set resourcePath [jsubstring $resource $index]
                        set inputStream [[jclassname $resource] getResourceAsStream $resourcePath]
                        if {[expr {$inputStream eq {}}]} {
                            set RES "res"
                            set resourcePath [[[$stringMaker append $RES] append [jsubstring $resource $index]] toString]
                            set inputStream [[jclassname $resource] getResourceAsStream $resourcePath]
                            if {[expr {$inputStream eq {}}]} {
                                $stringMaker delete 0 [$stringMaker length]
                                set resourcePath [[[[$stringMaker append "/"] append $RES] append [jsubstring $resource $index]] toString]
                                set inputStream [[jclassname $resource] getResourceAsStream $resourcePath]
                                set COLON [[::CommonSeps::getInstance] jget COLON]
                                if {[expr {$inputStream eq {}}]} {
                                    $stringMaker delete 0 [$stringMaker length]
                                    set resourcePath [[[[$stringMaker append $RES] append $COLON] append [jsubstring $resource $index]] toString]
                                    set inputStream [[jclassname $resource] getResourceAsStream $resourcePath]
                                    if {[expr {$inputStream eq {}}]} {
                                        $stringMaker delete 0 [$stringMaker length]
                                        set resourcePath [[[[$stringMaker append $RES] append $COLON] append [jsubstring $resource [jint [expr {$index + 1}]]]] toString]
                                        set inputStream [[jclassname $resource] getResourceAsStream $resourcePath]
                                        if {[expr {$inputStream eq {}}]} {
                                            set RESOURCE_STRING "resource"
                                            $stringMaker delete 0 [$stringMaker length]
                                            set resourcePath [[[[$stringMaker append $RESOURCE_STRING] append $COLON] append [jsubstring $resource $index]] toString]
                                            set inputStream [[jclassname $resource] getResourceAsStream $resourcePath]
                                            if {[expr {$inputStream eq {}}]} {
                                                $stringMaker delete 0 [$stringMaker length]
                                                set resourcePath [[[[$stringMaker append $RESOURCE_STRING] append $COLON] append [jsubstring $resource [jint [expr {$index + 1}]]]] toString]
                                                set inputStream [[jclassname $resource] getResourceAsStream $resourcePath]
                                                if {[expr {$inputStream eq {}}]} {
                                                    $stringMaker delete 0 [$stringMaker length]
                                                    error [jexception Exception [[[$stringMaker append "Unable to obtain: "] append $resource] toString]]
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return $inputStream
    }
    

    method getResourceAsStreamAtStart {resource startIndex} {
        set stringMaker [::StringMaker new]
        set index [string first [[::CommonSeps::getInstance] jget COLON] $resource]
        set resourcePath [jsubstring $resource [jint [expr {$index + $startIndex}]]]
        set inputStream [[jclassname $resource] getResourceAsStream $resourcePath]
        if {[expr {$inputStream ne {}}]} {
            return $inputStream
        }
        return $inputStream
    }
    

    method addResource {resource value} {
    }
}

namespace eval ::ResourceUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ResourceUtil new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::ResourceUtil::staticGet_instance]
    }
}


