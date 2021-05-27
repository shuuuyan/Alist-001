class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: { maximum: 7 }, format: {with: /\A[a-zA-Z]+\z/ }
  has_many :alists
  has_many :comments
  has_many :likes

  def liked_by?(alist_id)
    likes.where(alist_id: alist_id).exists?
  end

  def self.guest
    find_or_create_by!(email: 'guest@test.com', name:'guest') do |user|   # ゲストログイン
      user.password = SecureRandom.urlsafe_base64
      # user.name = "guest" 
    end
  end
end