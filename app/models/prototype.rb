class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comment, dependent: :destroy
  has_one_attached :image

  validates :title, :catchcopy, :concept, :image, presence: true
end

