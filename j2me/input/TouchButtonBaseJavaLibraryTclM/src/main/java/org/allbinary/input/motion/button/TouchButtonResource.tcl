# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# package org.allbinary.input.motion.button

oo::class create ::TouchButtonResource {
    superclass ::JObject
}

oo::define ::TouchButtonResource {
    method initFields_TouchButtonResource {} {
        my jset RESOURCE {}
        my jset HINT {}
        
        
        return
    }
    

    constructor {resource hint} {
        next
        my initFields_TouchButtonResource
        my jset RESOURCE $resource
        my jset HINT $hint
    }
}

namespace eval ::TouchButtonResource {
}


