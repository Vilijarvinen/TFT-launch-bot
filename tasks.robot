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
    Sleep    40s
    Run Keyword and continue on failure    Find Element    alias:Play
    Run Keyword and continue on failure    RPA.Desktop.Click    alias:Play
    Sleep    2s
    Run Keyword and continue on failure    Find Element    alias:Tft
    Run Keyword and continue on failure    RPA.Desktop.Click    alias:Tft
    Sleep    2s
    Run Keyword and continue on failure    Find Element    alias:ranked
    Run Keyword and continue on failure    RPA.Desktop.Click    alias:ranked
    Sleep    2s
    Run Keyword and continue on failure    Find Element    alias:confirm
    Run Keyword and continue on failure    RPA.Desktop.Click    alias:confirm
    Sleep    5s
    Find Element    alias:findmatch
    RPA.Desktop.Click    alias:findmatch
    Sleep    2s

Press Accept
    Find Element    alias:Accepty
    RPA.Desktop.Click    alias:Accepty

We Wait
    Wait Until Keyword Succeeds    5000x    5s    Press Accept