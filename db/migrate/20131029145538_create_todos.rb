class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :message
      t.integer :position

      t.timestamps
    end
  end
end
