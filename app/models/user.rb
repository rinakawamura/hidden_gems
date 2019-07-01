class User < ApplicationRecord
    has_secure_password
    has_many :visits
    has_many :locations, through: :visits
<<<<<<< HEAD
    belongs_to :user
=======
    validates :first_name, :last_name, :email, presence: true
>>>>>>> 511241cd10b72f8bc4bf9e7884e43f38645108e6
end
