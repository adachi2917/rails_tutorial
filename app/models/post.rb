class Post < ApplicationRecord

  validates :content, { presence: true, length: { maximum: 140 } }



  has_many :tag_maps, dependent: :destroy



  has_many :tags, through: :tag_maps



  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :tag_maps

end
