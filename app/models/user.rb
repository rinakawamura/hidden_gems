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

    def full_name
      [first_name, last_name].reject(&:blank?).join(' ').titleize
    end

end
