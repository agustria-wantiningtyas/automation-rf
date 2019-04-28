*** Settings ***
Library         Selenium2Library
Resource        ../../../Resources/Web/a_Login/a_login.robot
Resource        ../../../Resources/Web/d_Product_Category/d_product_category.robot
#Resource        ../../../Resources/Web/b_Home_page/a_dashboard_page.robot
Resource        ../../../Resources/Web/General/setting_browser.robot




*** Test Cases ***
#Anonymouse User
Open Bukalapak page
        Given Open Bukalapak page

Go to Kupon Menu
        When Go to Kupon Menu

Coupon Category
        And Coupon Category

Filter Category
        And Filter Category

Coupon Detail
        And Coupon Detail

Back To Landing Page
        And Back To Landing Page

Lihat Semua Kupon
        And Lihat Semua Kupon

Coupon Detail
        And Coupon Detail

Back To Landing Page
        Then Back To Landing Page


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

#Coupon Category
#        And Coupon Category

#Filter Category
#        And Filter Category

#Coupon Detail
#        And Coupon Detail

#Back To Landing Page
#        And Back To Landing Page