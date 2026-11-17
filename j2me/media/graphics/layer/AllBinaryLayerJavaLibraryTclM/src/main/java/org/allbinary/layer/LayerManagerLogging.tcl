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
# package org.allbinary.layer

oo::class create ::LayerManagerLogging {
    superclass ::LayerManagerLoggingBase
}

oo::define ::LayerManagerLogging {
    method initFields_LayerManagerLogging {} {
        my jset logUtil {}
        my jset stringBuilder {}
        my jset APPEND {}
        my jset APPEND_ {}
        my jset _AT_ {}
        my jset ATTEMPT_REMOVE_ {}
        my jset REMOVE_ {}
        my jset REMOVE {}
        my jset DID_NOT_REMOVE {}
        my jset CLEAR {}
        my jset logUtil [::LogUtil::getInstance]
        my jset stringBuilder [::StringMaker new]
        my jset APPEND "append"
        my jset APPEND_ " append: "
        my jset _AT_ " at: "
        my jset ATTEMPT_REMOVE_ " Remove Attempt: "
        my jset REMOVE_ " Remove: "
        my jset REMOVE "remove"
        my jset DID_NOT_REMOVE " Did not remove: "
        my jset CLEAR " Clear List"
        return
    }

    constructor {} {
        next
        my initFields_LayerManagerLogging
    }
    
    

    method append {layerInterface} {
        [my jget stringBuilder] delete 0 [[my jget stringBuilder] length]
        [my jget logUtil] putF [[[[[my jget stringBuilder] appendint [jint [[::TsUtil::getInstance] hashCode1 [self]]]] append [my jget APPEND_]] append [$layerInterface getName]] toString] [self] [my jget APPEND]
    }
    

    method appendAt {layerInterface index} {
        [my jget stringBuilder] delete 0 [[my jget stringBuilder] length]
        [my jget logUtil] putF [[[[[[[my jget stringBuilder] appendint [jint [[::TsUtil::getInstance] hashCode1 [self]]]] append [my jget APPEND_]] append [$layerInterface getName]] append [my jget _AT_]] appendint $index] toString] [self] [my jget APPEND]
    }
    

    method remove {layerInterface} {
        if {[expr {$layerInterface eq {}}]} {
            [my jget stringBuilder] delete 0 [[my jget stringBuilder] length]
            [my jget logUtil] putF [[[[[my jget stringBuilder] appendint [jint [[::TsUtil::getInstance] hashCode1 [self]]]] append [my jget ATTEMPT_REMOVE_]] append [[::StringUtil::getInstance] toString1 $layerInterface]] toString] [self] [my jget REMOVE]
        } else {
            [my jget stringBuilder] delete 0 [[my jget stringBuilder] length]
            [my jget logUtil] putF [[[[[my jget stringBuilder] appendint [jint [[::TsUtil::getInstance] hashCode1 [self]]]] append [my jget ATTEMPT_REMOVE_]] append [$layerInterface getName]] toString] [self] [my jget REMOVE]
        }
    }
    

    method removeResult {layerManager layerInterface result} {
        if {[expr {$layerInterface eq {}}]} {
            [my jget stringBuilder] delete 0 [[my jget stringBuilder] length]
            [my jget logUtil] putF [[[[[my jget stringBuilder] appendint [jint [[::TsUtil::getInstance] hashCode1 [self]]]] append [my jget REMOVE_]] append [[::StringUtil::getInstance] toString1 $layerInterface]] toString] [self] [my jget REMOVE]
        } elseif {$result} {
            if {[::LayerManagerLogging::staticGet_removeFailed]} {
                [my jget stringBuilder] delete 0 [[my jget stringBuilder] length]
                [my jget logUtil] putF [[[[[my jget stringBuilder] appendint [jint [[::TsUtil::getInstance] hashCode1 [self]]]] append [my jget REMOVE_]] append [$layerInterface getName]] toString] [self] [my jget REMOVE]
            }
        } else {
            [my jget stringBuilder] delete 0 [[my jget stringBuilder] length]
            [my jget logUtil] putF [[[[[my jget stringBuilder] appendint [jint [[::TsUtil::getInstance] hashCode1 [self]]]] append [my jget DID_NOT_REMOVE]] append [$layerInterface getName]] toString] [self] [my jget REMOVE]
            ::LayerManagerLogging::staticSet_removeFailed true
        }
    }
    

    method log {layerManager} {
        [my jget stringBuilder] delete 0 [[my jget stringBuilder] length]
        set size [$layerManager getSize]
        set commonSeps [::CommonSeps::getInstance]
        [[my jget stringBuilder] append [::Integer::toHexString [[::TsUtil::getInstance] hashCode1 $layerManager]]] append [$commonSeps jget COLON_SEP]
        [[my jget stringBuilder] appendint $size] append [$commonSeps jget COLON_SEP]
        set allBinaryLayer {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set allBinaryLayer ([$layerManager getLayerAt $index])
            [[my jget stringBuilder] append [$allBinaryLayer getName]] append [$commonSeps jget COMMA]
        }
        [my jget logUtil] putF [[my jget stringBuilder] toString] [self] [my jget REMOVE]
    }
    

    method clear {} {
        [my jget stringBuilder] delete 0 [[my jget stringBuilder] length]
        [my jget logUtil] putF [[[[my jget stringBuilder] appendint [jint [[::TsUtil::getInstance] hashCode1 [self]]]] append [my jget CLEAR]] toString] [self] [my jget CLEAR]
    }
}

namespace eval ::LayerManagerLogging {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LayerManagerLogging new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    variable removeFailedValue {}
    variable removeFailedSet 0
    proc staticGet_removeFailed {} {
        variable removeFailedValue
        variable removeFailedSet
        if {!$removeFailedSet} {
            set removeFailedSet 1
            set removeFailedValue false
        }
        return $removeFailedValue
    }
    proc staticSet_removeFailed {value} {
        variable removeFailedValue
        variable removeFailedSet
        set removeFailedSet 1
        set removeFailedValue $value
    }
    proc getInstance {} {
        return [::LayerManagerLogging::staticGet_instance]
    }
}


