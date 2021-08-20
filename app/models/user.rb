class User < ApplicationRecord
  before_save{email.downcase!}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :name, presence: true,
            length: {maximum: Settings.validation.name_max}
  validates(:email, presence: true,
            length: {maximum: Settings.validation.email_max},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: true)

  has_secure_password
end
