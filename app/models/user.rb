class User < ApplicationRecord
    has_secure_password
    has_many :visits
    has_many :locations, through: :visits


    validates :first_name, :last_name, :email, presence: true

    def added_locations
        Location.all.select do |loc|
            loc.user_id == self.id
        end
    end

<<<<<<< HEAD
    def full_name
      [first_name, last_name].reject(&:blank?).join(' ').titleize
=======
  def full_name
    [first_name, last_name].reject(&:blank?).join(' ').titleize
  end

  def fav_locations
    Favorite.all.select do |fav|
        fav.user == self
    end.map do |fav|
        Location.find(fav.location_id)
>>>>>>> df156801211761922b29e2cf1127ec78a5f7c903
    end
  end

end

