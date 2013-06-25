class CreateDiscounts < ActiveRecord::Migration
  def self.up
    create_table :discounts do |t|
      t.string :discount_level
      t.float :percentage
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :discounts
  end
end
