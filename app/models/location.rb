class Location < ApplicationRecord
    has_many :visits
    has_many :users, through: :visits
    belongs_to :country

    validates :name, :description, :country_id, presence:true
    validates :description, length: {maximum: 50}

    def owner 
        User.all.find(self.user_id)
    end
end
