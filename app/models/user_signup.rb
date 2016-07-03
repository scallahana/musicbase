class UserSignup < ApplicationRecord
  validates_format_of :email, :with => /.+@.+\..+/i
end
