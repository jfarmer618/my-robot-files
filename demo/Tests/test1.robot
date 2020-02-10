*** Settings ***
Documentation  Demo tests
Library    SeleniumLibrary

*** Test Cases ***
My First Test
    Log    Hello World!


My Second Test
    [Documentation]    Log in to Google and perform a search
    Log              This is my 2nd test
    Open Browser     https://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text       name:q    Robot
    # Press Keys       name:q    ESC
    Click Element    name:btnK
    Sleep            5
    Close Browser
    
Another Test
    Log    Added another test
    
   
        
