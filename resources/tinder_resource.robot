*** Keywords ***
Start test
    open browser  https://tinder.com/   chrome
    maximize browser window
    set browser implicit wait  5

End test
    close browser

Get started modal should be visible
    element should be visible  //div[@role = 'dialog']

Get started modal should be hidden
    element should not be visible  //div[@role = 'dialog']

Hide get started modal
    click button  //html[@id='Tinder']//div[@id='modal-manager']//div[@role='dialog']/button

Logo should be present
    page should contain element  //*[local-name() = 'svg'][1]

Login to tinder
    click button  //html[@id='Tinder']//div[@id='content']/div/div[@class='App__body H(100%) Pos(r) Z(0)']/div[@class='D(f) Fld(r) Flx($flx1) H(100%)']/main//div[@class='H(40px) Px(30px)']/button[@type='button']

Login with google
    ${status}   run keyword and ignore error  page should contain button    //html[@id='Tinder']//div[@id='modal-manager']/div/div[@role='dialog']/div/div/div/span/div/div[@class='My(10px) My(16px)--m']/button[@type='button']
    run keyword if  ${status} == 'FAIL'   click button  /html/body/div[2]/div/div/div/div/div[3]/span/button
    click button  //html[@id='Tinder']//div[@id='modal-manager']/div/div[@role='dialog']/div/div/div/span/div/div[@class='My(10px) My(16px)--m']/button[@type='button']
    @{windows}  get window handles
    select window  @{windows} [0]
    page should contain element  //*[@id="identifierId"]
    input text  //*[@id="identifierId"]     xxxxx@gmail.com
    click element  //*[@id="identifierNext"]//span
    page should contain element  //*[@id="password"]//input
    input text  //*[@id="password"]//input  578uhfjf
    select window  @{windows} [1]
    sleep   15
