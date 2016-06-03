class User < ActiveRecord::Base

  has_many :links, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


#   As advised by CanCan, keeping a list of roles:
#   https://github.com/ryanb/cancan/wiki/Role-Based-Authorization
  ROLES = %w[admin moderator user banned].freeze

end