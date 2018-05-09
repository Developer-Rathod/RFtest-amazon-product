*** Settings ***
Library         Selenium2Library
Resource        ../Variables/variables.robot
Resource        ../Locators/locators.robot


*** Keywords ***
Go To The Search Box
    input text    ${SearchBoxID}  ${SearchWord}
    click button  ${ButtonValue}
    wait until page contains  ${ListContains}

Select Product From List
    click link  ${linktoclick}
    wait until page contains  ${LinkPageContains}

Send Product To Cart
    click link  ${BasketID}
    click button  ${Checkout}
Begin Signin For Checkout
     input text  ${UserID}  ${Email}
     click button  ${Continue}
     input text  ${PasswordID} ${Password}




