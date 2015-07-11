class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.date :published_on

      t.timestamps null: false
    end
  end
end
