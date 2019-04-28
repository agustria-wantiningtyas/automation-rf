*** Settings ***
Library         Selenium2Library
Resource        ../../../Resources/Web/g_Filter/g_filter.robot
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

Lokasi Penukaran Filter
        And Lokasi Penukaran Filter

Rentang Harga Filter
        And Rentang Harga Filter

Category Filter
        And Category Filter

Merchant Filter
        And Merchant Filter

Urutkan
        And Urutkan

Back To Landing Page
        And Back To Landing Page
