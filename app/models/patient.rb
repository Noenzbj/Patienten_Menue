class Patient < ApplicationRecord
  validates :first_name, presence: true, length: {minimum: 1, maximum: 50 }
  validates :last_name, presence: true, length: {minimum: 1, maximum: 50 }
  validates :station, presence: true

  def self.search_by(search_term)
    where("LOWER(first_name) LIKE :search_term", search_term: "%#{search_term.downcase}%")
  end


  end