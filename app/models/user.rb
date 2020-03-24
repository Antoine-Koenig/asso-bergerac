class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
has_many :societies
has_many :actualities

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
