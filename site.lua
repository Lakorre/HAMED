local MenuSize = vec2(600, 350)
local MenuStartCoords = vec2(500, 500) 

local TabsBarWidth = 0
local SectionsPadding = 10
local MachoPaneGap = 10

-- حساب عرض القسم الوحيد ليأخذ المساحة المتاحة كاملة
local EachSectionWidth = MenuSize.x - (SectionsPadding * 2)

local SectionOneStart = vec2(TabsBarWidth + SectionsPadding, SectionsPadding + MachoPaneGap)
local SectionOneEnd = vec2(SectionOneStart.x + EachSectionWidth, MenuSize.y - SectionsPadding)

-- إنشاء النافذة الرئيسية
MenuWindow = MachoMenuWindow(MenuStartCoords.x, MenuStartCoords.y, MenuSize.x, MenuSize.y)

MachoMenuSetAccent(MenuWindow, 137, 52, 235)

-- القسم الوحيد
FirstSection = MachoMenuGroup(MenuWindow, "Main Section", SectionOneStart.x, SectionOneStart.y, SectionOneEnd.x, SectionOneEnd.y)

-- إضافة بعض العناصر كمثال داخل القسم الوحيد
MenuSliderHandle = MachoMenuSlider(FirstSection, "Slider", 10, 0, 100, "%", 0, function(Value)
    print("Slider updated with value ".. Value)
end)

InputBoxHandle = MachoMenuInputbox(FirstSection, "Input", "...")

MachoMenuButton(FirstSection, "Close", function()
    MachoMenuDestroy(MenuWindow)
end)
