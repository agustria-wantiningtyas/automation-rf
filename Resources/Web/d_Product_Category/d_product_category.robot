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
#${cari_field}                //*[@id="reskinned_page"]/div[4]/div/div[1]/div[2]/div/div/form/div[1]/div/input
#${cari_keyword}              oyo
#${pilih_lokasi_button}       //*[@id="reskinned_page"]/div[4]/div/div[1]/div[2]/div/div/form/div[2]/select
#${lokasi}                    //*[@id="reskinned_page"]/div[4]/div/div[1]/div[2]/div/div/form/div[2]/select/option[2]
#${cari_button}               //*[@id="reskinned_page"]/div[4]/div/div[1]/div[2]/div/div/form/div[3]/input
${category}                 //*[@id="kategori-produk"]/nav/div[1]/a/div
${pilih_category}            xpath=//*[@id="js-coupon-deals-user-app"]/div/section/div[1]/div/div/div[1]/h1
${pilih_category_text}       Kategori “Makanan”
${gaya_hidup}                //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[3]/label[2]/span
${kecantikan}               //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[3]/label[3]/span
${liburan}                  //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[3]/label[4]/span
${makanan}                  //*[@id="js-coupon-deals-user-app"]/div/section/div[2]/div/div[1]/div/section[3]/label[1]/span
${result}                    xpath=//*[@id="reskinned_page"]/div[4]/div/div[1]/div/section/div[1]/div/div/div[1]/h1
${result_text}               Hasil Pencarian “oyo”
${detail}                    //*[@id="reskinned_page"]/div[4]/div/div[1]/div/section/div[2]/div/div[2]/section/div/div[1]/a/div[2]/div[1]/h3
#${detail_result}             //*[@id="reskinned_page"]/div[4]/div/div[1]/div/div/div/div[1]/div[1]/div/div/div[2]/h1
#${detail_result_text}        Voucher Digital Bakmi Naga Rp. 250.000
${back_to_landing_page}      //*[@id="reskinned_page"]/div[4]/div/div[1]/div/nav/div/ul/li[1]/a
${lihat_semua_kupon}         //*[@id="kategori-produk"]/div/a


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

Coupon Category
    sleep                            3s
    Click Element                    ${category}
    wait until element contains      ${pilih_category}       ${pilih_category_text}
    #sleep                            5s
    #Click Element                    ${lokasi}
    #Click Element                    ${cari_button}
    #sleep                            5s
    #wait until element contains     ${result}    ${result_text}

Filter Category
    sleep                           3s
    Click Element                   ${makanan}
    Click Element                   ${gaya_hidup}
    sleep                           1s
    Click Element                   ${gaya_hidup}
    Click Element                   ${kecantikan}
    sleep                           1s
    Click Element                   ${kecantikan}
    Click Element                   ${liburan}
    sleep                           1s
    Click Element                   ${liburan}
    Click Element                   ${makanan}

Coupon Detail
    sleep                           3s
    Click Element                   ${detail}
    #wait until element contains     ${detail_result}    ${detail_result_text}

Back To Landing Page
    sleep                           2s
    Click Element                   ${back_to_landing_page}

Lihat Semua Kupon
    sleep                           2s
    Click Element                   ${lihat_semua_kupon}



