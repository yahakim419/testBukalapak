*** Variables ***
#Home
${address_Bukalapak}=    https://www.bukalapak.com/
${img_LogoBukalapak}=   //img[@class="sigil-logo-full"]
${btn_Login}=       //div[@class="bl-flex-item"]/div/a[2]

#Login
${input_id}=        user_identity_textfield
${btn_id}=      submit_button

${input_emaildaftar}=       //input[@class="bl-text-field__input"]
${input_password}=  input-password
${btn_submit_login}=       btn-login

${lbl_errorpass}=       //div[@class="bl-text-field has-value is-error"]//div[@class="bl-text-field__message"]/p
