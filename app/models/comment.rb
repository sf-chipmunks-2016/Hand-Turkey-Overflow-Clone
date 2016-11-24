class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :users
  # Remember to create a migration!
end
