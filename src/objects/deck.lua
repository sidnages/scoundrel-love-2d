Deck = {}
for i = 2, 14 do
    local index = 4 * (i - 2)
    Deck[index] = Card(i, HEARTS)
    Deck[index + 1] = Card(i, SPADES)
    Deck[index + 2] = Card(i, DIAMONDS)
    Deck[index + 3] = Card(i, CLUBS)
end