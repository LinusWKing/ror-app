class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.string :title
      t.date :release_date

      t.timestamps
    end
  end
end
