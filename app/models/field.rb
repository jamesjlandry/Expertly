class Field < ApplicationRecord
    has_many :questions
    has_many :credentials
    has_many :users, through: :credentials
    has_many :users, through: :questions
end
