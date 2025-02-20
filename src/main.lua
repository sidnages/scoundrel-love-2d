local function requireDirectory(dir)
    dir = dir or ""
    local entities = love.filesystem.getDirectoryItems(dir)

    for k, ents in ipairs(entities) do
        local trim = string.gsub(ents, ".lua", "")
        require(dir .. "/" .. trim)
    end
end

function love.load()
    Object = require "lib/classic"
    requireDirectory "lib"
    requireDirectory "constants"
    requireDirectory "interface"
    requireDirectory "objects"
    requireDirectory "util"
    math.randomseed(os.time())

    Shuffle(Deck)
end

function love.update(dt)

end

function love.draw()
    Deck[0].draw(Deck[0], Position(100, 100, 2))
    Deck[1].draw(Deck[1], Position(300, 100, 2))
    Deck[2].draw(Deck[2], Position(500, 100, 2))
    Deck[3].draw(Deck[3], Position(700, 100, 2))
end