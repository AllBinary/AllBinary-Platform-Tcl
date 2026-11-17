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
# package org.allbinary.string

oo::class create ::CommonSeps {
    superclass ::JObject
}

oo::define ::CommonSeps {
    method initFields_CommonSeps {} {
        my jset NEW_LINE {}
        my jset SEMICOLON {}
        my jset EQUALS {}
        my jset SPACE {}
        my jset COMMA {}
        my jset COLON {}
        my jset PERIOD {}
        my jset UNDERSCORE {}
        my jset COLON_SEP {}
        my jset COMMA_SEP {}
        my jset PARENTHESIS_OPEN {}
        my jset PARENTHESIS_CLOSE {}
        my jset BRACE_OPEN {}
        my jset BRACE_CLOSE {}
        my jset BRACKET_OPEN {}
        my jset BRACKET_CLOSE {}
        my jset DASH {}
        my jset PERCENT {}
        my jset AMPERSAND {}
        my jset FORWARD_SLASH {}
        my jset BACK_SLASH {}
        my jset QUESTION {}
        my jset QUOTE {}
        my jset QUOTE_END {}
        my jset COMMENT {}
        my jset INDENT {}
        my jset NEW_LINE "\n"
        my jset SEMICOLON ";"
        my jset EQUALS "="
        my jset SPACE " "
        my jset COMMA ","
        my jset COLON ":"
        my jset PERIOD "."
        my jset UNDERSCORE "_"
        my jset COLON_SEP [[[[::StringMaker new] append [my jget COLON]] append [my jget SPACE]] toString]
        my jset COMMA_SEP [[[[::StringMaker new] append [my jget COMMA]] append [my jget SPACE]] toString]
        my jset PARENTHESIS_OPEN "("
        my jset PARENTHESIS_CLOSE ")"
        my jset BRACE_OPEN "{"
        my jset BRACE_CLOSE "}"
        my jset BRACKET_OPEN "\["
        my jset BRACKET_CLOSE "\]"
        my jset DASH "-"
        my jset PERCENT "%"
        my jset AMPERSAND "&"
        my jset FORWARD_SLASH "/"
        my jset BACK_SLASH "\\"
        my jset QUESTION "?"
        my jset QUOTE "\""
        my jset QUOTE_END "\","
        my jset COMMENT "//"
        my jset INDENT "    "
        return
    }

    constructor {} {
        next
        my initFields_CommonSeps
    }
    
}

namespace eval ::CommonSeps {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CommonSeps new]
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
        return [::CommonSeps::staticGet_instance]
    }
}


