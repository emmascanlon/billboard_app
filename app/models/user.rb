class User < ApplicationRecord
  has_many :billboards
  has_many :artists
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
