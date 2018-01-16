class State < ApplicationRecord
    enum state: {
        good: 0,
        nomal: 1,
        bad: 2
    }
end
