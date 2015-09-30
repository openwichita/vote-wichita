class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.date :date
      t.integer :admin_user_id

      t.timestamps null: false
    end
  end
end
