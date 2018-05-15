*** Settings ***
Library           Selenium2Library
Resource          ../Variables/variables.robot
Resource          ../Locators/locators.robot

*** Keywords ***
Go To The Search Box
    input text    ${SearchBoxID}    ${SearchWord}
    click button    ${ButtonValue}
    wait until page contains    ${ListContains}

Select Product From List
    click link    ${LinkToClick}
    wait until page contains    ${LinkPageContains}

Send Product To Cart
    ${CartElement} = Get Webelement   ${WishIdD}
    log ${CartElement}
    run keyword if ${CartElement} == ${WishID} Click Add To Wish List
    ... Else Click Add To Basket
Click Add To Wish List
    click eClement    ${WishID}
    click element    ${Checkout}
Click Add To Basket
    click eClement    ${BasketID}
    click element    ${Checkout}




Begin Signin For Checkout
    input text    ${UserID}    ${Email}
    click button    ${Continue}
    input text    ${PasswordID} ${Password}
