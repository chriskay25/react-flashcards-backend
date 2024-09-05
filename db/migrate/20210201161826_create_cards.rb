class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.string :hint
      t.references :deck, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
