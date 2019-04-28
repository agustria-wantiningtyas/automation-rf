*** Settings ***
Library         Selenium2Library
Resource        ../../../Resources/Web/a_Login/a_login.robot
Resource        ../../../Resources/Web/c_Coupon_Search_by_Location/c_coupon_search_by_location.robot
#Resource        ../../../Resources/Web/b_Home_page/a_dashboard_page.robot
Resource        ../../../Resources/Web/General/setting_browser.robot




*** Test Cases ***
#Anonymouse User
Open Bukalapak page
        Given Open Bukalapak page

Go to Kupon Menu
        When Go to Kupon Menu

Coupon Search by Location
        And Coupon Search by Location

Coupon Detail
        And Coupon Detail

Back To Landing Page
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

#Coupon Search by Location
#        And Coupon Search by Location

#Coupon Detail
#        And Coupon Detail

#Back To Landing Page
#        And Back To Landing Page
