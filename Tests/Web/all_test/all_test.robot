*** Settings ***
Library         Selenium2Library
#Resource        ../../../Resources/Web/All_Test/all_test.robot
Resource        ../../../Resources/Web/General/setting_browser.robot
Resource        ../../../Resources/Web/a_Login/a_login.robot
Resource        ../../../Resources/Web/b_Coupon_Search/b_coupon_search.robot
Resource        ../../../Resources/Web/c_Coupon_Search_by_Location/c_coupon_search_by_location.robot
Resource        ../../../Resources/Web/d_Product_Category/d_product_category.robot
Resource        ../../../Resources/Web/e_Best_Seller/e_best_seller.robot
Resource        ../../../Resources/Web/f_Popular_Merchant/f_popular_merchant.robot
Resource        ../../../Resources/Web/g_Filter/g_filter.robot
Resource        ../../../Resources/Web/h_Transaction/h_transaction.robot




*** Test Cases ***
#Login
1a. Open Bukalapak page
        Given Open Bukalapak page

1b. Login - Fill in sign in form With Valid data
        when a_login.Fill in sign in form

1c. Login - Click button Sign In
        And a_login.click button sign in

1d. Login - Dashboard page Bukalapak
        Then a_login.home page

#Coupon Search
2a. Coupon Search - Go to Kupon Menu
        And b_coupon_search.Login_Go to Kupon Menu

2b. Coupon Search - Search "Shirokuma"
        And b_coupon_search.Login_Coupon Search

2c. Coupon Search - Coupon Detail
        And b_coupon_search.Login_Coupon Detail

2d. Coupon Search - Back To Landing Page
        And b_coupon_search.Login_Back To Landing Page

#Coupon Search by Location
3a. Coupon Search by Location - Coupon Search by Location
        And c_coupon_search_by_location.Coupon Search by Location

3b. Coupon Search by Location - Coupon Detail
        And c_coupon_search_by_location.Coupon Detail

3c. Coupon Search by Location - Back To Landing Page
        And c_coupon_search_by_location.Back To Landing Page

#Product Category
4a. Product Category - Search Coupon by Category
        And d_product_category.Coupon Category

4b. Product Category - Filter Category
        And d_product_category.Filter Category

4c. Product Category - Coupon Detail
        And d_product_category.Coupon Detail

4d. Product Category - Back To Landing Page
        And d_product_category.Back To Landing Page

#Best Seller
5a. Best Seller - Coupon Best Seller
        And e_best_seller.Coupon Best Seller

5b. Best Seller - Landing Page (Best Seller)
        And e_best_seller.Back To Landing Page

#Popular Merchant
6a. Popular Merchant - Choose Popular Merchant
        And f_popular_merchant.Popular Merchant

6b. Popular Merchant - Back to Landing Page
        And f_popular_merchant.Back To Landing Page

#6c. Popular Merchant - Lihat Semua Merchant
#        And f_popular_merchant.Lihat Semua Merchant

#6d. Popular Merchant - Cari Merchant
#        And f_popular_merchant.Cari Merchant

#6e. Popular Merchant - Merchant Detail
#        And f_popular_merchant.Merchant Detail

#6f. Popular Merchant - Back To Landing Page
#        And f_popular_merchant.Back To Landing Page

#Filter
7a. Filter - Lokasi Penukaran Filter
        And g_filter.Lokasi Penukaran Filter

7b. Filter - Rentang Harga Filter
        And g_filter.Rentang Harga Filter

7c. Filter - Category Filter
        And g_filter.Category Filter

7d. Filter - Merchant Filter
        And g_filter.Merchant Filter

7e. Filter - Back To Landing Page
        And f_popular_merchant.Back To Landing Page
        #And g_filter.Back To Landing Page

#Transaction
8a. Transaction - Go To Coupon Menu
        And b_coupon_search.Login_Go to Kupon Menu

8b. Transaction - Create Transaction
        And h_transaction.Normal Flow Transaction