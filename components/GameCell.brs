function init()
    m.cellBackground = m.top.findNode("cellBackground")
    m.cellValue = m.top.findNode("cellValue")
    m.top.observeField("value", "onValueChange")
    m.top.observeField("focusedChild", "onFocusChange")
end function

function onValueChange()
    m.cellValue.text = m.top.value
end function

function onFocusChange()
    if m.top.hasFocus() then
        m.cellBackground.color = "0x606060FF"
    else
        m.cellBackground.color = "0xFFFFFFFF"
    end if
end function

function onKeyEvent(key as string, press as boolean) as boolean
    if press then
        if key = "OK" and m.top.value = "" then
            scene = m.top.getScene()
            if not scene.gameOver then
                m.top.value = scene.currentPlayer
                return true
            end if
        else if key = "right" then
            nextIndex = m.top.cellIndex + 1
            if nextIndex mod 3 <> 0 then
                nextCell = m.top.getParent().findNode("cell" + nextIndex.toStr())
                if nextCell <> invalid then
                    nextCell.setFocus(true)
                    return true
                end if
            end if
        else if key = "left" then
            nextIndex = m.top.cellIndex - 1
            if (m.top.cellIndex mod 3) <> 0 then
                nextCell = m.top.getParent().findNode("cell" + nextIndex.toStr())
                if nextCell <> invalid then
                    nextCell.setFocus(true)
                    return true
                end if
            end if
        else if key = "down" then
            nextIndex = m.top.cellIndex + 3
            if nextIndex < 9 then
                nextCell = m.top.getParent().findNode("cell" + nextIndex.toStr())
                if nextCell <> invalid then
                    nextCell.setFocus(true)
                    return true
                end if
            end if
        else if key = "up" then
            nextIndex = m.top.cellIndex - 3
            if nextIndex >= 0 then
                nextCell = m.top.getParent().findNode("cell" + nextIndex.toStr())
                if nextCell <> invalid then
                    nextCell.setFocus(true)
                    return true
                end if
            end if
        end if
    end if
    return false
end function