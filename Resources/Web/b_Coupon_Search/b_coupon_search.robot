*** Setting ***
Library     Selenium2Library
Library     Dialogs
#Resource    ../b_Home_page/a_dashboard_page.robot


*** Variables ***
${logo}                      xpath=//*[@id="reskinned_page"]/header/div[1]/div/div/div[1]/div/div[1]/h1
${text_logo}                 Bukalapak
${e_voucher}                 //*[@id="reskinned_page"]/header/div[2]/div/div/div[1]/div/ul/li[1]/a
${kupon}                     //*[@id="reskinned_page"]/div[4]/div[2]/div[2]/nav/a[12]/div[2]
${cari_field}                //*[@id="reskinned_page"]/div[4]/div/div[1]/div[2]/div/div/form/div[1]/div/input
${cari_keyword}              Shirokuma
${cari_button}               //*[@id="reskinned_page"]/div[4]/div/div[1]/div[2]/div/div/form/div[3]/input
${result}                    xpath=//*[@id="reskinned_page"]/div[4]/div/div[1]/div/section/div[1]/div/div/div[1]/h1
${result_text}               Hasil Pencarian “Shirokuma”
${detail}                    //*[@id="reskinned_page"]/div[4]/div/div[1]/div/section/div[2]/div/div[2]/section/div/div/a/div[2]/div[1]/h3
${detail_result}             //*[@id="reskinned_page"]/div[4]/div/div[1]/div/div/div/div[1]/div[1]/div/div/div[2]/h1
${detail_result_text}        Voucher Digital Haagen Dazs Rp. 500.000
${back_to_landing_page}      //*[@id="reskinned_page"]/div[4]/div/div[1]/div/nav/div/ul/li[1]/a
#Akun Test
${uname}                     kotaromonami
${pass}                      enteraja

#Anonym User
${logo1}                    xpath=//*[@id="normal_page"]/header/div[1]/div/div/div[1]/div/div[1]/h1/a
${text_logo1}               Bukalapak
${e_voucher1}               //*[@id="normal_page"]/header/div[2]/div/div/div[1]/div/ul/li[1]/a
${kupon1}                   //*[@id="reskinned_page"]/div[4]/div[2]/div[2]/nav/a[12]/div[2]

#Login User
${e_voucher2}               //*[@id="reskinned_page"]/header/div[2]/div/div/div[1]/div/ul/li[1]/a
${kupon2}                   //*[@id="reskinned_page"]/div[4]/div[2]/div[2]/nav/a[12]/div[2]




*** Keywords ***
Go to Kupon Menu
    sleep                            5s
    Click Element                    ${e_voucher1}
    sleep                            3s
    Click Element                    ${kupon1}

Coupon Search
    sleep                            2s
    Click Element                    ${cari_field}
    Input Text                       ${cari_field}    ${cari_keyword}
    Click Element                    ${cari_button}
    sleep                            2s
    wait until element contains     ${result}    ${result_text}

Coupon Detail
    sleep                           2s
    Click Element                   ${detail}
    #wait until element contains     ${detail_result}    ${detail_result_text}

Back To Landing Page
    sleep                           2s
    Click Element                   ${back_to_landing_page}


#Login User
Login_Go to Kupon Menu
    sleep                            5s
    Click Element                    ${e_voucher2}
    sleep                            3s
    Click Element                    ${kupon2}

Login_Coupon Search
    sleep                            2s
    Click Element                    ${cari_field}
    Input Text                       ${cari_field}    ${cari_keyword}
    Click Element                    ${cari_button}
    sleep                            2s
    wait until element contains     ${result}    ${result_text}

Login_Coupon Detail
    sleep                           2s
    Click Element                   ${detail}
    #wait until element contains     ${detail_result}    ${detail_result_text}

Login_Back To Landing Page
    sleep                           2s
    Click Element                   ${back_to_landing_page}



