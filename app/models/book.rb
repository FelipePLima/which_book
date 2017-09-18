class Book < ApplicationRecord
  belongs_to :user

  validates :title, :description , :author, presence: true
  validates :title, uniqueness: true

  mount_uploader :image, ImageUploader

  def self.search(term)
    if term
      where('title LIKE ? OR description LIKE ? OR author LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%")
    else
      all
    end
  end
end
