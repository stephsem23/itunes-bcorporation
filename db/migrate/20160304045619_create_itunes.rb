class CreateItunes < ActiveRecord::Migration
  def change
    create_table :itunes do |t|
      t.string :stuff
      t.timestamps null: false
    end
  end
end
