*** Settings ***
Library    Browser

*** Test Cases ***
Verify Tauri Greeting Flow
    New Browser    chromium
    New Page    http://localhost:1420/

    Fill Text    [data-testid="name-input"]    Rutuja
    Click        [data-testid="submit-btn"]

    ${msg}=    Get Text    [data-testid="greeting-msg"]

    Should Be Equal    ${msg}    Hello Rutuja

    Close Browser