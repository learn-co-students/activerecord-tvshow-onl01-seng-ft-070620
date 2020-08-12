class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |m|
      m.string :name
      m.string :day
      m.string :network
      m.integer :rating
    end
  end
end
