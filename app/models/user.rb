class User < ApplicationRecord
    has_secure_password
    has_many :credentials
    has_many :credentialfields, through: :credentials, source: :field
    has_many :questions
    has_many :questionfields, through: :questions, source: :field
    has_many :answers
    has_many :answeredquestions, through: :answers, source: :question
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password_digest, length: { minimum: 9}
end
