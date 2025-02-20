function Shuffle(deck)
    print(#deck)
    for i = 0, #deck do
        print(i)
        local j = math.random(1, #deck)
        deck[i], deck[j] = deck[j], deck[i]
    end
end