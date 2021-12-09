class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :code
      t.string :due_date
      t.references :agenda, null: false, foreign_key: true

      t.timestamps
    end
  end
end
