class Favorite < ApplicationRecord
    has_many :comments, dependent: :destroy
end
