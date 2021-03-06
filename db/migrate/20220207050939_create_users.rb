class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :second_last_name
      t.date :birthdate
      t.string :rfc
      t.integer :count, default: 0

      t.timestamps
    end
  end
end
