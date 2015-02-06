class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.integer :year
      t.string :genre
      t.string :image_url

      t.timestamps
    end
  end
end
