sub init()
    m.boxGroup = m.top.findNode("boxGroup")

    m.box1 = m.top.findNode("box1")
    m.box2 = m.top.findNode("box2")
    m.box3 = m.top.findNode("box3")
    m.box4 = m.top.findNode("box4")
    m.box5 = m.top.findNode("box5")
    m.box6 = m.top.findNode("box6")
    m.box7 = m.top.findNode("box7")
    m.box8 = m.top.findNode("box8")
    m.box9 = m.top.findNode("box9")
    
    ' m.settingBtnMenu.observeField("buttonSelected", "SettingBtnSelected")    
    ' m.settingBtnMenu.observeField("buttonSelected", "SettingBtnSelected")    
    ' m.settingBtnMenu.observeField("buttonSelected", "SettingBtnSelected")    
    ' m.settingBtnMenu.observeField("buttonSelected", "SettingBtnSelected")    
    ' m.settingBtnMenu.observeField("buttonSelected", "SettingBtnSelected")    
    ' m.settingBtnMenu.observeField("buttonSelected", "SettingBtnSelected")    
    ' m.settingBtnMenu.observeField("buttonSelected", "SettingBtnSelected")    
    ' m.settingBtnMenu.observeField("buttonSelected", "SettingBtnSelected")    
    ' m.settingBtnMenu.observeField("buttonSelected", "SettingBtnSelected")

    m.box1.setFocus(true)

   
end sub




function onKeyEvent(key as string, press as boolean) as boolean

    handled = false

    if press

        if key = "back"
            m.top.getScene().callFunc("CloseScreen", invalid)

            ' if m.video.visible = false and m.buttons_list.visible = true

            '     m.top.getScene().callFunc("CloseScreen", invalid)
            '     ' m.BBGroup.visible=false
            '     handled = true



            ' else if m.video.visible = true and m.buttons_list.visible = true

            '     m.video.control = "stop"

            '     m.video.visible = false
            '     m.buttons_list.visible = true
            '     m.buttons_list.setFocus(true)
            '     handled = true

            ' else if m.video.visible = true


            '     m.buttons_list.visible = true
            '     m.buttons_list.setFocus(true)
            '     handled = true

            '     ' else if  m.SubscriptionGroup.visible = true

            '     '     m.SubscriptionGroup.visible = false
            '     '     m.video.visible = false
            '     '     m.BBGroup.visible = true
            '     '     m.B1.setFocus(true)
            '     '     handled = true

            ' end if
        end if

        if key = "right"

            if m.box1.hasFocus()

                m.box1.setFocus(false)
                m.box2.setFocus(true)

                handled = true

                else if  m.box2.hasFocus()

                    m.box2.setFocus(false)
                    m.box3.setFocus(true)

                    handled = true

                else if  m.box4.hasFocus()

                    m.box4.setFocus(false)
                    m.box5.setFocus(true)

                    handled = true
                else if  m.box5.hasFocus()

                    m.box5.setFocus(false)
                    m.box6.setFocus(true)

                    handled = true
                else if  m.box7.hasFocus()

                    m.box7.setFocus(false)
                    m.box8.setFocus(true)

                    handled = true
                else if  m.box8.hasFocus()

                    m.box8.setFocus(false)
                    m.box9.setFocus(true)

                    handled = true

            end if
        end if

        if key = "left"

            if m.box3.hasFocus()

                m.box3.setFocus(false)
                m.box2.setFocus(true)

                handled = true

                else if  m.box2.hasFocus()

                    m.box2.setFocus(false)
                    m.box1.setFocus(true)

                    handled = true

                else if  m.box6.hasFocus()

                    m.box6.setFocus(false)
                    m.box5.setFocus(true)

                    handled = true
                else if  m.box5.hasFocus()

                    m.box5.setFocus(false)
                    m.box4.setFocus(true)

                    handled = true
                else if  m.box9.hasFocus()

                    m.box9.setFocus(false)
                    m.box8.setFocus(true)

                    handled = true
                else if  m.box8.hasFocus()

                    m.box8.setFocus(false)
                    m.box7.setFocus(true)

                    handled = true

            end if
        end if

        if key = "up"

            if m.box7.hasFocus()

                m.box7.setFocus(false)
                m.box4.setFocus(true)

                handled = true

                else if  m.box4.hasFocus()

                    m.box4.setFocus(false)
                    m.box1.setFocus(true)

                    handled = true

                else if  m.box8.hasFocus()

                    m.box8.setFocus(false)
                    m.box5.setFocus(true)

                    handled = true
                else if  m.box5.hasFocus()

                    m.box5.setFocus(false)
                    m.box2.setFocus(true)

                    handled = true
                else if  m.box9.hasFocus()

                    m.box9.setFocus(false)
                    m.box6.setFocus(true)

                    handled = true
                else if  m.box6.hasFocus()

                    m.box6.setFocus(false)
                    m.box3.setFocus(true)

                    handled = true

            end if
        end if


        if key = "down"

            if m.box1.hasFocus()

                m.box1.setFocus(false)
                m.box4.setFocus(true)

                handled = true

                else if  m.box4.hasFocus()

                    m.box4.setFocus(false)
                    m.box7.setFocus(true)

                    handled = true

                else if  m.box2.hasFocus()

                    m.box2.setFocus(false)
                    m.box5.setFocus(true)

                    handled = true
                else if  m.box5.hasFocus()

                    m.box5.setFocus(false)
                    m.box8.setFocus(true)

                    handled = true
                else if  m.box3.hasFocus()

                    m.box3.setFocus(false)
                    m.box6.setFocus(true)

                    handled = true
                else if  m.box6.hasFocus()

                    m.box6.setFocus(false)
                    m.box9.setFocus(true)

                    handled = true

            end if
        end if
    end if

    return handled
end function