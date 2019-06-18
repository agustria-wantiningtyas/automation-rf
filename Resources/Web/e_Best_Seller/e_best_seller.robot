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
#${coupon_best_seller}        //*[@id="js-coupon-deals-user-app"]/div/div/div/div[1]/div[1]/div/div/div[2]/h1
#${coupon_best_seller_text}   Voucher Digital Ancol Entrance Gate
${lihat_semua}               //*[@id="js-coupon-deals-user-app"]/div[2]/section[2]/div[1]/a
#${semua_kupon}               //*[@id="js-coupon-deals-user-app"]/div/nav/div/ul/li[2]/a/span
#${semua_kupon_text}          Semua Kupon
${result}                    xpath=//*[@id="reskinned_page"]/div[4]/div/div[1]/div/section/div[1]/div/div/div[1]/h1
${result_text}               Hasil Pencarian “oyo”
${detail}                    //*[@id="reskinned_page"]/div[4]/div/div[1]/div/section/div[2]/div/div[2]/section/div/div[1]/a/div[2]/div[1]/h3
#${detail_result}             //*[@id="reskinned_page"]/div[4]/div/div[1]/div/div/div/div[1]/div[1]/div/div/div[2]/h1
#${detail_result_text}        Voucher Digital Bakmi Naga Rp. 250.000
${tnc}                       //*[@id="coupon-deal-detail-term-and-condition"]
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
    sleep                            2s
    Click Element                    ${kupon1}

Coupon Best Seller
    sleep                            2s
    Click Element                    ${pilih_kupon}
    Click Element                    ${tnc}
    #wait until element contains      ${coupon_best_seller}       ${coupon_best_seller_text}

#Lihat Semua Best Seller
#    sleep                          3s
#    Click Element                  ${lihat_semua}
#    wait until element contains    ${semua_kupon}       ${semua_kupon_text}

#Coupon Detail
#    sleep                           3s
#    Click Element                   ${detail}
    #wait until element contains     ${detail_result}    ${detail_result_text}

Back To Landing Page
    sleep                           2s
    Click Element                   ${back_to_landing_page}


