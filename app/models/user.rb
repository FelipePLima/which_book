class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :books

  def change_admin
    if is_admin?
      update_attribute(:is_admin, false)
    else
      update_attribute(:is_admin, true)
    end
  end
end
