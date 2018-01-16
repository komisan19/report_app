class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.integer :state
      t.references :report, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :states, [:report_id, :user_id], unique: true
  end
end
