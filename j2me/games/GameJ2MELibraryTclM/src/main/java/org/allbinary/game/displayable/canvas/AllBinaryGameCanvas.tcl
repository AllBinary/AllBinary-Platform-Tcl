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
# package org.allbinary.game.displayable.canvas

oo::class create ::AllBinaryGameCanvas {
    superclass ::RunnableCanvas
}

oo::define ::AllBinaryGameCanvas {
    method initFields_AllBinaryGameCanvas {} {
        my jset basicColorFactory {}
        my jset basicSetColorUtil {}
        my jset touchFeatureFactory {}
        my jset openGLFeatureFactory {}
        my jset touchButtonFactory {}
        my jset gameAdStateFactory {}
        my jset gameStrings {}
        my jset gameInputStrings {}
        my jset gameStateFactory {}
        my jset gameTickTimeDelayHelper {}
        my jset gameTickDisplayInfoSingleton {}
        my jset gameRunnable {}
        my jset gamePauseRunnable {}
        my jset formUtil {}
        my jset myFormUtil {}
        my jset updateMyFontProcessor {}
        my jset myFontProcessor {}
        my jset gameSpecificPaintable {}
        my jset sensorGameUpdateProcessor {}
        my jset endGameInfo {}
        my jset startIntermissionInterface {}
        my jset endLevelIntermissionInterface {}
        my jset gameLayerManager {}
        my jset gameState {}
        my jset gameOver false
        my jset initialized false
        my jset gameStateTimeHelper {}
        my jset highScoresHelper {}
        my jset highScoreSubmitted false
        my jset realHighScoresPaintable {}
        my jset highScoresPaintable {}
        my jset localPlayerGameInputList {}
        my jset isCheating false
        my jset hashtable {}
        my jset isSingleKeyRepeatableProcessing false
        my jset gameInitializationInterfaceFactoryInterface {}
        my jset touchButtonsPaintable {}
        my jset touchPaintable {}
        my jset cheatProcessor {}
        my jset gameInputProcessor {}
        my jset endGameProcessor {}
        my jset realEndGameProcessor {}
        my jset startIntermissionProcessor {}
        my jset realStartIntermissionProcessor {}
        my jset endGamePaintable {}
        my jset endGameStatePaintable {}
        my jset nonBotPaintable {}
        my jset intermissionPaintable {}
        my jset startIntermissionPaintable {}
        my jset mainStateProcessor {}
        my jset processGameProcessor {}
        my jset highScoresFactoryInterface {}
        my jset startLevel 0
        my jset mainMenuInputProcessor {}
        my jset popupMenuInputProcessor {}
        my jset menuInputProcessor {}
        my jset menuForm {}
        my jset formPaintable {}
        my jset openMenuPaintable {}
        my jset menuPaintable {}
        my jset currentTouchInputFactory {}
        my jset colorFillPaintable {}
        my jset baseGameStatistics {}
        my jset primaryPlayerQueue {}
        my jset secondaryPlayerQueue {}
        my jset BUILD_GAME {}
        my jset gameTypeFactory {}
        my jset screenCapture {}
        my jset basicMotionGesturesHandler {}
        my jset gameKeyEventHandler {}
        my jset gameBehavior {}
        my jset menuBehavior {}
        my jset progressPaintable {}
        my jset fontHeightP 0
        my jset gameCanvasStartListener {}
        my jset rawGameInputProcessor {}
        my jset rawInputProcessor {}
        my jset inputProcessor {}
        my jset YIELD_SLEEP 0
        my jset basicColorFactory [::BasicColorFactory::getInstance]
        my jset basicSetColorUtil [::BasicColorSetUtil::getInstance]
        my jset touchFeatureFactory [::TouchFeatureFactory::getInstance]
        my jset openGLFeatureFactory [::OpenGLFeatureFactory::getInstance]
        my jset touchButtonFactory [::TouchButtonFactory::getInstance]
        my jset gameAdStateFactory [::GameAdStateFactory::getInstance]
        my jset gameStrings [::GameStrings::getInstance]
        my jset gameInputStrings [::GameInputStrings::getInstance]
        my jset gameStateFactory [::GameStateFactory::getInstance]
        my jset gameTickTimeDelayHelper [::GameTickTimeDelayHelperFactory::getInstance]
        my jset gameTickDisplayInfoSingleton [::GameTickDisplayInfoSingleton::getInstance]
        my jset gameRunnable [::GameCanvasRunnable new [self]]
        my jset gamePauseRunnable [::GameCanvasPauseRunnable new [self]]
        my jset formUtil [::FormUtil::getInstance]
        my jset myFormUtil [::MyFormUtil::getInstance]
        my jset updateMyFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset myFontProcessor [my jget updateMyFontProcessor]
        my jset gameSpecificPaintable [::NullPaintable::getInstance]
        my jset sensorGameUpdateProcessor [::SingleSensorGameUpdateProcessor new]
        my jset endGameInfo [::EndGameInfo new]
        my jset startIntermissionInterface [::Intermission new]
        my jset endLevelIntermissionInterface [::Intermission new]
        my jset gameLayerManager [::AllBinaryGameLayerManager::getNullInstance]
        my jset gameState [[my jget gameStateFactory] jget NO_GAME_STATE]
        my jset gameOver false
        my jset initialized false
        my jset gameStateTimeHelper [::TimeDelayHelper new 0]
        
        my jset highScoreSubmitted false
        my jset realHighScoresPaintable [::HighScoresPaintable new]
        my jset highScoresPaintable [::NullPaintable::getInstance]
        my jset localPlayerGameInputList [::BasicArrayListD new]
        my jset isCheating false
        my jset hashtable [[my jget stdUtil] jget NULL_TABLE]
        my jset isSingleKeyRepeatableProcessing false
        my jset gameInitializationInterfaceFactoryInterface [::BasicBuildGameInitializerFactory::staticGet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY]
        my jset touchButtonsPaintable [::NullPaintable::getInstance]
        my jset touchPaintable [::NullPaintable::getInstance]
        my jset cheatProcessor [::NoPlayerGameInput::getInstance]
        my jset gameInputProcessor [::Processor::getInstance]
        my jset endGameProcessor [::Processor::getInstance]
        my jset realEndGameProcessor [::Processor::getInstance]
        my jset startIntermissionProcessor [::Processor::getInstance]
        my jset realStartIntermissionProcessor [::Processor::getInstance]
        my jset endGamePaintable [::NullPaintable::getInstance]
        my jset endGameStatePaintable [::NullPaintable::getInstance]
        my jset nonBotPaintable [::NullPaintable::getInstance]
        my jset intermissionPaintable [::NullPaintable::getInstance]
        my jset startIntermissionPaintable [::NullInitUpdatePaintable::getInstance]
        my jset mainStateProcessor [::Processor::getInstance]
        my jset processGameProcessor [::Processor::getInstance]
        
        my jset startLevel 0
        my jset mainMenuInputProcessor [::NoMenuInputProcessor::getInstance]
        my jset popupMenuInputProcessor [::NoMenuInputProcessor::getInstance]
        my jset menuInputProcessor [::NoMenuInputProcessor::getInstance]
        my jset menuForm [::ScrollSelectionForm::getNullScrollSelectionForm]
        my jset formPaintable [::NullPaintable::getInstance]
        my jset openMenuPaintable [::NullPaintable::getInstance]
        my jset menuPaintable [::NullPaintable::getInstance]
        my jset currentTouchInputFactory [::NoButtonsTouchInputFactory::getInstance]
        my jset colorFillPaintable [[::ColorFillPaintableFactory::getInstance] getInstance [[my jget basicColorFactory] jget BLACK] true]
        my jset baseGameStatistics [::GameStatisticsFactory::getInstance]
        my jset primaryPlayerQueue [::PrimaryPlayerQueueFactory::getInstance]
        my jset secondaryPlayerQueue [::SecondaryPlayerQueueFactory::getInstance]
        my jset BUILD_GAME "buildGame"
        my jset gameTypeFactory [::GameTypeFactory::getInstance]
        my jset screenCapture [::ScreenCaptureFactory::getInstance]
        my jset basicMotionGesturesHandler [::BasicMotionGesturesHandler::getInstance]
        my jset gameKeyEventHandler [::GameKeyEventHandler::getInstance]
        my jset gameBehavior {}
        my jset menuBehavior {}
        my jset progressPaintable [::ProgressCanvasFactory::getLazyInstance]
        my jset fontHeightP 0
        my jset gameCanvasStartListener [::NullDemoPaintable::staticGet_NULL_DEMO_PAINTABLE]
        my jset rawGameInputProcessor [::GameCanvasInputProcessor new [self]]
        my jset rawInputProcessor [::FormInputProcessor new [self]]
        my jset inputProcessor [my getRawGameInputProcessor]
        my jset YIELD_SLEEP 100
        return
    }
    

    constructor {commandListener gameLayerManager highScoresFactoryInterface gameInitializationInterfaceFactoryInterface buffered} {
        next $commandListener [[::CanvasStrings::getInstance] jget EMPTY_CHILD_NAME_LIST] true
        my initFields_AllBinaryGameCanvas
        my jset highScoresHelper [$highScoresFactoryInterface createHighScoresHelper]
        my jset gameInitializationInterfaceFactoryInterface $gameInitializationInterfaceFactoryInterface
        my init $gameLayerManager $buffered
        my jset highScoresFactoryInterface $highScoresFactoryInterface
        if {[expr {[expr {[[[my jget gameLayerManager] getGameInfo] getGameType] == [[my jget gameTypeFactory] jget BOT]}] || [expr {[[[my jget gameLayerManager] getGameInfo] getGameType] == [[my jget gameTypeFactory] jget NONE]}]}]} {
            my jset gameBehavior [::DemoGameBehavior::getInstance]
            my jset menuBehavior [::BaseMenuBehavior::getInstance]
        } else {
            my jset gameBehavior [::BaseGameBehavior::getInstance]
            my jset menuBehavior [my getInGameMenuBehavior]
        }
        my initPopupMenu
        my initMenu
        my initSpecialPaint
        [::DisplayChangeEventHandler::getInstance] addListenerInterface [self]
    }
    

    method updateMeasurement {graphics} {
        try {
            set font [$graphics getFont]
            [my jget logUtil] putF [[[[[[[::StringMaker new] append [[my jget commonStrings] jget START]] append [[my jget canvasStrings] jget FD_WIDTH]] appendint [jint [::MyFontProcessor::defaultCharWidth $font]]] append [[my jget canvasStrings] jget FD_HEIGHT]] appendint [jint [$font getHeight]]] toString] [self] [[my jget canvasStrings] jget UPDATE_MEASUREMENT]
            my jset fontHeightP [$font getHeight]
            [my jget myFormUtil] updateMeasurement $graphics
            set popupMenuRectangle [[my jget myFormUtil] getPopupMenuRectangle]
            set basicPopupMenuPaintable ([my getOpenMenuPaintable])
            $basicPopupMenuPaintable init $popupMenuRectangle
            if {[expr {[my getPopupMenuInputProcessor] ne [::NoMenuInputProcessor::getInstance]}]} {
                set popupMenuInputProcessor ([my getPopupMenuInputProcessor])
                $popupMenuInputProcessor init $popupMenuRectangle
            }
            my jset myFontProcessor [::MyFontProcessor::getInstance]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget canvasStrings] jget ON_DISPLAY_CHANGE_EVENT] $e
        }
    }
    

    method getInGameMenuBehavior {} {
        return [::InGameMenuBehavior::getInstance]
    }
    

    method setCurrentThread {} {
        if {[::J2MEUtil::isHTML]} {
            next
        } else {
            next
        }
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onDisplayChangeEvent {displayChangeEvent} {
        try {
            [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonStrings] jget START]] append [[::DisplayInfoSingleton::getInstance] toString]] toString] [self] [[my jget canvasStrings] jget UPDATE_MEASUREMENT]
            my jset myFontProcessor [my jget updateMyFontProcessor]
            [my jget menuBehavior] onDisplayChangeEvent [self] $displayChangeEvent
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget canvasStrings] jget ON_DISPLAY_CHANGE_EVENT] $e
        }
    }
    

    method updateMenuFromEvent {displayChangeEvent} {
        set formType [[::FormTypeFactory::getInstance] getFormType]
        set rectangle [[my jget formUtil] createFormRectangle]
        [my jget menuForm] init $rectangle $formType
        if {[expr {[my jget currentTouchInputFactory] ne [::NoButtonsTouchInputFactory::getInstance]}]} {
            [my jget touchButtonFactory] toggle [my isPaused] [[my jget currentTouchInputFactory] getList]
        }
        my jset myFontProcessor [my jget updateMyFontProcessor]
    }
    

    method processSleep {} {
        next
        if {[::AllBinaryMediaManager::update]} {
            if {[expr {![[my jget primaryPlayerQueue] process]}]} {
                [my jget secondaryPlayerQueue] process
            }
        }
        if {[expr {[[my jget menuInputProcessor] processInputList] != [expr {-1}]}]} {
            [my jget runnableCanvasRefreshHelper] process
        }
    }
    

    method initPopupMenu {} {
        if {[expr {[my jget popupMenuInputProcessor] eq [::NoMenuInputProcessor::getInstance]}]} {
            set features [::Features::getInstance]
            set popupMenuRectangle [[my jget myFormUtil] getPopupMenuRectangle]
            if {[$features isFeature [[my jget touchFeatureFactory] jget TOUCH_ENABLED]]} {
                my setOpenMenuPaintable [::BasicPopupMenuPaintable new $popupMenuRectangle [[my jget gameLayerManager] getBackgroundBasicColor] [[my jget gameLayerManager] getForegroundBasicColor]]
                my setPopupMenuInputProcessor [::PopupMenuInputProcessor new [::BasicArrayListD new] [expr {-1}] [self] $popupMenuRectangle]
            }
        } else {
        }
    }
    

    method initMenu {} {
        try {
            [my jget menuBehavior] initMenu [self]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "initMenu" $e
        }
    }
    

    method initMenu2 {} {
        my closeMenu
        set formType [[::FormTypeFactory::getInstance] getFormType]
        set gameLimitedCommandTextItemArrayFactory [::GameLimitedCommandTextItemArrayFactory::getInstance]
        set commandTextItemArrayFactory [$gameLimitedCommandTextItemArrayFactory getCommandTextItemArrayFactory]
        set items [$commandTextItemArrayFactory getInstance [my getCommandStack] [[my jget gameLayerManager] getBackgroundBasicColor] [[my jget gameLayerManager] getForegroundBasicColor]]
        set rectangle [[my jget formUtil] createFormRectangle]
        my setMenuForm [::CommandCurrentSelectionFormFactory::getInstance [[::StringUtil::getInstance] jget EMPTY_STRING] $items $rectangle $formType 25 false [[my jget gameLayerManager] getBackgroundBasicColor] [[my jget gameLayerManager] getForegroundBasicColor]]
        set scrollSelectionForm [my getMenuForm]
        set features [::Features::getInstance]
        if {[$features isFeature [[my jget touchFeatureFactory] jget TOUCH_ENABLED]]} {
            my jset mainMenuInputProcessor [::PopupCommandFormInputProcessor new [::BasicArrayListD new] [expr {-1}] [self] $scrollSelectionForm [my getPopupMenuInputProcessor]]
        } else {
        }
        my setMenuInputProcessor [my getPopupMenuInputProcessor]
        if {[expr {$scrollSelectionForm ne [::ScrollSelectionFormNoneFactory::getInstance]}]} {
            my setFormPaintable [::FormPaintable new $scrollSelectionForm]
        } else {
        }
        my closeMenu
    }
    

    method updateMenu {} {
        try {
            [my jget menuBehavior] updateMenu [self]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "initMenu" $e
        }
    }
    

    method updateMenu2 {} {
        set scrollSelectionForm [my getMenuForm]
        $scrollSelectionForm deleteAll
        set gameLimitedCommandTextItemArrayFactory [::GameLimitedCommandTextItemArrayFactory::getInstance]
        set commandTextItemArrayFactory [$gameLimitedCommandTextItemArrayFactory getCommandTextItemArrayFactory]
        set items [$commandTextItemArrayFactory getInstance [my getCommandStack] [[my jget gameLayerManager] getBackgroundBasicColor] [[my jget gameLayerManager] getForegroundBasicColor]]
        set size [$items length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $scrollSelectionForm append [$items get $index]
        }
        set formType [[::FormTypeFactory::getInstance] getFormType]
        set rectangle [[my jget formUtil] createFormRectangle]
        $scrollSelectionForm init $rectangle $formType
    }
    

    method pause {} {
        [my jget gameBehavior] pause [self]
        my closeMenu
        next
        [my jget touchButtonFactory] toggle [my isPaused] [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        [my jget tsUtil] gc
    }
    

    method unPause {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget gameStrings] jget UNPAUSE]
        my closeMenu
        [my jget tsUtil] gc
        next
        [my jget touchButtonFactory] toggle [my isPaused] [[::BasicArrayListUtil::getInstance] getImmutableInstance]
        [my jget gameBehavior] unPause [self]
    }
    

    method isPausable {} {
        if {[expr {[[::CurrentDisplayableFactory::getInstance] getUsedRunnable] == [::NullWaitGameRunnable::getInstance]}]} {
            return true
        } else {
            return false
        }
    }
    

    method popupMenu {} {
        [my jget menuBehavior] popupMenu [self]
    }
    

    method popupMenu2 {} {
        [my jget primaryPlayerQueue] add [::SelectSound::getInstance]
        my setMenuPaintable [my getFormPaintable]
        my setMenuInputProcessor [my jget mainMenuInputProcessor]
        [my jget basicMotionGesturesHandler] addListenerInterface [my jget mainMenuInputProcessor]
        [my jget gameKeyEventHandler] addListener [my jget mainMenuInputProcessor]
    }
    

    method toggleMenu {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget gameStrings] jget TOGGLE_MENU]
        if {[expr {[my getMenuPaintable] eq [my getOpenMenuPaintable]}]} {
            my pause
            my updateMenu
            my popupMenu
        } elseif {[expr {[my getMenuPaintable] eq [my getFormPaintable]}]} {
            [my jget primaryPlayerQueue] add [::SelectSound::getInstance]
            my unPause
        }
    }
    

    method closeMenu {} {
        [my jget menuBehavior] closeMenu [self]
    }
    

    method closeMenu2 {} {
        my setMenuPaintable [my getOpenMenuPaintable]
        [my jget basicMotionGesturesHandler] removeListener [my jget mainMenuInputProcessor]
        [my jget gameKeyEventHandler] removeListener [my jget mainMenuInputProcessor]
        my setMenuInputProcessor [my getPopupMenuInputProcessor]
    }
    

    method open {} {
        [my jget basicMotionGesturesHandler] addListenerInterface [my jget menuInputProcessor]
        [my jget gameKeyEventHandler] addListener [my jget menuInputProcessor]
    }
    

    method close {} {
        [my jget basicMotionGesturesHandler] removeListener [my jget menuInputProcessor]
        [my jget gameKeyEventHandler] removeListener [my jget menuInputProcessor]
        [my jget primaryPlayerQueue] clear
        [my jget secondaryPlayerQueue] clear
    }
    

    method processorInit {} {
        my setMainStateProcessor [::Processor::getInstance]
        my setProcessGameProcessorInit
    }
    

    method setProcessGameProcessorInit {} {
        my setProcessGameProcessor [::GameProcessor new [self]]
    }
    

    method initSpecialPaint {} {
        [my jget menuBehavior] initSpecialPaint [self]
    }
    

    method init {gameLayerManager buffered} {
        [my jget gameStateTimeHelper] setStartTimeTNT
        my setHighScoreSubmitted false
        my setLayerManager $gameLayerManager
        if {[expr {!$buffered}]} {
            set BUFF_MESSAGE "XXX Not Buffering Causes Concurrency Issues XXX"
            [my jget logUtil] putF $BUFF_MESSAGE [self] [[my jget commonStrings] jget CONSTRUCTOR]
        } else {
            error [jexception Exception "Buffering is disabled"]
        }
        my setGameInputProcessor [::Processor::getInstance]
        set features [::Features::getInstance]
        if {[$features isFeature [[::GameFeatureFactory::getInstance] jget CHEATING]]} {
            my jset isCheating true
            my jset cheatProcessor [::CheatGameInputProcessor new [self]]
            [my jget gameKeyEventHandler] addListener [my jget cheatProcessor]
        } else {
            my jset isCheating false
            my jset cheatProcessor [::NoPlayerGameInput::getInstance]
        }
        my jset realEndGameProcessor [::EndGameProcessor new [self]]
        my setEndGameProcessor [::Processor::getInstance]
        my jset realStartIntermissionProcessor [::StartIntermissionProcessor new [self]]
        my jset startIntermissionProcessor [::Processor::getInstance]
        my setEndGameStatePaintable [::EndGamePaintable new [self]]
        my setEndGamePaintable [::NullPaintable::getInstance]
        my setIntermissionPaintable [::NullPaintable::getInstance]
        [my getStartIntermissionInterface] setListener [self]
    }
    

    method notifyIntermission {enable} {
        if {$enable} {
            my jset startIntermissionProcessor [my jget realStartIntermissionProcessor]
        } else {
            my jset startIntermissionProcessor [::Processor::getInstance]
        }
        if {$enable} {
            my setIntermissionPaintable [my getStartIntermissionPaintable]
        } else {
            my setIntermissionPaintable [::NullPaintable::getInstance]
        }
    }
    

    method mediaInit {} {
        ::ForcedLogUtil::log [[my jget commonStrings] jget NOT_IMPLEMENTED] [self]
    }
    

    method initConfigurable {abeClientInformation} {
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        $progressCanvas addNormalPortion 50 "Setting Configurables"
        [::GameInitializationUtil::getInstance] initGame $abeClientInformation [self] [my jget gameInitializationInterfaceFactoryInterface]
        set gameFeatureFactory [::GameFeatureFactory::getInstance]
        set changedGameFeatureListener [::ChangedGameFeatureListener::getInstance]
        if {[$changedGameFeatureListener isChangedFeature [$gameFeatureFactory jget SOUND]]} {
            set features [::Features::getInstance]
            [my jget logUtil] putF [[[[::StringMaker new] append "Sound Changing To: "] appendboolean [$features isFeature [$gameFeatureFactory jget SOUND]]] toString] [self] "initConfigurable"
            my mediaInit
            $changedGameFeatureListener remove [$gameFeatureFactory jget SOUND]
        }
        set sensorFeatureFactory [::SensorFeatureFactory::getInstance]
        if {[expr {[expr {[$changedGameFeatureListener isChangedFeature [$sensorFeatureFactory jget ORIENTATION_SENSORS]] || [$changedGameFeatureListener isChangedFeature [$sensorFeatureFactory jget NO_ORIENTATION]]}] || [$changedGameFeatureListener isChangedFeature [$sensorFeatureFactory jget SIMULATED_ORIENTATION_SENSORS]]}]} {
            $changedGameFeatureListener remove [$sensorFeatureFactory jget NO_ORIENTATION]
            $changedGameFeatureListener remove [$sensorFeatureFactory jget ORIENTATION_SENSORS]
            $changedGameFeatureListener remove [$sensorFeatureFactory jget SIMULATED_ORIENTATION_SENSORS]
        }
        set resourceLoadingLevelFactory [::ResourceLoadingLevelFactory::getInstance]
        my loadResourceLoadingLevel [$resourceLoadingLevelFactory jget LOAD_GAME]
    }
    

    method initApp {abeClientInformation} {
        my initConfigurable $abeClientInformation
        my processorInit
        [my jget sensorGameUpdateProcessor] process [my jget gameLayerManager]
        [my jget sensorGameUpdateProcessor] sendNotifications [my jget gameLayerManager]
        my initTouch
    }
    

    method initTouch {} {
        set gameInitializedEvent [[::GameInitializationUtil::getInstance] jget EVENT]
        set resourceLoadingLevelFactory [::ResourceLoadingLevelFactory::getInstance]
        $gameInitializedEvent setResourceLoadingLevel [$resourceLoadingLevelFactory jget LOAD_TOUCH]
        [::GameInitializedEventHandler::getInstance] fireEvent $gameInitializedEvent
        [my jget touchButtonFactory] defaultList
        my updateTouch
        my postInitTouch
    }
    

    method updateCurrentTouchInputFactory {nextTouchInput} {
        if {[expr {$nextTouchInput ne [my jget currentTouchInputFactory]}]} {
            my jset currentTouchInputFactory $nextTouchInput
            ::PreLogUtil::put [[my jget currentTouchInputFactory] toString] [self] [[my jget gameInputStrings] jget UDPATE_CURRENT_TOUCH_INPUT_FACTORY]
            [my jget touchButtonFactory] toggle [my isPaused] [[my jget currentTouchInputFactory] getList]
        }
    }
    

    method updateTouch {} {
        [my jget gameBehavior] updateTouch [self]
    }
    

    method updateTouch2 {} {
        set features [::Features::getInstance]
        if {[$features isFeature [[my jget touchFeatureFactory] jget AUTO_HIDE_SHOW_SCREEN_BUTTONS]]} {
            if {[expr {[expr {[[[my jget gameLayerManager] getGameInfo] getCurrentLevel] - [my getStartLevel]}] == 1}]} {
                my setTouchPaintableP [::NullPaintable::getInstance]
            }
        }
    }
    

    method postInitTouch {} {
        my setTouchButtonsPaintable [::TouchButtonsPaintableFactory::getInstance [[my jget gameLayerManager] getForegroundBasicColor]]
        my updateScreenButtonPaintable
    }
    

    method initCommands {cmdListener} {
        my removeAllCommands
        my addCommands
        my setCommandListener $cmdListener
    }
    

    method addCommands {} {
        set gameCommandsFactory [::GameCommandsFactory::getInstance]
        set myCommandsFactory [::MyCommandsFactory::getInstance]
        if {[expr {[::DebugFactory::getInstance] != [::NoDebug::getInstance]}]} {
            my addCommand [$gameCommandsFactory jget START_TRACE]
        }
        my addCommand [$gameCommandsFactory jget RESTART_COMMAND]
        my addCommand [$myCommandsFactory jget PAUSE_COMMAND]
        my addCommand [$gameCommandsFactory jget QUIT_COMMAND]
        set isOverScan [[[::OperatingSystemFactory::getInstance] getOperatingSystemInstance] isOverScan]
        if {[::J2MEUtil::isHTML]} {
        } elseif {[::SWTUtil::staticGet_isSWT]} {
        } elseif {[expr {!$isOverScan}]} {
            if {[expr {[[::TouchScreenFactory::getInstance] isTouch] && [[::InGameFeatures new] isAny]}]} {
                my addCommand [::InGameOptionsForm::staticGet_DISPLAY]
            }
            my addCommand [$gameCommandsFactory jget SAVE]
            my addCommand [$gameCommandsFactory jget DISPLAY_LOAD_FORM]
        }
    }
    

    method itemStateChanged {item} {
        try {
            set itemLabel [$item getLabel]
            [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonLabels] jget ITEM_LABEL]] append $itemLabel] toString] [self] "itemStateChanged"
            if {[jinstanceof $item ::ChoiceGroup]} {
                set gameFeatureUtil [::GameFeatureUtil::getInstance]
                if {[$gameFeatureUtil isExclusive $itemLabel]} {
                    $gameFeatureUtil updateExclusiveForChoiceGroup $item
                } else {
                    $gameFeatureUtil updateMultiple $item
                }
            }
            [my jget sensorGameUpdateProcessor] process [my jget gameLayerManager]
            my updateTouch
            my updateScreenButtonPaintable
            [my jget sensorGameUpdateProcessor] sendNotifications [my jget gameLayerManager]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "itemStateChanged" $e
        }
    }
    

    method updateScreenButtonPaintable {} {
        [my jget gameBehavior] updateScreenButtonPaintable [self]
    }
    

    method updateScreenButtonPaintable2 {} {
        set features [::Features::getInstance]
        if {[$features isFeature [[my jget touchFeatureFactory] jget AUTO_HIDE_SHOW_SCREEN_BUTTONS]]} {
            my setTouchPaintableP [my getTouchButtonsPaintable]
            my setStartLevel [[[my jget gameLayerManager] getGameInfo] getCurrentLevel]
        } elseif {[$features isFeature [[my jget touchFeatureFactory] jget SHOW_SCREEN_BUTTONS]]} {
            my setTouchPaintableP [my getTouchButtonsPaintable]
        } elseif {[$features isFeature [[my jget touchFeatureFactory] jget HIDE_SCREEN_BUTTONS]]} {
            my setTouchPaintableP [::NullPaintable::getInstance]
        } else {
            my setTouchPaintableP [::NullPaintable::getInstance]
        }
    }
    

    method getLayerManager {} {
        return [my jget gameLayerManager]
    }
    

    method setLayerManager {layerManager} {
        my jset gameLayerManager $layerManager
    }
    

    method isGameOver {} {
        return [my jget gameOver]
    }
    

    method setGameOver {gameOver} {
        my jset gameOver $gameOver
    }
    

    method processGameOver {} {
        ::PreLogUtil::put [[my jget commonStrings] jget START] [self] [[my jget gameStrings] jget SET_GAME_OVER]
        my setGameOver true
        my removePauseCommand
        my setGameState [[my jget gameStateFactory] jget SHOW_END_RESULT_GAME_STATE]
        my setEndGamePaintable [my getEndGameStatePaintable]
    }
    

    method isHighScoreSubmitted {} {
        return [my jget highScoreSubmitted]
    }
    

    method setHighScoreSubmitted {highScoreSubmitted} {
        my jset highScoreSubmitted $highScoreSubmitted
        if {$highScoreSubmitted} {
            [my jget highScoresHelper] setSelectedHighScores [::NullHighScoresSingletonFactory::getInstance]
        }
        [my jget logUtil] putF [[[[::StringMaker new] append "isHighScoreSubmitted: "] appendboolean $highScoreSubmitted] toString] [self] "setHighScoreSubmitted"
    }
    

    method getGameState {} {
        return [my jget gameState]
    }
    

    method setGameState {gameState} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[my jget gameStrings] jget GAME_STATE]] append [[my jget stringUtil] toString1 $gameState]] toString] [self] [[my jget gameStrings] jget SET_GAME_STATE]
        my jset gameState $gameState
        [my jget gameStateTimeHelper] setStartTimeTNT
        my updateEndGameProcessor
        my updateGameKeyEventProcessor
        [my jget gameBehavior] setGameState [self]
    }
    

    method updateGameState {} {
        set gameAdState [[my jget gameAdStateFactory] getCurrentInstance]
        $gameAdState processAdState [my jget gameState] [[[my jget gameLayerManager] getGameInfo] getGameType]
        if {[expr {[my jget gameState] ne [[my jget gameStateFactory] jget PLAYING_GAME_STATE]}]} {
            $gameAdState processPageAdState
        }
    }
    

    method updateGameKeyEventProcessor {} {
        if {[expr {[expr {[my getGameState] ne [[my jget gameStateFactory] jget PLAYING_GAME_STATE]}] || [my jget isCheating]}]} {
        } else {
        }
    }
    

    method removeAllGameKeyInputListenersOnBuild {} {
        my removeAllGameKeyInputListeners
    }
    

    method removeAllGameKeyInputListeners {} {
        [my jget gameBehavior] removeAllGameKeyInputListeners [self]
    }
    

    method removeAllGameKeyInputListeners2 {} {
        [my jget logUtil] putF "Remove PlayerInput Listeners" [self] "removeAllGameKeyInputListeners"
        for {set index [jint [expr {[[my jget localPlayerGameInputList] size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set playerGameInput [[my jget localPlayerGameInputList] get $index]
            my removeKeyInputListener $playerGameInput
            $playerGameInput removeNonAIInputGameKeyEvents
        }
    }
    

    method removeKeyInputListener {playerGameInput} {
        [my jget gameKeyEventHandler] removeListener $playerGameInput
    }
    

    method updateEndGameProcessor {} {
        [my jget gameBehavior] updateEndGameProcessor [self]
    }
    

    method updateEndGameProcessor2 {} {
        if {[expr {[expr {[my getGameState] eq [[my jget gameStateFactory] jget SHOW_END_RESULT_GAME_STATE]}] || [expr {[my getGameState] eq [[my jget gameStateFactory] jget SHOW_HIGH_SCORE_GAME_STATE]}]}]} {
            my setEndGameProcessor [my jget realEndGameProcessor]
        } else {
            my setEndGameProcessor [::Processor::getInstance]
        }
    }
    

    method buildGameInit {isPortion} {
    }
    

    method cleanupGame {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CLEANUP]
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        $progressCanvas addNormalPortion 10 "Cleaning Up"
        [my jget primaryPlayerQueue] clear
        [my jget secondaryPlayerQueue] clear
        [::GameLevelDisplayChangeEventListenersFactory::getInstance] clear
    }
    

    method loadResourceLoadingLevel {resourceLoadingLevel} {
        set gameInitializedEvent [[::GameInitializationUtil::getInstance] jget EVENT]
        $gameInitializedEvent setResourceLoadingLevel $resourceLoadingLevel
        [::GameInitializedEventHandler::getInstance] fireEvent $gameInitializedEvent
    }
    

    method loadResources {level} {
        set gameInitializedEvent [[::GameInitializationUtil::getInstance] jget EVENT]
        $gameInitializedEvent setLevel $level
        [::GameInitializedEventHandler::getInstance] fireEvent $gameInitializedEvent
    }
    

    method updateColor {} {
    }
    

    method buildGame {portion} {
        [my jget screenCapture] endRecording
        [my jget screenCapture] startRecording
        set progressCanvas [::ProgressCanvasFactory::getInstance]
        set features [::Features::getInstance]
        $progressCanvas addNormalPortion $portion "Generic Build"
        my removeAllGameKeyInputListenersOnBuild
        my updateTouch
        $progressCanvas addNormalPortion $portion "High Scores"
        [my jget highScoresFactoryInterface] fetchHighScores [[my jget gameLayerManager] getGameInfo] [my jget highScoresHelper]
        my setHighScoresPaintable [::NullPaintable::getInstance]
        $progressCanvas addNormalPortion $portion "Finishing."
        [my getEndGameInfoP] update [[my getLayerManager] getGameInfo] [self]
        my jset isSingleKeyRepeatableProcessing [$features isFeature [[::InputFeatureFactory::getInstance] jget SINGLE_KEY_REPEAT_PRESS]]
        my setGameOver false
        $progressCanvas addNormalPortion $portion "Finishing.."
        my updateColor
        [my getStartIntermissionPaintable] update
        if {[expr {![my isRunningInAnotherThread]}]} {
            return
        }
        $progressCanvas addNormalPortion $portion "Finishing..."
        if {[expr {[my isMainCanvas] || [expr {![my isInitialized]}]}]} {
            if {[$features isFeature [[::MainFeatureFactory::getInstance] jget LOAD_ONDEMAND]]} {
                if {[expr {[my getCustomCommandListener] ne {}}]} {
                    $progressCanvas end
                }
            } else {
                $progressCanvas end
            }
            my setInitialized true
        }
        if {[expr {[my getCustomCommandListener] == [::NullCommandListener::staticGet_NULL_COMMAND_LISTENER]}]} {
            [my jget logUtil] putF "Show Game Paintable in DemoCanvas Thread" [self] [my jget BUILD_GAME]
            [my jget gameCanvasStartListener] showGamePaintable
        } else {
            [my jget logUtil] putF "No GameCanvasStartListener" [self] [my jget BUILD_GAME]
        }
        [my jget colorFillPaintable] setBasicColorP [[my jget gameLayerManager] getBackgroundBasicColor]
        [my jget gameBehavior] buildGame [self]
    }
    

    method buildGame2 {} {
        ::PreLogUtil::put [[[[::StringMaker new] append [[my jget gameInputStrings] jget ENABLE_PLAYER_GAME_INPUTS]] appendint [[my jget localPlayerGameInputList] size]] toString] [self] [my jget BUILD_GAME]
        set playerGameInput {}
        for {set index [jint [expr {[[my jget localPlayerGameInputList] size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set playerGameInput [[my jget localPlayerGameInputList] get $index]
            ::PreLogUtil::put [[[[::StringMaker new] append [[my jget gameInputStrings] jget ENABLE_PLAYER_GAME_INPUT]] append [$playerGameInput toString]] toString] [self] [my jget BUILD_GAME]
            $playerGameInput removeNonAIInputGameKeyEvents
            my addKeyInputListener $playerGameInput
        }
    }
    

    method addKeyInputListener {playerGameInput} {
        [::GameKeyEventHandler::getInstance] addListenerForPlayer $playerGameInput [$playerGameInput getPlayerInputId]
    }
    

    method setGameCanvasStartListener {gameCanvasStartListener} {
        my jset gameCanvasStartListener $gameCanvasStartListener
    }
    

    method loadState {} {
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget LOAD]
        set hashtable [my getLoadStateHashtable]
        if {[expr {[expr {$hashtable ne {}}] && [expr {[$hashtable size] > 0}]}]} {
            set levelAsString [$hashtable get [::GameInfo::staticGet_LEVEL_NAME]]
            set level [[jstr $levelAsString] intValue]
            set gameInfo [[my jget gameLayerManager] getGameInfo]
            $gameInfo setCurrentLevel $level
        }
    }
    

    method getLoadStateHashtable {} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonLabels] jget START_LABEL]] append [[my jget stringUtil] toString1 [my jget hashtable]]] toString] [self] "getLoadStateHashtable"
        return [my jget hashtable]
    }
    

    method setLoadStateHashtable {hashtable} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonLabels] jget START_LABEL]] append [[my jget stringUtil] toString1 $hashtable]] toString] [self] "setLoadStateHashtable"
        my jset hashtable $hashtable
    }
    

    method getCurrentStateHashtable {} {
        set hashtable [[my jget stdUtil] createHashtable]
        set level [[[my jget gameLayerManager] getGameInfo] getCurrentLevel]
        $hashtable put [[::GameInfo::staticGet_LEVEL_NAME] toString] [jstr $level]
        [my jget logUtil] putF [[[[::StringMaker new] append "End: "] append [[my jget stringUtil] toString1 $hashtable]] toString] [self] "getCurrentStateHashtable"
        return $hashtable
    }
    

    method paintGameOver {graphics} {
        ::ForcedLogUtil::log [[my jget commonStrings] jget NOT_IMPLEMENTED] [self]
    }
    

    method draw {graphics} {
        [my jget colorFillPaintable] paint $graphics
        [my jget basicSetColorUtil] setBasicColorP $graphics [[my jget gameLayerManager] getForegroundBasicColor]
        [my jget gameSpecificPaintable] paint $graphics
    }
    

    method clear {graphics} {
        [my jget colorFillPaintable] paint $graphics
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        [my jget baseGameStatistics] nextRefresh
        my draw $graphics
        [my jget menuPaintable] paint $graphics
        [my jget progressPaintable] paint $graphics
    }
    

    method paintThreed {graphics} {
    }
    

    method processEndLevelIntermissionGameState {} {
    }
    

    method nonBotPaint {graphics} {
        [my jget endGamePaintable] paint $graphics
        [my jget intermissionPaintable] paint $graphics
        my paintIntermission $graphics
        [my jget touchPaintable] paint $graphics
    }
    

    method paintIntermission {graphics} {
    }
    

    method keyPressed {keyCode} {
        my keyPressedByDevice $keyCode 0
    }
    

    method keyReleased {keyCode} {
        my keyReleasedByDevice $keyCode 0
    }
    

    method keyRepeated {keyCode} {
        my keyRepeatedByDevice $keyCode 0
    }
    

    method keyPressedByDevice {keyCode deviceId} {
        [my jget inputProcessor] keyPressedByDevice $keyCode $deviceId
    }
    

    method keyRepeatedByDevice {keyCode deviceId} {
        if {[my jget isSingleKeyRepeatableProcessing]} {
            [my jget inputProcessor] keyPressedByDevice $keyCode $deviceId
        }
    }
    

    method keyReleasedByDevice {keyCode deviceId} {
        [my jget inputProcessor] keyReleasedByDevice [self] $keyCode $deviceId
    }
    

    method handleRawKey {keyCode deviceId repeated} {
    }
    

    method endProgress {isProgress} {
        set portion 30
        if {[expr {$isProgress && [my isMainCanvas]}]} {
            set myCommandsFactory [::MyCommandsFactory::getInstance]
            set progressCanvas [::ProgressCanvasFactory::getInstance]
            $progressCanvas start
            [my getCustomCommandListener] commandAction [$myCommandsFactory jget SET_DISPLAYABLE] $progressCanvas
            set portion 4
        }
        return $portion
    }
    

    method processPlayingGame {} {
        [my jget cheatProcessor] update
        [[my jget sensorGameUpdateProcessor] getInputSensor] update
        [my jget gameInputProcessor] process
        [my jget gameLayerManager] process
        [my jget startIntermissionProcessor] process
    }
    

    method threadInit {} {
    }
    

    method processGame {} {
        next
        if {[::AllBinaryMediaManager::update]} {
            if {[expr {![[my jget primaryPlayerQueue] process]}]} {
                [my jget secondaryPlayerQueue] process
            }
        }
        [my jget mainStateProcessor] process
        [my jget menuInputProcessor] processInputList
        [my jget endGameProcessor] process
        [my jget baseGameStatistics] nextFrame
    }
    

    method notifyDonePainting {} {
        if {1} {
            [my jget threadObjectUtil] notifyObject [self]
        }
    }
    

    method shouldWait {} {
        set features [::Features::getInstance]
        if {[::AndroidUtil::isAndroid]} {
        } elseif {[$features isFeature [[my jget openGLFeatureFactory] jget OPENGL_2D]]} {
        } else {
            if {[$features isDefault [[my jget openGLFeatureFactory] jget OPENGL]]} {
                set openGLImageSpecificFactory [::OpenGLImageSpecificFactory::getInstance]
                while {[$openGLImageSpecificFactory jget updating]} {
                    ::Thread::sleep [my jget YIELD_SLEEP]
                }
            }
        }
    }
    

    method run {} {
        try {
            [my jget logUtil] putF [[my jget commonStrings] jget START_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
            set progressCanvas [::ProgressCanvasFactory::getInstance]
            $progressCanvas addNormalPortion 50 "Game Thread"
            my setCurrentThread
            my setRunning true
            if {[expr {[my getCustomCommandListener] == [::NullCommandListener::staticGet_NULL_COMMAND_LISTENER]}]} {
                ::Thread::sleep [my jget YIELD_SLEEP]
            }
            my shouldWait
            my threadInit
            if {[expr {[my getCustomCommandListener] == [::NullCommandListener::staticGet_NULL_COMMAND_LISTENER]}]} {
                ::Thread::sleep [my jget YIELD_SLEEP]
            }
            my open
            set gameAdState [[my jget gameAdStateFactory] getCurrentInstance]
            $gameAdState init
            $gameAdState setGameIsReady true
            [my jget gameBehavior] run [self]
            [my jget logUtil] putF [[my jget commonStrings] jget END_RUNNABLE] [self] [[my jget commonStrings] jget RUN]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget RUN] $e
        }
    }
    

    method run2 {} {
        set features [::Features::getInstance]
        if {[expr {[$features isDefault [[my jget openGLFeatureFactory] jget OPENGL_AS_GAME_THREAD]] || [::J2MEUtil::isHTML]}]} {
            if {[$features isDefault [[my jget openGLFeatureFactory] jget OPENGL_AS_GAME_THREAD]]} {
                [my jget logUtil] putF [[[my jget openGLFeatureFactory] jget OPENGL_AS_GAME_THREAD] getName] [self] [[my jget commonStrings] jget RUN]
            }
            if {[::J2MEUtil::isHTML]} {
                [my jget logUtil] putF [[::GraphicsStrings::getInstance] jget HTML] [self] [[my jget commonStrings] jget RUN]
            }
            set currentDisplayableFactory [::CurrentDisplayableFactory::getInstance]
            $currentDisplayableFactory setRunnable [my jget gameRunnable]
            $currentDisplayableFactory setDisplayable [self]
            [::OpenGLThreadUtil::getInstance] onResume
        } elseif {[$features isDefault [[my jget openGLFeatureFactory] jget OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS]]} {
            [my jget logUtil] putF [[[my jget openGLFeatureFactory] jget OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS] getName] [self] [[my jget commonStrings] jget RUN]
            [::OpenGLThreadUtil::getInstance] onResume
            while {[my isRunning]} {
                my run3
            }
            my end
        } else {
            [my jget logUtil] putF "this thread" [self] [[my jget commonStrings] jget RUN]
            while {[my isRunning]} {
                my run3
            }
            my end
        }
    }
    

    method run3 {} {
        [my jget loopTimeHelper] setStartTime [[my jget gameTickTimeDelayHelper] setStartTime]
        [my jget gameTickDisplayInfoSingleton] update
        my processGame
        my processLoopSleep
    }
    

    method setRunning {running} {
        next $running
        try {
            set features [::Features::getInstance]
            if {$running} {
            } else {
                if {[expr {[$features isDefault [[my jget openGLFeatureFactory] jget OPENGL]] || [::SWTUtil::staticGet_isSWT]}]} {
                    if {[expr {[[[my jget gameLayerManager] getGameInfo] getGameType] != [[my jget gameTypeFactory] jget BOT]}]} {
                        set currentDisplayableFactory [::CurrentDisplayableFactory::getInstance]
                        $currentDisplayableFactory clearRunnable
                    }
                    my end
                }
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [my jget SET_RUNNING] $e
        }
    }
    

    method end {} {
        [my jget screenCapture] endRecording
        [my jget baseGameStatistics] add [[[[::StringMaker new] append [[my jget baseGameStatistics] toString]] append [[::CommonSeps::getInstance] jget NEW_LINE]] toString]
        [my jget baseGameStatistics] init
        [my jget gameKeyEventHandler] removeListener [my jget cheatProcessor]
        my close
        my removeAllGameKeyInputListeners
        my endGameThread
    }
    

    method endGameThread {} {
        [::DisplayChangeEventHandler::getInstance] removeListener [self]
        [::GameLevelDisplayChangeEventListenersFactory::getInstance] clear
        set gameAdState [[my jget gameAdStateFactory] getCurrentInstance]
        $gameAdState notPlayingAdState
    }
    

    method createHighScore {score} {
        set gameInfo [[my jget gameLayerManager] getGameInfo]
        return [::HighScore new 0 "NONE" [::GameInfo new [$gameInfo getGameType] [$gameInfo getGameMode] [[::PlayerTypesFactory::getInstance] jget PLAYER_TYPE_ONE] 0 0] $score]
    }
    

    method setHighScore {abeClientInformation name score autoSubmit isLast} {
        [my jget gameBehavior] setHighScore $abeClientInformation [self] $name $score $autoSubmit $isLast
    }
    

    method setHighScore2 {abeClientInformation name score autoSubmit isLast} {
        set highScore [my createHighScore $score]
        set textBox [::HighScoreTextBox new [my jget highScoresFactoryInterface] [my jget highScoresHelper] $abeClientInformation [[my jget gameLayerManager] getGameInfo] [my getCustomCommandListener] $name $highScore [[my jget gameLayerManager] getBackgroundBasicColor] [[my jget gameLayerManager] getForegroundBasicColor]]
        if {$isLast} {
            [my getCustomCommandListener] commandAction [[::GameCommandsFactory::getInstance] jget SET_MENU_DISPLAYABLE] $textBox
        }
        if {$autoSubmit} {
            [::SecondaryThreadPool::getInstance] runTask [::SaveHighScoreRunnable new $isLast $textBox]
        }
    }
    

    method getGameStateTimeHelper {} {
        return [my jget gameStateTimeHelper]
    }
    

    method setInitialized {initialized} {
        my jset initialized $initialized
    }
    

    method isInitialized {} {
        return [my jget initialized]
    }
    

    method getSourceId {} {
        return [::AllBinaryGameCanvas::staticGet_id]
    }
    

    method setProgressPaintable {paintable} {
        my jset progressPaintable $paintable
    }
    

    method getStartIntermissionInterface {} {
        return [my jget startIntermissionInterface]
    }
    

    method getEndLevelIntermissionInterface {} {
        return [my jget endLevelIntermissionInterface]
    }
    

    method setTouchPaintableP {paintable} {
        my jset touchPaintable $paintable
    }
    

    method getTouchPaintableP {} {
        return [my jget touchPaintable]
    }
    

    method setEndGamePaintable {endGamePaintable} {
        my jset endGamePaintable $endGamePaintable
    }
    

    method getEndGamePaintable {} {
        return [my jget endGamePaintable]
    }
    

    method setIntermissionPaintable {intermissionPaintable} {
        my jset intermissionPaintable $intermissionPaintable
    }
    

    method getIntermissionPaintable {} {
        return [my jget intermissionPaintable]
    }
    

    method getEndGameInfoP {} {
        return [my jget endGameInfo]
    }
    

    method setHighScoresPaintable {highScoresPaintable} {
        my jset highScoresPaintable $highScoresPaintable
    }
    

    method getHighScoresPaintable {} {
        return [my jget highScoresPaintable]
    }
    

    method getRealHighScoresPaintable {} {
        return [my jget realHighScoresPaintable]
    }
    

    method clearPlayerGameInputList {} {
        set playerGameInput {}
        for {set index [jint [expr {[[my jget localPlayerGameInputList] size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set playerGameInput [[my jget localPlayerGameInputList] get $index]
            [my jget gameKeyEventHandler] removeListener $playerGameInput
        }
        [my jget localPlayerGameInputList] clear
    }
    

    method addPlayerGameInput {playerGameInput} {
        [my jget localPlayerGameInputList] add $playerGameInput
    }
    

    method setMenuInputProcessor {menuInputProcessor} {
        my jset menuInputProcessor $menuInputProcessor
    }
    

    method getMenuInputProcessor {} {
        return [my jget menuInputProcessor]
    }
    

    method getMenuForm {} {
        return [my jget menuForm]
    }
    

    method setMenuForm {menuForm} {
        my jset menuForm $menuForm
    }
    

    method getStartLevel {} {
        return [my jget startLevel]
    }
    

    method setStartLevel {startLevel} {
        my jset startLevel $startLevel
    }
    

    method setTouchButtonsPaintable {touchButtonsPaintable} {
        my jset touchButtonsPaintable $touchButtonsPaintable
    }
    

    method getTouchButtonsPaintable {} {
        return [my jget touchButtonsPaintable]
    }
    

    method setGameInputProcessor {gameInputProcessor} {
        my jset gameInputProcessor $gameInputProcessor
    }
    

    method getGameInputProcessor {} {
        return [my jget gameInputProcessor]
    }
    

    method setEndGameProcessor {endGameProcessor} {
        my jset endGameProcessor $endGameProcessor
    }
    

    method getEndGameProcessor {} {
        return [my jget endGameProcessor]
    }
    

    method setEndGameStatePaintable {endGameStatePaintable} {
        my jset endGameStatePaintable $endGameStatePaintable
    }
    

    method getEndGameStatePaintable {} {
        return [my jget endGameStatePaintable]
    }
    

    method setNonBotPaintableP {nonBotPaintable} {
        my jset nonBotPaintable $nonBotPaintable
    }
    

    method getNonBotPaintableP {} {
        return [my jget nonBotPaintable]
    }
    

    method setStartIntermissionPaintable {startIntermissionPaintable} {
        my jset startIntermissionPaintable $startIntermissionPaintable
    }
    

    method getStartIntermissionPaintable {} {
        return [my jget startIntermissionPaintable]
    }
    

    method setMainStateProcessor {mainStateProcessor} {
        my jset mainStateProcessor $mainStateProcessor
    }
    

    method getMainStateProcessor {} {
        return [my jget mainStateProcessor]
    }
    

    method setProcessGameProcessor {processGameProcessor} {
        my jset processGameProcessor $processGameProcessor
    }
    

    method getProcessGameProcessor {} {
        return [my jget processGameProcessor]
    }
    

    method setOpenMenuPaintable {openMenuPaintable} {
        my jset openMenuPaintable $openMenuPaintable
    }
    

    method getOpenMenuPaintable {} {
        return [my jget openMenuPaintable]
    }
    

    method setPopupMenuInputProcessor {popupMenuInputProcessor} {
        my jset popupMenuInputProcessor $popupMenuInputProcessor
    }
    

    method getPopupMenuInputProcessor {} {
        return [my jget popupMenuInputProcessor]
    }
    

    method getSensorGameUpdateProcessor {} {
        return [my jget sensorGameUpdateProcessor]
    }
    

    method getRawGameInputProcessor {} {
        return [my jget rawGameInputProcessor]
    }
    

    method getRawInputProcessor {} {
        return [my jget rawInputProcessor]
    }
    

    method setInputProcessor {inputProcessor} {
        my jset inputProcessor $inputProcessor
    }
    

    method getInputProcessor {} {
        return [my jget inputProcessor]
    }
    

    method setMenuPaintable {menuPaintable} {
        my jset menuPaintable $menuPaintable
    }
    

    method getMenuPaintable {} {
        return [my jget menuPaintable]
    }
    

    method setFormPaintable {formPaintable} {
        my jset formPaintable $formPaintable
    }
    

    method getFormPaintable {} {
        return [my jget formPaintable]
    }
    

    method setGameSpecificPaintableP {gameSpecificPaintable} {
        my jset gameSpecificPaintable $gameSpecificPaintable
    }
    

    method getGameSpecificPaintableP {} {
        return [my jget gameSpecificPaintable]
    }
    

    method isSingleThread {} {
        return [expr {[[::OpenGLFeatureUtil::getInstance] isAnyThreed] || [::SWTUtil::staticGet_isSWT]}]
    }
    

    method isRunningInAnotherThread {} {
        set features [::Features::getInstance]
        set openGLFeatureFactory [::OpenGLFeatureFactory::getInstance]
        if {[$features isDefault [$openGLFeatureFactory jget OPENGL_AS_GAME_THREAD]]} {
            return true
        } else {
            return [my isRunning]
        }
    }
    

    method getType {} {
        return [::AllBinaryGameCanvas::staticGet_TYPE]
    }
    

    method getTitle {} {
        return [next]
    }
    

    method isPaused {} {
        return [next]
    }
}

namespace eval ::AllBinaryGameCanvas {
    variable idValue {}
    variable idSet 0
    proc staticGet_id {} {
        variable idValue
        variable idSet
        if {!$idSet} {
            set idSet 1
            set idValue 0
        }
        return $idValue
    }
    proc staticSet_id {value} {
        variable idValue
        variable idSet
        set idSet 1
        set idValue $value
    }
    variable TYPEValue {}
    variable TYPESet 0
    proc staticGet_TYPE {} {
        variable TYPEValue
        variable TYPESet
        if {!$TYPESet} {
            set TYPESet 1
            set TYPEValue 2
        }
        return $TYPEValue
    }
    proc staticSet_TYPE {value} {
        variable TYPEValue
        variable TYPESet
        set TYPESet 1
        set TYPEValue $value
    }
}


