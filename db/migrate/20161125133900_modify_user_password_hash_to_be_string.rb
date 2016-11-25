class ModifyUserPasswordHashToBeString < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.change :password_hash, :string, :null => false
    end
  end

  def down
    change_table :users do |t|
      t.change :password_hash, :integer
    end
  end
end
