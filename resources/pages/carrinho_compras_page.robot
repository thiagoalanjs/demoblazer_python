*** Settings ***
Resource    ../main.robot
*** Variables ***
${LINK_CART}              Cart
${LINK_PHONES}            Phones
${LINK_MOBILE}            Samsung galaxy s6
${LINK_ADD_CART}          Add to cart
${LINK_MONITORS}          Monitors
${LINK_ASUS}              ASUS Full HD
${LINK_LAPTOPS}           Laptops
${LINK_SONY}              Sony vaio i7
${ADD_ITEM_MSG}           Product added 
${GO_HOME}                Home
${LINE_1}                 xpath:/html/body/div[6]/div/div[1]/div/table/tbody/tr[1]/td[2]
${LINE_2}                 xpath:/html/body/div[6]/div/div[1]/div/table/tbody/tr[2]/td[2]
${LINE_3}                 xpath:/html/body/div[6]/div/div[1]/div/table/tbody/tr[3]/td[2]
${LINK_DELETE_1}          xpath://*[@id='tbodyid']/tr[1]/td[4]/a
${LINK_DELETE_2}          xpath://*[@id='tbodyid']/tr[2]/td[4]/a
${LINK_DELETE_3}          xpath://*[@id='tbodyid']/tr[3]/td[4]/a
${TOTAL_PRICE}            id:totalp

*** Keywords ***

Dado que adiciono um celular ao carrinho de compras 
    Sleep         3s
    Click Link    ${LINK_PHONES} 
    Sleep         3s
    Click Link    ${LINK_MOBILE} 
    Sleep         3s
    Click Link    ${LINK_ADD_CART}
    Handle Alert    accept
    Click Link    ${GO_HOME}
E adiciono um monitor ao carrinho de compras
    Sleep         3s
    Click Link    ${LINK_MONITORS} 
    Sleep         3s
    Click Link    ${LINK_ASUS}
    Sleep         3s 
    Click Link    ${LINK_ADD_CART}
    Handle Alert    accept
    Click Link    ${GO_HOME}
E adiciono um laptop ao carrinho de compras
    Sleep         3s
    Click Link    ${LINK_LAPTOPS} 
    Sleep         3s
    Click Link    ${LINK_SONY}
    Sleep         3s
    Click Link    ${LINK_ADD_CART}
    Handle Alert    accept
Então clico no link do carrinho de compras
    Click Link    ${LINK_CART}
E atualizo a página
    Reload Page
E removo o monitor ao carrinho de compras
   Sleep    2s 
   ${text1} =  Get Text  ${LINE_1}
   ${text2} =  Get Text  ${LINE_2}
   ${text3} =  Get Text  ${LINE_3}

   IF   $text1 == "ASUS Full HD"
       Click Link    ${LINK_DELETE_1}
   ELSE IF  $text2 == "ASUS Full HD"
       Click Link    ${LINK_DELETE_2}
   ELSE IF  $text3 == "ASUS Full HD"
       Click Link    ${LINK_DELETE_3}  
   END
Então verifico o valor total no carrinho de compras 
    Sleep    2s 
    ${text_price} =  Get Text  ${TOTAL_PRICE}
    Should Be Equal    ${text_price}    1150