class User < ApplicationRecord

  validates :name, { presence: true }



  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i.freeze



  validates :email, { presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true }

end

