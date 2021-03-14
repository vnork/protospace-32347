class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :profile, :occupation, :position, presence: true

  has_many :prototype, dependent: :destroy
  has_many :comment, dependent: :destroy
end
