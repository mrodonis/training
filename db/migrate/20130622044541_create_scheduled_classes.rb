class CreateScheduledClasses < ActiveRecord::Migration
  def self.up
    create_table :scheduled_classes do |t|
      t.references :course
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :location
      t.string :instructor
      t.int :seats_taken
      t.int :seats_max

      t.timestamps
    end
  end

  def self.down
    drop_table :scheduled_classes
  end
end
