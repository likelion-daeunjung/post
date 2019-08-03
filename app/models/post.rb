class Post < ApplicationRecord
    has_many :comments
    has_many :likes
    has_many :users, through: :likes
end
