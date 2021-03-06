class Post < ApplicationRecord
  belongs_to :user

  has_many :arts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reactions, -> { order(created_at: :desc) }, dependent: :destroy

  accepts_nested_attributes_for :arts
end
