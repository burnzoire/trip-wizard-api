class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.date :arrive_at
      t.date :depart_at

      t.timestamps
    end
  end
end
