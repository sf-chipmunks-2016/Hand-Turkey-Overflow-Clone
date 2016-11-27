require 'bcrypt'

class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
  # users.password_hash in the database is a :string
  include BCrypt

	validates_presence_of :name
  validates_presence_of :password
  validates_presence_of :email
  validates_uniqueness_of :email
  
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end