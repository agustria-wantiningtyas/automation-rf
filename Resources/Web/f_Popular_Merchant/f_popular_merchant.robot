*** Setting ***
Library     Selenium2Library
Library     Dialogs


*** Variables ***

${signin_menu}               //*[@id="login_link"]
${email}                     //*[@id="user_session_username"]
${password}                  //*[@id="user_session_password"]
${button_masuk}              //*[@id="new_user_session"]/div[1]/div[5]/button[3]
${logo}                         xpath=//*[@id="reskinned_page"]/header/div[1]/div/div/div[1]/div/div[1]/h1
${text_logo}                    Bukalapak

${logo}                      xpath=//*[@id="reskinned_page"]/header/div[1]/div/div/div[1]/div/div[1]/h1
${text_logo}                 Bukalapak
${e_voucher}                 //*[@id="reskinned_page"]/header/div[2]/div/div/div[1]/div/ul/li[1]/a
${kupon}                     //*[@id="reskinned_page"]/div[4]/div[2]/div[2]/nav/a[12]/div[2]
${merchant}                  //*[@id="js-coupon-deals-user-app"]/div[2]/section[3]/nav/div[1]/a
${lihat_semua}               //*[@id="js-coupon-deals-user-app"]/div[2]/section[3]/div/a
${semua_merchant}            xpath=//*[@id="js-coupon-deals-user-app"]/div[2]/section[3]/div/a
${semua_merchant_text}       Semua Merchant
${cari_merchant_field}       //*[@id="js-coupon-deals-user-app"]/div/div[1]/div/div/div[2]/div/div/input
${cari_merchant_key}         yoshinoya
${merchant_detail}           //*[@id="js-coupon-deals-user-app"]/div/div[2]/div/div/a

${back_to_landing_page}      //*[@id="reskinned_page"]/div[4]/div/div[1]/div/nav/div/ul/li[1]/a

#Anonym User
${logo1}                    xpath=//*[@id="normal_page"]/header/div[1]/div/div/div[1]/div/div[1]/h1/a
${text_logo1}               Bukalapak
${e_voucher1}               //*[@id="normal_page"]/header/div[2]/div/div/div[1]/div/ul/li[1]/a
${kupon1}                   //*[@id="reskinned_page"]/div[4]/div[2]/div[2]/nav/a[12]/div[2]




*** Keywords ***
Go to Kupon Menu
    sleep                            4s
    Click Element                    ${e_voucher1}
    sleep                            1s
    Click Element                    ${kupon1}

Popular Merchant
    sleep                            2s
    Click Element                    ${merchant}

Lihat Semua Merchant
    sleep                          3s
    Click Element                  ${lihat_semua}
    #wait until element contains    ${semua_merchant}       ${semua_merchant_text}

Cari Merchant
    sleep                           2s
    Click Element                   ${cari_merchant_field}
    Input Text                      ${cari_merchant_field}      ${cari_merchant_key}

Merchant Detail
    sleep                           2s
    Click Element                   ${merchant_detail}

Back To Landing Page
    sleep                           2s
    Click Element                   ${back_to_landing_page}

