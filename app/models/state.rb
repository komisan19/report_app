class State < ApplicationRecord
  belongs_to :report
  belongs_to :user
  enum state: {
      good: 0,
      nomal: 1,
      bad: 2
  }
end
