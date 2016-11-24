class Vote < ActiveRecord::Base
  belongs_to :voteable, polymorphic: true
  belongs_to :users
  # Remember to create a migration!
end
