
require 'Dependencies'

function love.load()


end



function generateCards()
    gCards = {}

    for y = 1, CARDS_TALL do

        table.insert(gCards, {})

        for x = 1, CARDS_WIDE do
            table.insert(gCards[y], Card['elephant'], (x -1) * 100, )
        end
    end

end
