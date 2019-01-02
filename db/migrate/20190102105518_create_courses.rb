class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :camps do |t|
      t.references :company, foreign_key: true
      t.string :name
      t.string :type
      t.integer :length
      t.integer :age_range
      t.string :activities
      t.integer :capacity
      t.text :description
      t.string :postcode
      t.integer :price
      t.string :coordinator
      t.text :things_to_bring

      t.timestamps
    end
  end
end
