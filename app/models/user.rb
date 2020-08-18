class User < ApplicationRecord
    belongs_to :field
    has_many :credentials
    has_many :questions
    has_many :answers, through: questions
    validates :username, presence: true
    validates :password_digest, length: { minimum: 9}
end
