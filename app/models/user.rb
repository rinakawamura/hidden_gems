class User < ApplicationRecord
    has_secure_password
    has_many :visits
    has_many :locations, through: :visits
    belongs_to :user
    validates :first_name, :last_name, :email, presence: true
end
