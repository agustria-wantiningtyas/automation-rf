*** Settings ***
Library         Selenium2Library
Resource        ../../../Resources/Web/a_Login/a_login.robot
Resource        ../../../Resources/Web/e_Best_Seller/e_best_seller.robot
#Resource        ../../../Resources/Web/b_Home_page/a_dashboard_page.robot
Resource        ../../../Resources/Web/General/setting_browser.robot




*** Test Cases ***
1. Open Bukalapak page
        Given Open Bukalapak page

2. Go to Kupon Menu
        When Go to Kupon Menu

3. Coupon Best Seller
        And Coupon Best Seller

4. Back To Landing Page
        And Back To Landing Page

#Login User
#Open Staging Bukalapak page
#        Given Open Staging Bukalapak page

#Fill in sign in form With Valid data
#        when Fill in sign in form

#Click button Sign In
#        And click button sign in

#Dashboard page Bukalapak
#        Then home page

#Go to Kupon Menu
#        When Go to Kupon Menu

#Coupon Best Seller
#        And Coupon Best Seller

#Back To Landing Page
#        And Back To Landing Page
