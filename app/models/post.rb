class Post < ApplicationRecord

  validates :content, { presence: true, length: { maximum: 140 } }

  has_many :comments, dependent: :destroy

end
