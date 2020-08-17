class User < ApplicationRecord
    belongs_to :field
    has_many :credentials
    has_many :questions
    has_many :answers, through: question
end
