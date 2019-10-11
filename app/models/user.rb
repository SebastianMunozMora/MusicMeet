class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  #has_many_attached :avatars
  #def thumbnail input
   # return self.avatar[input].variant(resize: '100x100!').processed
  #end
  has_many :signups
  has_many :practices, through: :signups
end
