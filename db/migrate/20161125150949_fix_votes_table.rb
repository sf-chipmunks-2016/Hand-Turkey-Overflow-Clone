class FixVotesTable < ActiveRecord::Migration
  def change
    rename_table :votees, :votes
    rename_column :votes, :votable_id, :voteable_id
    rename_column :votes, :votable_type, :voteable_type

    change_table :votes do |t|
      t.change :up_vote, :boolean, null: false
      t.change :user_id, :integer, null: false
      t.change :voteable_id, :integer, null: false
      t.change :voteable_type, :string, null: false
    end
  end
end

