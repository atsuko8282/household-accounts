class Income < ApplicationRecord
  validates :subject, presence: true
  validates :money, presence: true 
end
