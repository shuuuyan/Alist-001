class Alist < ApplicationRecord

  validates :list1, presence: true
  validates :list2, presence: true 
  validates :list3, presence: true 

  belongs_to :user
  has_many :comments, dependent: :destroy
end