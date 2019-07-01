class Location < ApplicationRecord
    has_many :visits
    has_many :users, through: :visits
    belongs_to :country
<<<<<<< HEAD

    validates :name, :description, :country_id, presence:true
=======
>>>>>>> 511241cd10b72f8bc4bf9e7884e43f38645108e6
end
