class Product < ApplicationRecord

  has_many :comments
  validates :name, presence: true

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end

  def self.search(search_term)
    if Rails.env.production? # use "ilike" matching operator for postgres to ignore upper- and lower-case
      Product.where("name ilIKE ? OR colour iLike ? OR description iLike ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
    else
      Product.where("name LIKE ?", "%#{search_term}%")
    end
  end

end
