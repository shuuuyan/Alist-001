class Alist < ApplicationRecord
  validates :title, presence: true, length: { maximum: 13}
  validates :list1, :list2, :list3, presence: true, length: { maximum: 15}
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
end