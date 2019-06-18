*** Setting ***
Library     Selenium2Library
Library     Dialogs
#Resource    ../b_Home_page/a_dashboard_page.robot


*** Variables ***
${signin_menu}               //*[@id="login_link"]
${email}                     //*[@id="user_session_username"]
${password}                  //*[@id="user_session_password"]
${button_masuk}              xpath=//*[@id="new_user_session"]/div[1]/div[5]/button
${logo}                         xpath=//*[@id="reskinned_page"]/header/div[1]/div/div/div[1]/div/div[1]/h1
${text_logo}                    Bukalapak
#Akun Test
${uname}                     agustriatyas.testdeal@gmail.com
${pass}                      qwerty123


*** Keywords ***
Fill in sign in form
    sleep                           5s
    Click Element                   ${signin_menu}
    Click Element                   ${email}

    Input Text                      ${email}            ${uname}
    Click Element                   ${password}
    Input Text                      ${password}         ${pass}

Click button Sign In
    click button                    ${button_masuk}

Home page
    sleep                           10s
    wait until element contains     ${logo}    ${text_logo}

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