class Manager < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :ques, dependent: :destroy
  has_many :services, through: :ques

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
