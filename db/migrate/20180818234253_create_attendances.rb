class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.string :name
      t.string :email
      t.text :book
      t.text :content
      t.integer :come

      t.timestamps null: false
    end
  end
end
