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
# package org.allbinary.game.score

oo::class create ::HighScores {
    superclass ::JObject
}

oo::define ::HighScores {
    method initFields_HighScores {} {
        my jset orderedHighScoresList {}
        my jset name {}
        my jset heading {}
        my jset columnOneHeading {}
        my jset columnTwoHeading {}
        my jset orderedHighScoresList [::BasicArrayListD new]
        
        
        my jset columnOneHeading "Name"
        
        return
    }
    

    constructor {name heading columnTwoHeading} {
        next
        my initFields_HighScores
        my jset name $name
        my jset heading $heading
        my jset columnTwoHeading $columnTwoHeading
    }
    

    method setList {orderedHighScoresList} {
        my jset orderedHighScoresList $orderedHighScoresList
    }
    

    method getList {} {
        return [my jget orderedHighScoresList]
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method getTotal {} {
        return [[my getList] size]
    }
    

    method addHighScore {newHighScore} {
        [my jget orderedHighScoresList] add $newHighScore
    }
    

    method getHeading {} {
        return [my jget heading]
    }
    

    method getColumnOneHeading {} {
        return [my jget columnOneHeading]
    }
    

    method getColumnTwoHeading {} {
        return [my jget columnTwoHeading]
    }
    

    method isBestScore {newHighScore} {
        return false
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append "HighScores: "
        $stringBuffer append [my jget heading]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [[::CommonLabels::getInstance] jget TOTAL_LABEL]
        $stringBuffer appendint [[my jget orderedHighScoresList] size]
        return [$stringBuffer toString]
    }
}

namespace eval ::HighScores {
}


