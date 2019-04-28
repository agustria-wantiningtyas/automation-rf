*** Settings ***
Library         Selenium2Library
Resource        ../../../Resources/Web/e_Best_Seller/e_best_seller.robot
#Resource        ../../../Resources/Web/b_Home_page/a_dashboard_page.robot
Resource        ../../../Resources/Web/General/setting_browser.robot




*** Test Cases ***
Open Bukalapak page
        Given Open Bukalapak page

#Fill in sign in form With Valid data
       #when Fill in sign in form

#Click button Sign In
        #And click button sign in

#Dashboard page Bukalapak
        #Then home page
        #close browser

Go to Kupon Menu
        When Go to Kupon Menu

Coupon Best Seller
        And Coupon Best Seller

Back To Landing Page
        And Back To Landing Page

Lihat Semua Best Seller
        And Lihat Semua Best Seller

Coupon Detail
        And Coupon Detail

Back To Landing Page
        And Back To Landing Page
