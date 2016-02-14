# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  
  has_secure_password
  before_save {|user| user.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates(:name, presence: true, length: {maximum: 50})
  validates(:email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: true)
  validates(:password, length:{minimum: 6})
  validates(:password_confirmation, presence: true)
end
