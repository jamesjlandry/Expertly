class User < ApplicationRecord
    has_many :credentials
    has_many :fields, through: :credentials
    has_many :questions
    has_many :fields, through: :questions
    has_many :answers
    has_many :questions, through: :answers
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password_digest, length: { minimum: 9}
end
