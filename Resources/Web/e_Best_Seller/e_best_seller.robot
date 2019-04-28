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
${pilih_kupon}               //*[@id="js-coupon-deals-user-app"]/div[2]/section[2]/div[2]/div[1]/a/div[2]/div[1]/h3
${coupon_best_seller}        //*[@id="js-coupon-deals-user-app"]/div/div/div/div[1]/div[1]/div/div/div[2]/h1
${coupon_best_seller_text}   Voucher Digital Ancol Entrance Gate
${lihat_semua}               //*[@id="js-coupon-deals-user-app"]/div[2]/section[2]/div[1]/a
${semua_kupon}               //*[@id="js-coupon-deals-user-app"]/div/nav/div/ul/li[2]/a/span
${semua_kupon_text}          Semua Kupon
${result}                    xpath=//*[@id="reskinned_page"]/div[4]/div/div[1]/div/section/div[1]/div/div/div[1]/h1
${result_text}               Hasil Pencarian “oyo”
${detail}                    //*[@id="reskinned_page"]/div[4]/div/div[1]/div/section/div[2]/div/div[2]/section/div/div[1]/a/div[2]/div[1]/h3
${detail_result}             //*[@id="reskinned_page"]/div[4]/div/div[1]/div/div/div/div[1]/div[1]/div/div/div[2]/h1
${detail_result_text}        Voucher Digital Bakmi Naga Rp. 250.000
${back_to_landing_page}      //*[@id="reskinned_page"]/div[4]/div/div[1]/div/nav/div/ul/li[1]/a
#Akun Test
${uname}                     kotaromonami
${pass}                      enteraja

#Anonym User
${logo1}                    xpath=//*[@id="normal_page"]/header/div[1]/div/div/div[1]/div/div[1]/h1/a
${text_logo1}               Bukalapak
${e_voucher1}               //*[@id="normal_page"]/header/div[2]/div/div/div[1]/div/ul/li[1]/a
${kupon1}                   //*[@id="reskinned_page"]/div[4]/div[2]/div[2]/nav/a[12]/div[2]




*** Keywords ***
Fill in sign in form
    sleep                           5s
    Click Element                   ${signin_menu}
    Click Element                   ${email}

    Input Text                      ${email}         ${uname}
    Click Element                   ${password}
    Input Text                      ${password}         ${pass}

Click button Sign In
    click button                    ${button_masuk}

Home page
    sleep                           5s
    wait until element contains     ${logo1}    ${text_logo1}

Go to Kupon Menu
    sleep                            5s
    Click Element                    ${e_voucher1}
    sleep                            5s
    Click Element                    ${kupon1}

Coupon Best Seller
    sleep                            5s
    Click Element                    ${pilih_kupon}
    wait until element contains      ${coupon_best_seller}       ${coupon_best_seller_text}

Lihat Semua Best Seller
    sleep                          5s
    Click Element                  ${lihat_semua}
    wait until element contains    ${semua_kupon}       ${semua_kupon_text}

Coupon Detail
    sleep                           5s
    Click Element                   ${detail}
    wait until element contains     ${detail_result}    ${detail_result_text}

Back To Landing Page
    sleep                           5s
    Click Element                   ${back_to_landing_page}


#Login User
Home page Login User
    sleep                           5s
    wait until element contains     ${logo}    ${text_logo}

Go to Kupon Menu Login User
    sleep                            5s
    Click Element                    ${e_voucher}
    sleep                            5s
    Click Element                    ${kupon}


