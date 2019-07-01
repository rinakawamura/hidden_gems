class Location < ApplicationRecord
    has_many :visits
    has_many :users, through: :visits
    belongs_to :country
end
