class Book < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user

  def self.search(term)
    if term
      where('title LIKE ? OR description LIKE ? OR author LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%")
    else
      all
    end
  end
end
