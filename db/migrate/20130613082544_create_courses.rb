class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :title
      t.string :number
      t.decimal :duration
      t.decimal :price
      t.string :outline
      t.references :discount
      t.string :provider
      t.references :technology

      t.timestamps
    end

  end

  def self.down
    drop_table :courses
  end
end
