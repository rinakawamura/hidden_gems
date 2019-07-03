class Location < ApplicationRecord
    has_many :visits
    has_many :users, through: :visits
    belongs_to :country

    validates :name, :description, :country_id, presence:true
    validates :description, length: {maximum: 50}

    def owner
        User.all.find(self.user_id)
    end

    # def top_five_locations
    #   self.users.sort_by do |user|
    #     self.users.count(user.id)
    #   end.uniq[0..5]
    # end
    def fav_users
        Favorite.all.select do |fav|
            fav.location == self
        end.map do |fav|
            User.find(fav.user_id).full_name
        end
    end

    def favorite?(user_id)
        Favorite.find_by(user_id: user_id, location: self)
    end
end
