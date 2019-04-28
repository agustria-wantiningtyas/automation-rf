*** Setting ***
Library     Selenium2Library
Library     Dialogs
#Resource    ../b_Home_page/a_dashboard_page.robot


*** Variables ***
${signin_menu}               //*[@id="login_link"]
${email}                     //*[@id="user_session_username"]
${password}                  //*[@id="user_session_password"]
${button_masuk}              //*[@id="new_user_session"]/div[1]/div[5]/button[3]

${logo}                      xpath=//*[@id="reskinned_page"]/header/div[1]/div/div/div[1]/div/div[1]/h1
${text_logo}                 Bukalapak
${e_voucher}                 //*[@id="reskinned_page"]/header/div[2]/div/div/div[1]/div/ul/li[1]/a
${kupon}                     //*[@id="reskinned_page"]/div[4]/div[2]/div[2]/nav/a[12]/div[2]
#Akun Test
${uname}                     kotaromonami
${pass}                      enteraja


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
    wait until element contains     ${logo}    ${text_logo}

Go to Kupon Menu
    sleep                            5s
    Click Element                    ${e_voucher}
    sleep                            5s
    Click Element                    ${kupon}