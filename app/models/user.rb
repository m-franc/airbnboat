class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :boats, dependent: :destroy
  has_many :reviews, dependent: :destroy

  # Validations
  validates :photo_profil, format: { with: /\Ahttps?:\/\/[^\s]+\z/i, allow_blank: true, message: "must be a valid URL to an image" }
end
