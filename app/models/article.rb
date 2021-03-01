class Article < ApplicationRecord
  validates :title, :content, presence: true
  validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
