class AddBirthdayAtToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :birthday_at, :date
  end
end
