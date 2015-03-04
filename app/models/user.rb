class User < ActiveRecord::Base
  validates :name, presence: true,
                   length: { minimum: 2,
                             maximum: 50
                           }

  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    length: { minimum: 4,
                              maximum: 255}
end
