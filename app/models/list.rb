class List < ApplicationRecord
  validates :title,presence: true
  validates :body,presence: true
  validates :image,presence: true
  has_one_attached :image

  def get_image
    if image.attached?
      image
    else
      'no_image'
    end
  end

end
