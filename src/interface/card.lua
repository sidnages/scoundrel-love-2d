Card = Object.extend(Object)

function Card.new(self, number, suit)
    self.number = number
    self.suit = suit
end

function Card.draw(self, position)
    local text = CARD_VALUE_STRINGS[self.number] .. CARD_SUIT_STRINGS[self.suit]
    love.graphics.print(text, position.x, position.y, 0, position.scale)
end