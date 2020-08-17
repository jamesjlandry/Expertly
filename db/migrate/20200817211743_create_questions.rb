class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :text
      t.integer :field_id
      t.integer :upvotes

      t.timestamps
    end
  end
end
