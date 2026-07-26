local MenuSize = vec2(600, 350)
local MenuStartCoords = vec2(500, 500) 

local TabsBarWidth = 0
local SectionsPadding = 10
local MachoPaneGap = 10

local EachSectionWidth = MenuSize.x - (SectionsPadding * 2)

local SectionOneStart = vec2(TabsBarWidth + SectionsPadding, SectionsPadding + MachoPaneGap)
local SectionOneEnd = vec2(SectionOneStart.x + EachSectionWidth, MenuSize.y - SectionsPadding)

MenuWindow = MachoMenuWindow(MenuStartCoords.x, MenuStartCoords.y, MenuSize.x, MenuSize.y)

MachoMenuSetAccent(MenuWindow, 137, 52, 235)

FirstSection = MachoMenuGroup(MenuWindow, "Main Section", SectionOneStart.x, SectionOneStart.y, SectionOneEnd.x, SectionOneEnd.y)

InputBoxHandle = MachoMenuInputbox(FirstSection, "Input", "...")

MachoMenuButton(FirstSection, "Close", function()
    MachoMenuDestroy(MenuWindow)
end)
