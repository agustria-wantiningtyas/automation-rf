*** Settings ***
Library         Selenium2Library
Resource        ../../../Resources/Web/a_Login/a_login.robot
Resource        ../../../Resources/Web/b_Coupon_Search/b_coupon_search.robot
Resource        ../../../Resources/Web/h_Transaction/h_transaction.robot
#Resource        ../../../Resources/Web/b_Home_page/a_dashboard_page.robot
Resource        ../../../Resources/Web/General/setting_browser.robot


*** Test Cases ***
#Login
Open Bukalapak page
        Given Open Bukalapak page

Fill in sign in form With Valid data
        when a_login.Fill in sign in form

Click button Sign In
        And a_login.click button sign in

Dashboard page Bukalapak
        Then a_login.home page

#Coupon Menu
Login_Go to Kupon Menu (Coupon Search)
        And b_coupon_search.Login_Go to Kupon Menu

#Transaction
Normal Flow Transaction
        And Normal Flow Transaction


#Quick Buyer


