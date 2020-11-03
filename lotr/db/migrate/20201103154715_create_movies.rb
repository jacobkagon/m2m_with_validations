class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :release_year
      t.string :description

      t.timestamps
    end
  end
end
