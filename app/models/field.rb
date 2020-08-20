class Field < ApplicationRecord
    has_many :questions
    has_many :credentials
    has_many :credentialusers, through: :credentials, source: :user
    has_many :questionusers, through: :questions, source: :user
end
