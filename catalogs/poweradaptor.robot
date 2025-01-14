*** Settings ***
Resource                        ../resources/common.robot
Suite Setup                     Setup Browser
Suite Teardown                  End suite


*** Test Cases ***
PowerAdaptor

    # [Arguments]                 ${OHR}                      ${Name}                     ${SN}
    [Documentation]             Catalog - Power Adaptor
    Set Library Search Order    QWeb                        QNow                        QVision
    Service Portal              703329606                   ${neilpassword}
    SetConfig                   ShadowDOM                   true
    ClickText                   Search
    TypeText                    Search                      Power adaptor
    PressKey                    Search                      {ENTER}
    ClickText                   Service Catalog             anchor=Hardware Related Request
    ClickElement                xpath=//*[@id="s2id_sp_formfield_var_requested_for"]/a/span[2]/b
    WriteText                   750033986
    ClickText                   A Michael Creagh
    ClickElement                xpath=//*[@id="s2id_sp_formfield_please_select_reason_for_temp_power_adapter"]/a/span[2]/b
    ClickText                   Lost/Stolen
    ClickElement                xpath=//*[@id="s2id_sp_formfield_please_select_an_asset_for_which_temporary_adapter_is_required"]/a/span[2]/b
    # WriteText                   LT
    ClickText                   LT
    # PressKey                  {ENTER}
    # ClickText                   DELL
    Input Date                  Please specify the return date for the temporary asset                       100
    ClickElement                xpath=//*[@id="s2id_sp_formfield_please_select_pin_type"]/a/span[2]/b
    ClickText                   Round Pin (India Type)
    ClickText                   Submit
    ${RITM}                     GetText                     RITM
    Open RITM                   ${RITM}
    Approve
    Approve
