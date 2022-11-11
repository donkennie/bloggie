class Post < ApplicationRecord
  belongs_to :user
  # Active Storage from Rails 5
  has_one_attached :thumbnail
  has_one_attached :banner
  # Action Text from Rails 6
  has_rich_text :body

  validates :title, length: { minimum: 5 }
  
  validates :body,  length: { minimum: 25 }

  def optimized_image(x, y)
     self.thumbnail.variant(:thumb,  resize_to_fill: [x, y]).processed
  end
end
