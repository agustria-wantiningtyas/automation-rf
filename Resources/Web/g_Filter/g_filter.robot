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
#${merchant}                  //*[@id="js-coupon-deals-user-app"]/div[2]/section[3]/nav/div[1]/a
#${lihat_semua}               //*[@id="js-coupon-deals-user-app"]/div[2]/section[3]/div/a
#${semua_merchant}            //*[@id="js-coupon-deals-user-app"]/div/div[1]/div/div/div[1]/h1/a
#${semua_merchant_text}       Semua Merchant
#${cari_merchant_field}       //*[@id="js-coupon-deals-user-app"]/div/div[1]/div/div/div[2]/div/div/input
#${cari_merchant_key}         yoshinoya
#${merchant_detail}           //*[@id="js-coupon-deals-user-app"]/div/div[2]/div/div/a
${cari_semua}                //*[@id="js-coupon-deals-user-app"]/div[2]/div/div/form/div[3]/input
${bandung}                   //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[1]/label[1]/span
${bekasi}                    //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[1]/label[2]/span
${bogor}                     //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[1]/label[3]/span
${min}                       //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[2]/form/div[1]/input
${min_key}                   1000
${max}                       //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[2]/form/div[2]/input
${max_key}                   50000
${terapkan}                  //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[2]/form/div[3]/button
${makanan}                   //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[3]/label[1]/span
${gaya_hidup}                //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[3]/label[2]/span
${kecantikan}                //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[3]/label[3]/span
${liburan}                   //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[3]/label[4]/span
${alfamart}                  //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[4]/div[3]/label[1]/span
${alfamart2}                 //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[4]/div[2]/label/span
${ancol}                     //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[4]/div[3]/label[2]/span
${ancol2}                    //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[4]/div[2]/label/span
${urutkan}                   xpath=//*[@id="coupon-deals__sort"]
${termurah}                  //*[@id="coupon-deals__sort"]/option[2]
${termahal}                  //*[@id="coupon-deals__sort"]/option[3]

${back_to_landing_page}      //*[@id="js-coupon-deals-user-app"]/div/nav/div/ul/li[1]/a/span
#Akun Test
${uname}                     kotaromonami
${pass}                      enteraja

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

Lokasi Penukaran Filter
    sleep                            3s
    Click Element                    ${cari_semua}
    Click Element                    ${bandung}
    sleep                            2s
    Click Element                    ${bandung}
    Click Element                    ${bekasi}
    sleep                            2s
    Click Element                    ${bekasi}
    Click Element                    ${bogor}
    sleep                            2s
    Click Element                    ${bogor}
    Click Element                    ${bandung}

Rentang Harga Filter
    sleep                          3s
    Click Element                  ${min}
    Input Text                     ${min}   ${min_key}
    Click Element                  ${max}
    Input Text                     ${max}   ${max_key}
    Click Element                  ${terapkan}

Category Filter
    sleep                           3s
    Click Element                   ${makanan}
    sleep                           2s
    Click Element                   ${makanan}
    Click Element                   ${gaya_hidup}
    sleep                           2s
    Click Element                   ${gaya_hidup}
    Click Element                   ${kecantikan}
    sleep                           2s
    Click Element                   ${kecantikan}
    Click Element                   ${liburan}
    sleep                           2s
    Click Element                   ${liburan}
    Click Element                   ${makanan}

Merchant Filter
    sleep                           3s
    Click Element                   ${alfamart}
    sleep                           2s
    Click Element                   ${alfamart2}
    Click Element                   ${ancol}
    sleep                           2s
    Click Element                   ${ancol2}

Urutkan
    sleep                           5s
    Click Element                   ${urutkan}
    Click Element                   ${termurah}
    sleep                           2s
    Click Element                   ${termahal}

Back To Landing Page
    sleep                           3s
    Click Element                   ${back_to_landing_page}



