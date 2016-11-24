class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votees do |t|
      t.boolean :up_vote
      t.integer :user_id
      t.references :votable, polymorphic: true, index: true
      t.timestamps(null:false)
    end
  end
end
