class Report < ApplicationRecord
    has_many :states
    has_many :users, through: :states
end
