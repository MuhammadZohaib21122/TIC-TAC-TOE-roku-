sub InitScreenStack()
    m.screenStack = []
end sub

sub ShowScreen(node as Object)
    ?"ShowScreen Function------------------"
    prev = m.screenStack.Peek() 
    if prev <> invalid
        prev.visible = false
         ?"ShowScreen prev.visible = false------------------"
    end if
    m.top.AppendChild(node) 
    ' show new screen
      ?"ShowScreen show new screen-----------------"
    node.visible = true
    node.SetFocus(true)
    m.screenStack.Push(node) 
end sub

sub CloseScreen(node as Object)
    ?"Close Screen Called"
    if node = invalid OR (m.screenStack.Peek() <> invalid AND m.screenStack.Peek().IsSameNode(node))
        last = m.screenStack.Pop() 
        last.visible = false 
        m.top.RemoveChild(last)
        ' take previous screen and make it visible
        prev = m.screenStack.Peek()
        if prev <> invalid
            prev.visible = true
            prev.SetFocus(true)
        end if
    end if
end sub

sub AddScreen(node as Object)
    m.top.AppendChild(node) 
    m.screenStack.Push(node)
end sub

sub ClearScreenStack()
    if m.screenStack.Count() > 1
        while m.screenStack.Count() > 1
            last = m.screenStack.Pop() 
            if last.visible = true
                last.visible = false 
            end if
            m.top.RemoveChild(last)
        end while
    else
        m.screenStack.Peek().visible = false 
    end if
end sub

function GetCurrentScreen()
    return m.screenStack.Peek()
end function

function IsScreenInScreenStack(node as Object) as Boolean
    ' check if screen stack contains specified node
    for each screen in m.screenStack
        result = screen.IsSameNode(node)
        if result = true
            return true
        end if
    end for
    return false
end function

sub onBtnBackSelected()
    CloseScreen(invalid)

end sub