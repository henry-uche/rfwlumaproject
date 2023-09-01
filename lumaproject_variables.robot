*** Settings ***
Documentation    luma project related keywords


*** Variables ***
${URL}                      https://magento.softwaretestingboard.com/
${BROWSER}                  chrome
${HOMEPAGE_SIGNIN_LINK}     xpath:/html/body/div[2]/header/div[1]/div/ul/li[2]/a
${USERNAME_FEILD}           id:email
${PASSWORD_FEILD}           id:pass
${LOGIN_BTN}                id:send2
${LOGGEDIN_USERNAME}        Daniel Johnson
${LOGGEDIN_USERNAME2}       Bobby Flash
${VALID_LOGINEMAIL}         yryan@example.org
${VALID_LOGINEMAIL2}        bobby7762@gmail.com
${VALID_PASSWORD}           text123TEXT5zz
${VALID_PASSWORD2}          BXBXZK679ssrr
${INVALID_USERNAME2}        bobby7789@gmail.com
${INVALID_PASSWORD2}        BXBXLLYZ2696urs
${INVALID_PASSWORD3}        PEPXG222res
${INVALID_USERNAME4}        uchemaduuche23@gmail.com
${INVALID_PASSWORD4}        PEPXG222aa4
${CREATEACC_LINK}           xpath:/html/body/div[1]/header/div[1]/div/ul/li[3]/a
${FIRSTNAME_FIELD}          id:firstname
${LASTNAME_FIELD}           name:lastname
${EMAILADDR_NEWACT}         id:email_address
${CREATE_PASSWORD}          id:password
${CONFIRM_PASSWORD}         id:password-confirmation
${CREATENEWACC_LINK}        xpath:/html/body/div[1]/main/div[3]/div/form/div/div[1]/button
${USERACC_DROPDOWNLINK}     xpath:/html/body/div[1]/header/div[1]/div/ul/li[2]/span/button
${MYACCOUNT_LINK}           xpath:/html/body/div[1]/header/div[1]/div/ul/li[2]/div/ul/li[1]/a
${ADDRSBOOK_LINK}           xpath:/html/body/div[1]/main/div[2]/div[2]/div/div[2]/ul/li[6]/a
${TELEPHONE_NUM}            id:telephone
${STREET_ADDRS}             id:street_1
${CITY_TOWN}                name:city
${STATE_PROVINCE}           id:region_id
${COUNTRY}                  name:country_id
${ZIP_POSTAL CODE}          name:postcode
${SAVE_ADDRESS}             xpath:/html/body/div[1]/main/div[2]/div[1]/form/div/div[1]/button/span
${SIGNOUT_USERLINK}         xpath:/html/body/div[1]/header/div[1]/div/ul/li[2]/div/ul/li[3]/a
${CHANGEPASWORD_LINK}       class:action change-password
${CURRENT_PASSWORD}         name:current_password
${NEW_PASSWORD}             name:password
${CONFIRM_NEW_PASSWORD}     name:password_confirmation
${SAVE_NEW_PSW}             xpath:/html/body/div[1]/main/div[2]/div[1]/form/div/div[1]/button/span
${MENSWEAR_PAGE}            xpath:/html/body/div[1]/div[1]/div/div[2]/nav/ul/li[3]/a/span[2]
${WOMENWEAR_PAGE}           class:counter qty
${SEARCH_ITEMS}             id:search
${SELECT_PRODUCT}           xpath:/html/body/div[1]/main/div[4]/div[1]/div[1]/div[3]/div/div/ol/li[1]/div/a/span/span/img
${ITEM_M_SIZE}              id:option-label-size-143-item-168
${ITEM_QUANTITY}            name:qty
${ADD_TO_CART}              xpath:/html/body/div[1]/main/div[2]/div/div[1]/div[4]/form/div[2]/div/div/div[2]/button/span
${ITEM_COLOR}               id:option-label-color-93-item-52
${CART_LIST}                class:action showcart
${EDITCART_LIST}            class:action edit
${DELETECART_LIST}          class:action delete
${DELETECART_LIST}