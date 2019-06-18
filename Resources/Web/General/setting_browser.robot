*** Settings ***
Library         Selenium2Library
Library         Dialogs



*** Variables ***
#CHANGE IT WHEN NEEDED
${Browser}                          chrome  #ff  #ff, chrome, safari
${Prod_URL}                              https://www.bukalapak.com
${Staging_URL}                      http://www.staging13.vm

*** Keywords ***
Open Bukalapak page
    set selenium speed              1s
    Open Browser                    ${Prod_URL}          ${Browser}
    set window size                 1450    800


Open Staging Bukalapak page
    set selenium speed              1s
    Open Browser                    ${Prod_URL}          ${Browser}
    set window size                 1450    800

Open page "${PathURL}"
    go to                           ${PathURL}
    location should be              ${PathURL}