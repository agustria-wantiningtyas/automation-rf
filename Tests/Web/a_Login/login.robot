*** Settings ***
Library         Selenium2Library
Resource        ../../../Resources/Web/a_Login/a_login.robot
#Resource        ../../../Resources/Web/b_Home_page/a_dashboard_page.robot
Resource        ../../../Resources/Web/General/setting_browser.robot




*** Test Cases ***
Open Bukalapak page
        Given Open Bukalapak page

Fill in sign in form With Valid data
        when Fill in sign in form

Click button Sign In
        And click button sign in

Dashboard page Bukalapak
        Then home page
        #close browser
