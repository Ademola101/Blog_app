module Visible
  extend ActiveSupport::Concern
  VALID_STATUS = ['public', 'private', 'archived']
  included do
    validates :status, inclusion: {in: VALID_STATUS}
  end

  def archived?
    status == 'archive'
  end

end