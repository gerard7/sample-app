class User < ActiveRecord::Base
  validates :name, presence: true,
                   length: { minimum: 2,
                             maximum: 50
                           }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX },
                    length: { minimum: 4,
                              maximum: 255}
end
