class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.string :text
      t.integer :upvotes
      t.integer :field_id

      t.timestamps
    end
  end
end
