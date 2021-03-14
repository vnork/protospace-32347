class ChangeDatatypeOptionUser < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :profile, :text,  null: false
    change_column :users, :occupation, :text,  null: false
    change_column :users, :position, :text,  null: false
  end
end
