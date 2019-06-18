*** Setting ***
Library     Selenium2Library
Library     Dialogs


*** Variables ***
#Anonym User
${logo1}                    xpath=//*[@id="normal_page"]/header/div[1]/div/div/div[1]/div/div[1]/h1/a
${text_logo1}               Bukalapak
${e_voucher1}               //*[@id="normal_page"]/header/div[2]/div/div/div[1]/div/ul/li[1]/a
${kupon1}                   //*[@id="reskinned_page"]/div[4]/div[2]/div[2]/nav/a[12]/div[2]

#Login User
${e_voucher2}               //*[@id="reskinned_page"]/header/div[2]/div/div/div[1]/div/ul/li[1]/a
${kupon2}                   //*[@id="reskinned_page"]/div[4]/div[2]/div[2]/nav/a[12]/div[2]

#Transaction
${choose_coupon}            //*[@id="js-coupon-deals-user-app"]/div[2]/section[2]/div[2]/div[1]/a/div[2]/div[1]/h3
${add_total}                //*[@id="js-coupon-deals-user-app"]/div/div/div/div[1]/div[2]/div/div/div[1]/div/div[2]/div/div[2]/div/div[2]/button
${beli_sekarang}            //*[@id="js-coupon-deals-user-app"]/div/div/div/div[1]/div[2]/div/div/div[1]/div/div[4]/div[2]/form/button/i
${payment_method}           //*[@id="js-iv-payment--atm"]/div/div[2]/div
${bayar}                    //*[@id="js-iv-action-wrapper-submit"]/button[1]
${lihat_tagihan}            //*[@id="reskinned_page"]/section/div/div/div[2]/div[3]/a
${Detail_Transaksi}         //*[@id="reskinned_page"]/div[4]/section/div/div[2]/h1
${Detail_Transaksi_text}    Detail Transaksi
${rincian}                  //*[@id="reskinned_page"]/div[4]/section/div/div[2]/div[2]/div[2]/div/div[1]/div/div[8]/div/div[2]/a



*** Keywords ***
Normal Flow Transaction
    sleep                            5s
    Click Element                    ${choose_coupon}
    Click Element                    ${add_total}
    sleep                            2s
    Click Element                    ${beli_sekarang}
    Click Element                    ${payment_method}
    Click Element                    ${bayar}
    sleep                            2s
    Click Element                    ${lihat_tagihan}
    sleep                            2s
    wait until element contains      ${Detail_Transaksi}    ${Detail_Transaksi_text}
    Click Element                    ${rincian}
