class CreateUserNameLstrings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_name_lstrings do |t|
      t.text :body
      t.integer :idea_id

      t.timestamps
    end
  end
end
