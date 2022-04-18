class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.integer :user_id
      t.string :name
      t.string :description
      t.boolean :compldated

      t.timestamps
    end
  end
end
