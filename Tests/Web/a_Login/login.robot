*** Settings ***
Library         Selenium2Library
Resource        ../../../Resources/Web/a_Login/a_login.robot
#Resource        ../../../Resources/Web/b_Home_page/a_dashboard_page.robot
Resource        ../../../Resources/Web/General/setting_browser.robot




*** Test Cases ***
1. Open Bukalapak page
        Given Open Bukalapak page

2. Fill in sign in form with Valid data
        when Fill in sign in form

3. Click button Sign In
        And click button sign in

4. Dashboard page Bukalapak
        Then home page
        #close browser
