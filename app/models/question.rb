class Question < ActiveRecord::Base
  belongs_to :users
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
  has_many :answers
  # Remember to create a migration!
end
