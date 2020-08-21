class Question < ApplicationRecord
    belongs_to :user
    belongs_to :field
    has_many :answers
    has_many :users, through: :answers
end
