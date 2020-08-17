class CreateCredentials < ActiveRecord::Migration[6.0]
  def change
    create_table :credentials do |t|
      t.integer :user_id
      t.integer :years_in_field
      t.string :degree
      t.integer :field_id

      t.timestamps
    end
  end
end
