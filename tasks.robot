*** Settings ***
Library    RPA.Desktop
Library    RPA.Images
Library    RPA.Windows


*** Tasks ***
Get into a game
    Open League and que
    We Wait

*** Keywords ***
Open League and que
    Windows Search    League of Legends
    Sleep    60s
    Find Element    alias:Play
    RPA.Desktop.Click    alias:Play
    Sleep    2s
    Find Element    alias:Tft
    RPA.Desktop.Click    alias:Tft
    Sleep    2s
    Find Element    alias:ranked
    RPA.Desktop.Click    alias:ranked
    Sleep    2s
    Find Element    alias:confirm
    RPA.Desktop.Click    alias:confirm
    Sleep    5s
    Find Element    alias:findmatch
    RPA.Desktop.Click    alias:findmatch
    Sleep    2s

Press Accept
    Find Element    alias:Accepty
    RPA.Desktop.Click    alias:Accepty

We Wait
    Wait Until Keyword Succeeds    5000x    5s    Press Accept