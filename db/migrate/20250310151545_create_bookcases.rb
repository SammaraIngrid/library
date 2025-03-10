class CreateBookcases < ActiveRecord::Migration[7.2]
  def change
    create_table :bookcases do |t|
      t.integer :limit

      t.timestamps
    end
  end
end
