class Field < ApplicationRecord
    has_many :users
    has_many :questions
    has_many :answers
    has_many :credentials
end
