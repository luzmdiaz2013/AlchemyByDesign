class Article < ApplicationRecord
  belongs_to :author
  has_many :authors
end
