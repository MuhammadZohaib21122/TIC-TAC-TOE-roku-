sub init()


    m.menuGroup = m.top.findNode("menuGroup")

    m.setting_menu = m.top.findNode("setting_menu")
    m.subscription_menu = m.top.findNode("subscription_menu")


    m.playBtnMenu = m.top.findNode("playBtnMenu")
    m.settingBtnMenu = m.top.findNode("settingBtnMenu")
    m.exitBtnMenu = m.top.findNode("exitBtnMenu")
    m.playBtnMenu.observeField("buttonSelected", "PlaybtnSelected")
    m.settingBtnMenu.observeField("buttonSelected", "SettingBtnSelected")
    m.exitBtnMenu.observeField("buttonSelected", "menuExit")

    m.ExitGroup = m.top.FindNode("ExitGroup")
    m.exitAppButton = m.top.findNode("exitButton")
    m.cancelExitDialogeButton = m.top.findNode("cancelExitButton")
    m.exitAppButton.observeField("buttonSelected", "exitButtonSelect")
    m.cancelExitDialogeButton.observeField("buttonSelected", "cancelExitDialoge")


    m.subscription_menu.setFocus(true)

    m.top.ObserveField("visible", "OnVisibleChange")


end sub

function PlaybtnSelected()
    m.top.getScene().callFunc("ShowGameScreen")
    ?"Play btn click"
end function


function cancelExitDialoge()
    m.ExitGroup.visible = false
    m.playBtnMenu.setFocus(true)

end function

sub exitButtonSelect()
    m.top.getScene().exitApp = true
end sub

sub OnVisibleChange()

    if m.top.visible = true
        ?"OnVisibleChange"
        m.playBtnMenu.setFocus(true)
    end if
end sub

function menuExit()

    m.ExitGroup.visible = true
    m.cancelExitDialogeButton.setFocus(true)

end function


function onKeyEvent(key as string, press as boolean) as boolean

    handled = false

    if press

        if key = "back"

            if m.menuGroup.visible = true

                m.ExitGroup.visible = true
                m.cancelExitDialogeButton.setFocus(true)

                handled = true

                ' else if m.ExitGroup.visible = true and m.cancelExitDialogeButton.hasFocus()
                '     m.ExitGroup.visible = false
                '     m.playBtnMenu.setFocus(true)

                '     handled = true

            end if
        end if

        if key = "right"

            if m.cancelExitDialogeButton.hasFocus()

                m.cancelExitDialogeButton.setFocus(false)
                m.exitAppButton.setFocus(true)

                handled = true

                else if  m.subscription_menu.hasFocus()

                    m.subscription_menu.setFocus(false)
                    m.playBtnMenu.setFocus(true)

                    handled = true

                else if  m.playBtnMenu.hasFocus()

                    m.playBtnMenu.setFocus(false)
                    m.setting_menu.setFocus(true)

                    handled = true

            end if
        end if

        if key = "left"

            if m.exitAppButton.hasFocus()

                m.exitAppButton.setFocus(false)
                m.cancelExitDialogeButton.setFocus(true)

                handled = true

                else if m.setting_menu.hasFocus()

                    m.setting_menu.setFocus(false)
                    m.playBtnMenu.setFocus(true)

                    handled = true

                else if m.playBtnMenu.hasFocus()

                    m.playBtnMenu.setFocus(false)
                    m.subscription_menu.setFocus(true)

                    handled = true

                ' else if m.setting_menu.hasFocus()

                '     m.setting_menu.setFocus(false)
                '     m.playBtnMenu.setFocus(true)

                '     handled = true

            end if
        end if

        if key = "up"

            if m.exitBtnMenu.hasFocus()

                m.exitBtnMenu.setFocus(false)
                m.settingBtnMenu.setFocus(true)

                handled = true

            else if m.settingBtnMenu.hasFocus()

                m.settingBtnMenu.setFocus(false)
                m.playBtnMenu.setFocus(true)

                handled = true

            end if
        end if


        if key = "down"

            if m.playBtnMenu.hasFocus()

                m.playBtnMenu.setFocus(false)
                m.settingBtnMenu.setFocus(true)

                handled = true

            else if m.settingBtnMenu.hasFocus()

                m.settingBtnMenu.setFocus(false)
                m.exitBtnMenu.setFocus(true)

                handled = true

            else if m.setting_menu.hasFocus()

                m.setting_menu.setFocus(false)
                m.playBtnMenu.setFocus(true)

                handled = true

            else if m.subscription_menu.hasFocus()

                m.subscription_menu.setFocus(false)
                m.playBtnMenu.setFocus(true)

                handled = true

            end if
        end if


    end if
    return handled

end function