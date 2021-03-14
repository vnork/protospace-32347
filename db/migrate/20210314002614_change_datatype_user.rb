class ChangeDatatypeUser < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :profile, :text,  default: nil
    change_column :users, :occupation, :text, default: nil
    change_column :users, :position, :text, default: nil
  end
end
