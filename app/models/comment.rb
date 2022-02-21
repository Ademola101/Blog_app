class Comment < ApplicationRecord
  belongs_to :article
  before_create :set_name
  private
  def set_name
    self.commenter = 'anonymous' if commenter.blank?
  end
end
