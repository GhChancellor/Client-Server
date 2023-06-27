-----
----- Generated by EmmyLua(https://github.com/EmmyLua)
----- Created by lele.
----- DateTime: 16/03/23 17:44
-----

---@class CharacterObj

require("lib/BaseObject")
require("lib/PerkDetailsObj")
CharacterObj = BaseObject:derive("CharacterObj")

function CharacterObj:new()
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o.profession = ""
    o.weight = ""
    o.calories = ""
    o.perkDetails_LIST = {}
    o.traits_List = {}
    o.recipes_List = {}
    return o
end

---Current Character
---@param profession string
---@param perk PerkFactory.Perk
---@param level int
---@param xp float
function CharacterObj:currentCharacter(profession, perk, level, xp)
    self.profession = profession

    local PerkDetailsObj01 = PerkDetailsObj:new()
    PerkDetailsObj01:addPerkDetails(perk, level, xp)
end

---Add Perk Details ( in to list )
---@param perk PerkFactory.Perk
---@param level int
---@param xp double
function CharacterObj:addPerkDetails(perk, level, xp)
    local PerkDetailsObj01 = PerkDetailsObj:new()
    PerkDetailsObj01:addPerkDetails(perk, level, xp)

    table.insert(self.perkDetails_LIST, PerkDetailsObj01)
end

---Get Perk Details
---@return CharacterObj table - PerkFactory.Perk perk, int level, float xp
function CharacterObj:getPerkDetails()
    return self.perkDetails_LIST
end

---Add Trait
---@param recipe string
function CharacterObj:addRecipe(recipe)
    table.insert(self.recipes_List, recipe)
end

---Get recipes list
---@return CharacterObj table string
function CharacterObj:getRecipes()
    return self.recipes_List
end

---Add Trait
---@param trait String
function CharacterObj:addTrait(trait)
    table.insert(self.traits_List, trait)
end

---Get Traits list
---@return CharacterObj table string
function CharacterObj:getTraits()
    return self.traits_List
end

---Get object PerkDetailsObj
---@return PerkDetailsObj
function CharacterObj:getPerkDetailsObj()
    return PerkDetailsObj
end

---Set profession
---@param profession string
function CharacterObj:setProfession(profession)
    self.profession = profession
end

---Get profession
---@return string profession
function CharacterObj:getProfession()
    return self.profession
end

---Set calories
---@param calories double
function CharacterObj:setCalories(calories)
    self.calories = calories
end

---Get Calories
---@return double
function CharacterObj:getCalories()
    return self.calories
end

---Set Weight
---@param weight double
function CharacterObj:setWeight(weight)
    self.weight = weight
end

---Get Weight
---@return double weight
function CharacterObj:getWeight()
    return self.weight
end

