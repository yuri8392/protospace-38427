class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comment ,null: false
      t.integer :user_id ,null: false, foreign_key: true
      t.integer :prototype_id ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
