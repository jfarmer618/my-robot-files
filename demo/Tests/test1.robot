*** Settings ***
Documentation  Demo tests
Library    SeleniumLibrary

*** Variables ***
${URL}  chrome
${SEARCH_RESULTS}  css:div #resultStats


*** Test Cases ***
My First Test
    [Tags]  hello  
    Log    Hello World!


My Second Test
    [Tags]  second
    [Documentation]    Log in to Google and perform a search
    Log              This is my 2nd test
    Open Browser     https://google.com    ${URL}
    Maximize Browser Window
    #Set Browser Implicit Wait    5
    Input Text       name:q    Robot
    #Press Keys       name:q    ESC
    Wait Until Element Is Visible    name:btnK
    Click Button    name:btnK
    Wait Until Page Contains    Robot - Wikipedia  timeout=5
    ${results}  Get Text    ${SEARCH_RESULTS}
    Log    Search Results: ${results}
    Element Should Contain    ${SEARCH_RESULTS}    About 1,700,000,000 results        
    #Sleep            5
    Close Browser
    
Another Test
    Log    Added another test
    Log    Jeff was here

My Third Test
    Log    This is the third test
    Log    Another comment
    
   
        
