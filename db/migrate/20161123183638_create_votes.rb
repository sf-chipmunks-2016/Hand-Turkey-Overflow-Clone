class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :up_vote
      t.integer :user_id
      t.references :voteable, polymorphic: true, index: true
      t.timestamps(null:false)
    end
  end
end
