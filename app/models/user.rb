class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, uniqueness: false, length: { in: 2..20 }
  validates :university, uniqueness: false, length: { in: 2..20 }

  has_many :posts, dependent: :destroy
end
