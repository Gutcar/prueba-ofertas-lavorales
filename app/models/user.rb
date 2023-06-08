class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :job_offers
  has_one_attached :avatar

  def admin?
    admin
  end

  def to_s
    self.name
  end
end
