class User < ApplicationRecord

  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i.freeze

  validates :name, { presence: true }

  validates :email, { presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true }

end

