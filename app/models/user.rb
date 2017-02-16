class User < ActiveRecord::Base

  # belongs_to :line_item
  has_secure_password
end
