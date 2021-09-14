class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :name,        presences: true
         validates :profile,     presences: true
         validates :occupation,  presences: true
         validates :position,    presences: true
end
