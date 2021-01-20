class Post < ApplicationRecord

  validates :content, { presence: true, length: { maximum: 140 } }

  has_many :comments, dependent: :destroy

  has_many :tags, through: :tag_maps

  has_many :tag_maps, dependent: :destroy
end
