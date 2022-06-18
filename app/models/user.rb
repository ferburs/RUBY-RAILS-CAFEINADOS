class User < ApplicationRecord
  has_many :entradas
  has_one :profile, dependent: :destroy

  after_create :set_profile

  def set_profile
    self.profile = Profile.create()
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
