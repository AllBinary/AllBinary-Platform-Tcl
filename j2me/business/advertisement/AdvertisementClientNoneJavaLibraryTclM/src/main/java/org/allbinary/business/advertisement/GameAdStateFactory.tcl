# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

oo::class create ::GameAdStateFactory {
    superclass ::JObject
}

oo::define ::GameAdStateFactory {
    method initFields_GameAdStateFactory {} {
        my jset gameAdStateArray {}
        my jset gameAdState {}
        my jset gameAdStateArray [jarrayfrom [list [::GameAdState new [::AppNameLicensingAdConfiguration new]]]]
        my jset gameAdState [[my jget gameAdStateArray] get 0]
        return
    }

    constructor {} {
        next
        my initFields_GameAdStateFactory
    }
    
    

    method getCurrentInstance {} {
        return [my jget gameAdState]
    }
    

    method getInstanceForApp {softwareInformation} {
        my jset gameAdState [[my jget gameAdStateArray] get 0]
        return [[my jget gameAdStateArray] get 0]
    }
    

    method isEnabled {} {
        return false
    }
}

namespace eval ::GameAdStateFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameAdStateFactory new]
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
        return [::GameAdStateFactory::staticGet_instance]
    }
}


