class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :text
      t.text :summary
      t.string :friendly_name
      t.integer :ballot_id

      t.timestamps null: false
    end
  end
end
