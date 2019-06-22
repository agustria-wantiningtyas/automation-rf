*** Settings ***
Library         Selenium2Library
Resource        ../../../Resources/Web/a_Login/a_login.robot
Resource        ../../../Resources/Web/b_Coupon_Search/b_coupon_search.robot
Resource        ../../../Resources/Web/h_Transaction/h_transaction.robot
#Resource        ../../../Resources/Web/b_Home_page/a_dashboard_page.robot
Resource        ../../../Resources/Web/General/setting_browser.robot


*** Test Cases ***
#Login
1. Open Bukalapak page
        Given Open Bukalapak page

2. Fill in sign in form with Valid data
        when a_Login.Fill in sign in form

3. Click button Sign In
        And a_Login.click button sign in

4. Dashboard page Bukalapak
        Then a_Login.home page

#Coupon Menu
5. Go to Kupon Menu
        And b_coupon_search.Login_Go to Kupon Menu

#Transaction
6. Normal Flow Transaction
        And Normal Flow Transaction


#Quick Buyer


