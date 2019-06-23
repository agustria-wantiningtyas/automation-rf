*** Settings ***
Library         Selenium2Library
Resource        ../../../Resources/Web/a_Login/a_login.robot
Resource        ../../../Resources/Web/b_Coupon_Search/b_coupon_search.robot
#Resource        ../../../Resources/Web/b_Home_page/a_dashboard_page.robot
Resource        ../../../Resources/Web/General/setting_browser.robot




*** Test Cases ***
1. Open Bukalapak page
        Given Open Bukalapak page

2. Go to Kupon Menu
        When Go to Kupon Menu

3. Coupon Search
        And Coupon Search

4. Coupon Detail
        And Coupon Detail

5. Back To Landing Page
        And Back To Landing Page
