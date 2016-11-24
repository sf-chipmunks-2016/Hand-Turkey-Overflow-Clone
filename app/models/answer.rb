class Answer < ActiveRecord::Base
  belongs_to :questions
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
  belongs_to :users
  # Remember to create a migration!
end
