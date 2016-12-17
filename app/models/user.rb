class User < ActiveRecord::Base
  devise :registerable, :database_authenticatable, :rememberable, :validatable, :recoverable, :trackable
end
