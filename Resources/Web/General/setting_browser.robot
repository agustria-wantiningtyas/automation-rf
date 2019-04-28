*** Settings ***
Library         Selenium2Library
Library         Dialogs



*** Variables ***
#CHANGE IT WHEN NEEDED
${Browser}                          chrome  #ff  #ff, chrome, safari
${URL}                              https://www.bukalapak.com

*** Keywords ***
Open Bukalapak page
    set selenium speed              1s
    Open Browser                    ${URL}          ${Browser}
    set window size                 1450    800
    #wait until page contains        Isi Pulsa Kamu,
Open page "${PathURL}"
    go to                           ${PathURL}
    location should be              ${PathURL}