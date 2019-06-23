*** Settings ***
Library         Selenium2Library
Resource        ../../../Resources/Web/a_Login/a_login.robot
Resource        ../../../Resources/Web/f_Popular_Merchant/f_popular_merchant.robot
Resource        ../../../Resources/Web/g_Filter/g_filter.robot
#Resource        ../../../Resources/Web/b_Home_page/a_dashboard_page.robot
Resource        ../../../Resources/Web/General/setting_browser.robot




*** Test Cases ***
1. Open Bukalapak page
        Given Open Bukalapak page

2. Go to Kupon Menu
        When g_Filter.Go to Kupon Menu

3. Lokasi Penukaran Filter
        And g_Filter.Lokasi Penukaran Filter

4. Rentang Harga Filter
        And g_Filter.Rentang Harga Filter

5. Category Filter
        And g_Filter.Category Filter

6. Merchant Filter
        And g_Filter.Merchant Filter

7. Back To Landing Page
        #And Back To Landing Page
        And f_popular_merchant.Back To Landing Page


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

#Lokasi Penukaran Filter
#        And Lokasi Penukaran Filter

#Rentang Harga Filter
#        And Rentang Harga Filter

#Category Filter
#        And Category Filter

#Merchant Filter
#        And Merchant Filter

#Urutkan
#        And Urutkan

#Back To Landing Page
#        And Back To Landing Page


