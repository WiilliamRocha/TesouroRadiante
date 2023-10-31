class CreateFeedbackks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbackks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
