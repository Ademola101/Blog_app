class Article < ApplicationRecord
  def to_param
    "#{id}-#{title.parameterize}"
  end
  include Visible
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  belongs_to :user
  has_many :comments, dependent: :destroy
end
