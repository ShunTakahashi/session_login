class Blog < ApplicationRecord
  belongs_to :user
  validates :title,presence: true
  validates :content, presence: true

  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

end
