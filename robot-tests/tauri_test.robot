*** Settings ***
Library    Browser

*** Variables ***
${URL}    http://localhost:1420/

*** Test Cases ***
Verify Tauri Greeting Flow
    New Browser    chromium
    New Page    ${URL}

    Fill Text    [data-testid="name-input"]    Rutuja
    Click        [data-testid="submit-btn"]

    ${msg}=    Get Text    [data-testid="greeting-msg"]
    Should Be Equal    ${msg}    Hello Rutuja

    Close Browser


Verify Application Launches
    New Browser    chromium
    New Page    ${URL}

    ${title}=    Get Text    h1
    Should Be Equal    ${title}    Tauri Robot Demo

    Close Browser


Verify Submit Button Is Disabled Initially
    New Browser    chromium
    New Page    ${URL}

    ${disabled}=    Get Property    [data-testid="submit-btn"]    disabled
    Should Be Equal    ${disabled}    ${True}

    Close Browser


Verify Submit Button Is Enabled After Entering Name
    New Browser    chromium
    New Page    ${URL}

    Fill Text    [data-testid="name-input"]    Rutuja

    ${disabled}=    Get Property    [data-testid="submit-btn"]    disabled
    Should Be Equal    ${disabled}    ${False}

    Close Browser

