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
# package org.allbinary.game.layer.identification

oo::class create ::GroupLayerManagerListener {
    superclass ::LayerManagerEventListener
}

oo::define ::GroupLayerManagerListener {
    method initFields_GroupLayerManagerListener {} {
        my jset logUtil {}
        my jset list {}
        my jset logUtil [::LogUtil::getInstance]
        my jset list [::BasicArrayListD new]
        return
    }
    
    

    constructor {} {
        next
        my initFields_GroupLayerManagerListener
        [::LayerManagerEventHandler::getInstance] addListener [self]
    }
    

    method clear {} {
        set groupList {}
        set size [[my jget list] size]
        for {set index [jint [expr {$size - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set groupList [[[my jget list] jget objectArray] get $index]
            $groupList clear
        }
    }
    

    method getGroupSizeFromInterface {groupInterfaceCompositeInterface} {
        set groupInterfaceArray [$groupInterfaceCompositeInterface getGroupInterface]
        return [my getGroupSize [$groupInterfaceArray get 0]]
    }
    

    method getGroupSize {groupInterface} {
        set id [jint [$groupInterface getGroupId]]
        return [my getGroupSizeById $id]
    }
    

    method getList {groupInterface} {
        set id [jint [$groupInterface getGroupId]]
        return [my getListById $id]
    }
    

    method getListById {groupId} {
        set groupList [[[my jget list] jget objectArray] get $groupId]
        return $groupList
    }
    

    method getGroupSizeById {groupId} {
        set groupList [[[my jget list] jget objectArray] get $groupId]
        set size [$groupList size]
        return $size
    }
    

    method areAllOtherGroupsEmpty {groupInterface} {
        set id [jint [$groupInterface getGroupId]]
        set size [[my jget list] size]
        for {set index [jint [expr {$size - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            if {[expr {$id != $index}]} {
                set groupSize [my getGroupSizeById $index]
                if {[expr {$groupSize != 0}]} {
                    [my jget logUtil] putF [[[[::StringMaker new] append "Group Size: "] appendint $groupSize] toString] [self] "areAllOtherGroupsEmpty"
                    return false
                }
            }
        }
        return true
    }
    

    method isIdInList {id excludeGroupList} {
        set size [$excludeGroupList size]
        set groupInterfaceArray {}
        set groupInterface {}
        set groupId 0
        for {set index [jint [expr {$size - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set groupInterfaceArray [[$excludeGroupList jget objectArray] get $index]
            set size2 [$groupInterfaceArray length]
            for {set index2 0} {[expr {$index2 < $size2}]} {jpostincr index2 1} {
                set groupInterface [$groupInterfaceArray get $index2]
                set groupId [jint [$groupInterface getGroupId]]
                if {[expr {$groupId == $id}]} {
                    return true
                }
            }
        }
        return false
    }
    

    method areAllOtherGroupsLessThan {excludeGroupList maxSize} {
        set size [[my jget list] size]
        for {set index [jint [expr {$size - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            if {[expr {![my isIdInList $index $excludeGroupList]}]} {
                set groupSize [my getGroupSizeById $index]
                if {[expr {$groupSize >= $maxSize}]} {
                    return false
                }
            }
        }
        return true
    }
    

    method init {total} {
        while {[expr {[[my jget list] size] <= [jint [expr {$total + 1}]]}]} {
            [my jget list] add [::BasicArrayListD new]
        }
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onCreateLayerManagerEvent {layerManagerEvent} {
        set layerInterface [$layerManagerEvent getLayerInterface]
        set groupInterfaceArray [$layerInterface getGroupInterface]
        set size [$groupInterfaceArray length]
        set id 0
        set groupList {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set id [jint [[$groupInterfaceArray get $index] getGroupId]]
            set groupList [[[my jget list] jget objectArray] get $id]
            if {[expr {$groupList eq {}}]} {
                [my jget logUtil] putF [[[[::StringMaker new] append "id: "] appendint $id] toString] [self] "onCreateLayerManagerEvent"
            }
            if {[expr {![$groupList contains $layerInterface]}]} {
                $groupList add $layerInterface
            } else {
            }
        }
    }
    

    method onDeleteLayerManagerEvent {layerManagerEvent} {
        set layerInterface [$layerManagerEvent getLayerInterface]
        set groupInterfaceArray [$layerInterface getGroupInterface]
        set size [$groupInterfaceArray length]
        set id 0
        set groupList {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set id [jint [[$groupInterfaceArray get $index] getGroupId]]
            set groupList [[[my jget list] jget objectArray] get $id]
            $groupList remove $layerInterface
        }
    }
    

    method log {} {
        set stringBuffer [::StringMaker new]
        set GROUP "Group: "
        set SPACE [[::CommonSeps::getInstance] jget SPACE]
        set TOTAL_LABEL [[::CommonLabels::getInstance] jget TOTAL_LABEL]
        set size [[my jget list] size]
        for {set index [jint [expr {$size - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set groupList [[[my jget list] jget objectArray] get $index]
            $stringBuffer append $GROUP
            $stringBuffer appendint $index
            $stringBuffer append $SPACE
            $stringBuffer append $TOTAL_LABEL
            $stringBuffer appendint [$groupList size]
            $stringBuffer append $SPACE
        }
        [my jget logUtil] putF [$stringBuffer toString] [self] "log"
    }
}

namespace eval ::GroupLayerManagerListener {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::GroupLayerManagerListener new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::GroupLayerManagerListener::staticGet_SINGLETON]
    }
}


