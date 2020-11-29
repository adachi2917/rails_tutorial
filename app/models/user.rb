class User < ApplicationRecord
    validates :name, {presence: true}
    validates :email, {presence: true, uniqueness: true}
    mailRegex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    email = "a@a.com"
    email.match? mailRegex
end
